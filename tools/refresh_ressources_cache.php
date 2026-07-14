<?php
date_default_timezone_set('Europe/Paris');

define('PHPWG_ROOT_PATH', realpath(dirname(__FILE__).'/../../..').'/');

include(PHPWG_ROOT_PATH . 'include/config_default.inc.php');
@include(PHPWG_ROOT_PATH. 'local/config/config.inc.php');

defined('PWG_LOCAL_DIR') or define('PWG_LOCAL_DIR', 'local/');

@include(PHPWG_ROOT_PATH.PWG_LOCAL_DIR .'config/database.inc.php');

include(PHPWG_ROOT_PATH . 'include/constants.php');
include(PHPWG_ROOT_PATH . 'include/functions.inc.php');

$allow_execution = false;
if ('cli' === PHP_SAPI)
{
  $allow_execution = true;
}

if (isset($_GET['refresh_cache']) and $_GET['refresh_cache'] == conf_get_param('porg_refresh_cache_key', 'please'))
{
  $allow_execution = true;
}

if (!$allow_execution)
{
  die('this script must be run from cli or with the appropriate refresh key');
}

include(PHPWG_ROOT_PATH . 'include/Logger.class.php');

$logger = new Logger(array(
  'directory' => PHPWG_ROOT_PATH . $conf['data_location'] . $conf['log_dir'],
  'severity' => $conf['log_level'],
  // we use an hashed filename to prevent direct file access, and we salt with
  // the db_password instead of secret_key because the log must be usable in i.php
  // (secret_key is in the database)
  'filename' => 'log_' . date('Y-m-d') . '_' . sha1(date('Y-m-d') . $conf['db_password']) . '.txt',
  ));

$page = array('execution_uuid' => generate_key(10));

define('PORG_ID', basename(dirname(dirname(__FILE__))));
define('PORG_PATH', PHPWG_PLUGINS_PATH . PORG_ID . '/');

include(PORG_PATH . 'include/functions_piwigodotorg.php');

$function_start_time = get_moment();
get_tags_of(999);
if (isset($_GET['refresh_cache']))
{
  echo 'get_tags_of refreshed in '.get_elapsed_time($function_start_time, get_moment()).'<br>';
}

foreach (get_ressources(null, true) as $ressources_type)
{
  $function_start_time = get_moment();
  get_ressources($ressources_type);
  if (isset($_GET['refresh_cache']))
  {
    echo 'get_ressources('.$ressources_type.') refreshed in '.get_elapsed_time($function_start_time, get_moment()).'<br>';
  }
}

$function_start_time = get_moment();
porg_get_coding_activity(); // every 5 minutes
if (isset($_GET['refresh_cache']))
{
  echo 'porg_get_coding_activity refreshed in '.get_elapsed_time($function_start_time, get_moment()).'<br>';
}

foreach (['' => 'en_US', 'de.' => 'de_DE', 'fr.' => 'fr_FR'] as $porg_domain_prefix => $user_language)
{
  $user['language'] = $user_language;
  $lang_info = ['code' => substr($user_language, 0, 2)];
  $page['porg_domain_prefix'] = $porg_domain_prefix;

  $function_start_time = get_moment();
  porg_get_news(0, 1); // every 15 minutes
  if (isset($_GET['refresh_cache']))
  {
    echo 'porg_get_news-'.$lang_info['code'].' refreshed in '.get_elapsed_time($function_start_time, get_moment()).'<br>';
  }
}
