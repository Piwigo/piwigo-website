<?php
global $pwg_loaded_plugins;

$nb_accounts = 10;
$median_duration = 9.6;

if (isset($pwg_loaded_plugins['piwigo-website-pcomws']) and !conf_get_param('pcom_signup_simulate', true))
{
  if (accounts_db_connect(false))
  {
    $query = '
SELECT
    MAX(account_id)
  FROM accounts
;';
    list($max_account_id) = pwg_db_fetch_row(pwg_query($query));

    if (!empty($max_account_id))
    {
      $sample_size = 100;

      $query = '
SELECT
    TIMESTAMPDIFF(SECOND,registered_on,installed_on) AS duration
  FROM accounts
  WHERE account_id > '.($max_account_id - $sample_size).'
    AND installed_on IS NOT NULL
  ORDER BY duration ASC
;';
      $durations = query2array($query, null, 'duration');
      if (count($durations) == $sample_size)
      {
        $nb_accounts = $sample_size;
        $median_duration = $durations[floor($sample_size / 2)];
      }
    }

    accounts_db_disconnect();
  }
  else
  {
    $conf['registration_enabled'] = false;
  }
}

$porg_urls = porg_get_page_urls();

load_language('urls.lang', PORG_PATH);

$template->assign(
  array(
    'SIGNUP_HOST_BADGE' => 'fr_FR' == $user['language'] ? 'france-host.svg' : 'europe-host.svg',
    'STATS_NB_LAST_ACOUNTS' => $nb_accounts,
    'STATS_AVG_DURATION' => sprintf('%.1f', $median_duration),
    'registration_enabled' => conf_get_param('registration_enabled', true),
    'SIGNUP_CHECK_LABEL' => sprintf(l10n('signup_check_RPG'), $lang['porg_ext_urls']['terms_of_service'], $lang['porg_ext_urls']['privacy']),
    'STATS_GLOBAL_INSTALLS' => l10n('%s+', '100.000'),
    'STATS_GLOBAL_FILES'    => l10n('%s+ millions', '67'),
    'STATS_GLOBAL_UPTIME'   => l10n('%s uptime', '99.98%'),
    'STATS_GLOBAL_LANGS'    => l10n('+%d', 59),
    'STATS_GLOBAL_CLIENTS'  => l10n('%s+', '5.800'),
    'EMAIL_FIELD_NAME' => bin2hex(random_bytes(8)),
    'USERNAME_FIELD_NAME' => bin2hex(random_bytes(8)),
    'PASSWORD_FIELD_NAME' => bin2hex(random_bytes(8)),
  )
);

if (isset($_GET['username']))
{
  $template->assign('username', $_GET['username']);
}