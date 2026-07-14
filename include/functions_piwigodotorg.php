<?php
/**
 * list of <page ids> => <language key for page title>. They are the default "porg=xxx" in URLs. We use "-" and not "_".
 */
function porg_get_pages()
{
  return array(
    'home' => 'Piwigo - Manage your photo collection',
    'features' => 'Features',
    'what-is-piwigo' => 'What is Piwigo?',
    'changelogs' => 'Changelogs',
    'contact' => 'Contact',
    'about-us' => 'About us',
    'extensions' => null,
    'get-involved' => 'Get Involved',
    'get-piwigo' => 'Get Piwigo',
    'get-started' => 'Get Started',
    'coding-activity' => 'Coding activity',
    'news' => 'News',
    'newsletters' => 'Newsletters',
    'press' => 'Press',
    'release' => null, // will be filled by include/release.inc.php
    'showcases' => 'Showcases',
    'users' => 'Who uses Piwigo ?',
    'testimonials' => 'Testimonials',
    'mobile-apps-privacy-policy' => 'Privacy Policy for Mobile Apps',
    'demo' => 'Demo',
    'guides' => 'guides',
    'requirements' => 'Requirements',
    'netinstall' => 'Netinstall',
    'manual_installation' => 'Manual installation',
    'docker_installation' => 'Docker Image',
    'automatic_update' => 'Automatic Update',
    'manual_update' => 'Manual Update',
    'docker_update' => 'Docker Image Update',
    'mobile-applications' => 'Mobile applications',
    'get-help'=>'Get Help',
    'components-display' => 'Components display',
    'pricing' => 'Pricing',
    'signup' => 'Signup',
    'use_case_travel_tourism' => 'Use cases - Travel & Tourism',
    'use_case_public_sector' => 'Use cases - Public Sector',
    'use_case_companies' => 'Use cases - Companies',
    'use_case_education_research' => 'Use cases - Education & Research',
    'use_case_nonprofits' => 'Use cases - Nonprofits',
    'use_case_photographers_individuals' => 'Use cases - Photographers & Individuals',
    
    'product_update' => 'Product Updates',
    'terms_of_service' => 'Terms of service',
    'privacy' => 'Privacy',
    'dpa' => 'Data Processing Agreement',
    'signin' => 'Signin',
    'product' => 'Product',
    'plugins' => 'Plugins',
    'cases' => 'Cases studies',
    'cotentin' => 'Case Study: Cotentin',
    'ect' => 'Case Study: ECT',
    'icam' => 'Case Study: Icam',
    'indre' => 'Case Study: Indre',
    'wessex' => 'Case Study: Wessex',
    );
}

/**
 * transforms a page id into a localized label. In French, "features" becomes "fonctionnalites" in the URL
 */
function porg_get_page_label($page)
{
  global $lang;

  if (isset($lang['porg_urls'][$page]))
  {
    return $lang['porg_urls'][$page];
  }

  return $page;
}

/**
 * returns the relative URL for a page id. The pattern can be changed with configuration param $conf['porg_url_rewrite']
 */
function porg_get_page_url($page)
{
  global $conf;

  if ('home' == $page)
  {
    return get_gallery_home_url();
  }

  $label = porg_get_page_label($page);

  if (isset($conf['porg_url_rewrite']) and $conf['porg_url_rewrite'])
  {
    $url_prefix = '';

    // when we are on a page such as piwigo.org/guides/install/requirements, the relative URL must be prefixed with ../../
    if (isset($_GET['porg']))
    {
      if (preg_match('/\/+/', $_GET['porg']))
      {
        $url_prefix = str_repeat('../', substr_count(preg_replace('/\/+/', '/', $_GET['porg']), '/'));
      }
    }

    return $url_prefix.$label;
  }

  return 'index.php?porg='.$label;
}

/**
 * converts a page id into the file name. We use "_" instead of "-" in files (include/xxx.inc.php or template/xxx.tpl)
 */
function porg_page_to_file($porg_page)
{
  return str_replace('-', '_', $porg_page);
}

/**
 * list of all urls, used in header/footer (and in the middle of some pages).
 *
 * return associative array 'file id' => 'relative url to page', like 'what_is_piwigo' => 'piwigo-cest-quoi' (FR)
 */
function porg_get_page_urls()
{
  $porg_pages = array_keys(porg_get_pages());

  $porg_page_urls = array();
  foreach ($porg_pages as $porg_page)
  {
    $porg_page_urls[porg_page_to_file($porg_page)] = porg_get_page_url($porg_page);
  }

  return $porg_page_urls;
}

/**
 * list of all page labels
 *
 * erturn associative array 'page id' => 'page label'
 */
function porg_get_page_labels()
{
  $porg_pages = array_keys(porg_get_pages());

  $porg_page_labels = array();
  foreach ($porg_pages as $porg_page)
  {
    $porg_page_labels[$porg_page] = porg_get_page_label($porg_page);
  }

  return $porg_page_labels;
}

/**
 * returns the page id, based on a label. Returns false if nothing found.
 */
function porg_label_to_page($label)
{
  // specific for release-x.y.z : split to label+version
  $release_label = porg_get_page_label('release');
  if (preg_match('/^'.$release_label.'\-(\d+\.\d+\.\d+)$/', $label, $matches))
  {
    $label = $release_label;
    $_GET['version'] = $matches[1];
  }

  $newsletters_label = porg_get_page_label('newsletters');
  if (preg_match('/^'.$newsletters_label.'-(\d{8})$/', $label, $matches))
  {
    $label = $newsletters_label;
    $_GET['newsletter_id'] = $matches[1];
  }

  $porg_page_labels = porg_get_page_labels();
  $flip = array_flip($porg_page_labels);

  if (isset($flip[$label]))
  {
    return $flip[$label];
  }

  $porg_pages = porg_get_pages();
  if (isset($porg_pages[$label]))
  {
    return $label;
  }

  return false;
}

function porg_get_page_title($page)
{
  global $lang;

  if (isset($lang['page_meta_title']))
  {
    return $lang['page_meta_title'];
  }

  $porg_pages = porg_get_pages();

  $title = l10n($porg_pages[$page]);
  if ('home' != $page)
  {
    $title.= ' | Piwigo';
  }

  return $title;
}

/**
 * in case a release has a special release notes (like 2.9.0), we do not use the generic release.tpl template
 */
function porg_get_release_tpl($version)
{
  global $user;

  $candidate = PORG_PATH . 'language/'.$user['language'].'/template/release-' . $version . '.tpl';
  if (file_exists($candidate))
  {
    return $candidate;
  }

  $candidate = PORG_PATH . 'template/release-' . $version . '.tpl';
  if (file_exists($candidate))
  {
    return $candidate;
  }

  return PORG_PATH . 'template/release.tpl';
}

/**
 * in case you add a tpl in a language folder
 */
function get_custom_pcom_tpl($page_id)
{
  global $user;
  
  $filename = str_replace('-', '_', $page_id) . '.tpl';
  $lang_tpl = PORG_PATH . 'language/' . $user['language'] . '/template/' . $filename;
  
  if (file_exists($lang_tpl))
  {
    return $lang_tpl;
  }
  return PORG_PATH . 'template/' . $filename;
}

function porg_get_latest_version()
{
  global $conf;

  $cache_path = PHPWG_ROOT_PATH . $conf['data_location'].'/'.PORG_ID.'/porg_latest_version.cache.php';

  if (!is_file($cache_path) or filemtime($cache_path) < filemtime(PORG_PATH.'/data/release.data.php'))
  {
    $latest_version = porg_get_latest_version_nocache();
    if (mkgetdir(dirname($cache_path)))
    {
      file_put_contents($cache_path, serialize($latest_version));
    }
    
  }

  return unserialize(file_get_contents($cache_path));
}

function porg_get_latest_version_nocache()
{
  // echo '['.__FUNCTION__.'] called<br>';
  include(PORG_PATH . '/data/release.data.php');

  $latest_version = null;

  foreach ($porg_releases as $version => $version_content)
  {
    if (isset($version_content['show_in_changelogs']) and !$version_content['show_in_changelogs'])
    {
      continue;
    }
    $latest_version = $version_content;
    $latest_version['version'] = $version;
    break;
  }

  // echo '<pre>'; print_r($latest_version); echo '</pre>';
  return $latest_version;
}

function porg_get_news($start, $count)
{
  global $lang_info, $conf, $page;

  $topics = null;

  if (!in_array($page['porg_domain_prefix'], array('', 'de.', 'fr.')))
  {
    return $topics;
  }

  $cache_path = PHPWG_ROOT_PATH . $conf['data_location'].'/'.PORG_ID.'/porg_news-'.$lang_info['code'].'.cache.php';

  if ('refresh_ressources_cache' == script_basename())
  {
    $function_start_time = get_moment();

    $forum_url = 'https://'.$page['porg_domain_prefix'].'piwigo.org/forum';
    $url = $forum_url.'/news.php?format=json';

    if (conf_get_param('porg_fetch_news_check_ssl', true))
    {
      $content = file_get_contents($url);
    }
    else
    {
      $arrContextOptions = array(
        "ssl" => array(
          "verify_peer" => false,
          "verify_peer_name" => false,
        ),
      );

      $content = file_get_contents($url, false, stream_context_create($arrContextOptions));
    }

    if ($content !== false)
    {
      $topics = json_decode($content, true);

      if (is_null($topics))
      {
        $topics = array();
      }

      $doc = new DOMDocument();
      $i = 0;

      foreach ($topics as $idx => $topic)
      {
        // looking for the image in the message
        @$doc->loadHTML($topic['message']);

        $imgs = $doc->getElementsByTagName('img');

        foreach ($imgs as $img) {
          $topics[$idx]['img_src'] = str_replace('http://', 'https://', $img->getAttribute('src'));
          break;
        }

        $message = $topic['message'];
        $message = str_replace('<br />', ' ', $message);
        $message = strip_tags($message);

        $topics[$idx]['is_cut'] = false;
        $max_length = 200;
        if (strlen($message) > $max_length)
        {
          $delimiter = '~#~';
          $lines = explode($delimiter, wordwrap(trim($message), $max_length, $delimiter));
          $message = array_shift($lines);

          $topics[$idx]['is_cut'] = true;
        }

        $topics[$idx]['message'] = $message;
        $topics[$idx]['id'] = $topic['topic_id'];
        $topics[$idx]['posted'] = format_date($topic['posted_on'], ['day', 'month', 'year']);
        $topics[$idx]['url'] = $forum_url.'/viewtopic.php?id='.$topic['topic_id'];

        $topics[$idx]['state'] = 'right';
        if ($i++ % 2 == 0)
        {
          $topics[$idx]['state'] = 'left';
        }

      }
      if (mkgetdir(dirname($cache_path)))
      {
        file_put_contents($cache_path, serialize($topics));
      }
    }

    global $logger;
    $logger->info(__FUNCTION__.' executed in '.get_elapsed_time($function_start_time, get_moment()));

    return;
  }

  if (is_null($topics) and file_exists($cache_path))
  {
    $topics = unserialize(file_get_contents($cache_path));
  }

  if (is_null($topics))
  {
    $topics = array();
  }

  $topics_slice = array_slice($topics, $start, $count);

  end($topics_slice);
  $last_idx = key($topics_slice);
  $topics_slice[$last_idx]['last'] = true;

  return array(
    'total_count' => count($topics),
    'topics' => $topics_slice,
  );
}

function porg_get_latest_news()
{
  global $page, $lang_info;

  $latest_articles = porg_get_news(0,1);

  if ($latest_articles['total_count'] > 0 and $latest_articles['topics'][0]['posted_on'] > time() - conf_get_param('porg_news_maximum_freshness', 180)*24*60*60 )
  {
    $latest_article = $latest_articles['topics'][0];
  }
  else
  {
    $current_lang = $lang_info['code'];
    $current_domain_prefix = $page['porg_domain_prefix'];

    $lang_info['code'] = 'en';
    $page['porg_domain_prefix'] = '';

    $latest_articles = porg_get_news(0,1);
    $latest_article = $latest_articles['topics'][0];
    $latest_article['lang'] = $lang_info['code'];

    $lang_info['code'] = $current_lang;
    $page['porg_domain_prefix'] = $current_domain_prefix;
  }

  return $latest_article;
}

function porg_get_newsletters($lang_code)
{
  include(PORG_PATH . "data/newsletters.data.php");

  if (isset($newsletters[$lang_code]))
    {
    $newsletters = $newsletters[$lang_code];

    foreach ($newsletters as $idx => $newsletter)
    {
      $newsletters[$idx]['id'] = $lang_code.'-'.$idx;
      $newsletters[$idx]['image'] = preg_replace('{http://([a-z]{2,3}\.)?piwigo.org/}', '//${1}piwigo.org/', $newsletters[$idx]['image']);
      $newsletters[$idx]['date_label'] = format_date($idx, ['day', 'month', 'year']);
      $newsletters[$idx]['url'] = porg_get_page_url('newsletters').'-'.str_replace('-', '', $idx);
    }

    return $newsletters;
  }

  return null;
}

function porg_display_newsletter($newsletter_id)
{
  global $user;

  $lang_code = explode('_', $user['language'])[0];

  $newsletter_file = PORG_PATH.'data/newsletters/'.$newsletter_id.'_'.$lang_code.'.html';
  if (file_exists($newsletter_file))
  {
    $content_lines = file($newsletter_file);

    $output_started = false;
    foreach ($content_lines as $line)
    {
      if ($output_started or preg_match('/^<!DOCTYPE/', $line))
      {
        echo str_replace('%tracker%', 'abcd', $line);
        $output_started = true;
      }
    }
  }

  exit();
}

function porg_get_nb_years()
{
  $d1 = new DateTime('2002-04-15');
  $d2 = new DateTime();
  $diff = $d2->diff($d1);
  return $diff->y;
}

function porg_set_pcom_urls()
{
  global $page, $template;

  $pcom_prefix = isset($page['porg_pcom_prefix']) ? $page['porg_pcom_prefix'] : '';

  $pcom_url = array(
    'pricing' => 'https://piwigo.com/pricing',
    'signup' => 'https://piwigo.com/signup',
    'why' => 'https://piwigo.com/why',
    'blog' => 'https://piwigo.com/blog/',
    'clients' => 'https://piwigo.com/clients',
    'pro_support' => 'https://piwigo.com/pricing?plan=self_hosted',
  );

  if ('fr.' == $pcom_prefix)
  {
    $pcom_url = array(
      'pricing' => 'https://'.$pcom_prefix.'piwigo.com/tarifs',
      'signup' => 'https://'.$pcom_prefix.'piwigo.com/inscription',
      'why' => 'https://'.$pcom_prefix.'piwigo.com/pourquoi-choisir-piwigo',
      'blog' => 'https://'.$pcom_prefix.'piwigo.com/blog/',
      'clients' => 'https://'.$pcom_prefix.'piwigo.com/clients',
      'pro_support' => 'https://'.$pcom_prefix.'piwigo.com/tarifs?plan=self_hosted',
    );
  }
  elseif ('de.' == $pcom_prefix)
  {
    $pcom_url['pricing'] = 'https://'.$pcom_prefix.'piwigo.com/preise';
    $pcom_url['signup'] = 'https://'.$pcom_prefix.'piwigo.com/anmelden';
    $pcom_url['why'] = 'https://'.$pcom_prefix.'piwigo.com/warum-piwigo-wählen';
    $pcom_url['clients'] = 'https://'.$pcom_prefix.'piwigo.com/kunden';
    $pcom_url['pro_support'] = 'https://'.$pcom_prefix.'piwigo.com/preise?plan=self_hosted';
  }
  elseif ('es.' == $pcom_prefix)
  {
    $pcom_url['pricing'] = 'https://'.$pcom_prefix.'piwigo.com/precios';
    $pcom_url['signup'] = 'https://'.$pcom_prefix.'piwigo.com/registrarse';
    $pcom_url['why'] = 'https://'.$pcom_prefix.'piwigo.com/por-que';
    $pcom_url['clients'] = 'https://'.$pcom_prefix.'piwigo.com/clientes';
    $pcom_url['pro_support'] = 'https://'.$pcom_prefix.'piwigo.com/precios?plan=self_hosted';
  }
  elseif ('it.' == $pcom_prefix)
  {
    $pcom_url['pricing'] = 'https://'.$pcom_prefix.'piwigo.com/plan';
    $pcom_url['signup'] = 'https://'.$pcom_prefix.'piwigo.com/signup';
    $pcom_url['why'] = 'https://'.$pcom_prefix.'piwigo.com/position';
    $pcom_url['clients'] = 'https://'.$pcom_prefix.'piwigo.com/examples';
    $pcom_url['pro_support'] = 'https://'.$pcom_prefix.'piwigo.com/plan?plan=self_hosted';
  }
  elseif ('nl.' == $pcom_prefix)
  {
    $pcom_url['pricing'] = 'https://'.$pcom_prefix.'piwigo.com/prijzen';
    $pcom_url['signup'] = 'https://'.$pcom_prefix.'piwigo.com/aanmelden';
    $pcom_url['why'] = 'https://'.$pcom_prefix.'piwigo.com/waarom';
    $pcom_url['clients'] = 'https://'.$pcom_prefix.'piwigo.com/klanten';
    $pcom_url['pro_support'] = 'https://'.$pcom_prefix.'piwigo.com/prijzen?plan=self_hosted';
  }

  $template->assign('PCOM_URL', $pcom_url);
}

function porg_get_coding_activity()
{
  global $conf;
  $cache_path = PHPWG_ROOT_PATH . $conf['data_location'].'/'.PORG_ID.'/porg_coding_activity.cache.php';  
  $coding_activity = null;

  if ('refresh_ressources_cache' == script_basename())
  {
    $function_start_time = get_moment();

    $url = "https://piwigo.org/activity/api/commits.get.php";

    if (conf_get_param('porg_fetch_news_check_ssl', true))
    {
      $content = file_get_contents($url);
    }
    else
    {
      $arrContextOptions = array(
        "ssl" => array(
          "verify_peer" => false,
          "verify_peer_name" => false,
        ),
      );

      $content = file_get_contents($url, false, stream_context_create($arrContextOptions));
    }

    if ($content !== false)
    {
      $coding_activity = json_decode($content, true);
      if (mkgetdir(dirname($cache_path)))
      {
        file_put_contents($cache_path, serialize($coding_activity));
      }
    }

    global $logger;
    $logger->info(__FUNCTION__.' executed in '.get_elapsed_time($function_start_time, get_moment()));

    return;
  }
    
  if (is_null($coding_activity))
  {
    $coding_activity = unserialize(file_get_contents($cache_path));
  }

  return $coding_activity;
}

function ressources_api_request($method, $data=array(), $get_data=array())
{
  global $logger;

  $logger->info(__FUNCTION__.' called on method='.$method);

  $url = 'https://ressources.piwigo.com/ws.php?method='.$method.'&format=json';
  if (!empty($get_data))
  {
    $url .= '&'.http_build_query($get_data);
  }
  $logger->info(__FUNCTION__.' url='.$url);
  $headers = [];

  $ch = curl_init();

  curl_setopt($ch, CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($ch, CURLOPT_POST, true);
  curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
  curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

  $result = curl_exec($ch);

  curl_close($ch);

  return $result;
}

function get_tags_of($img_id)
{
  global $conf;

  $cache_path = PHPWG_ROOT_PATH . $conf['data_location'] . PORG_ID . '/porg_tags_of.cache.php';

  if ('refresh_ressources_cache' == script_basename())
  {
    $function_start_time = get_moment();

    $tag_name_of = [];
    $result = json_decode(ressources_api_request('pwg.tags.getList'), true);

    foreach ($result['result']['tags'] as $tag)
    {
      $tag_name_of[ $tag['id'] ] = $tag['name'];
    }

    $tags_of_image = array();

    // $conf['ws_max_images_per_page'] was increased to 10000 on ressources.piwigo.com
    $result = ressources_api_request('pwg.tags.getImages', ['tag_id'=>array_keys($tag_name_of), 'per_page'=>10000, 'tag_mode_and'=>'false']);
    $result = json_decode($result, true);

    foreach ($result['result']['images'] as $image)
    {
      $tags_of_image[ $image['id'] ] = [];

      $img_tags = $image['tags'];
      foreach ($img_tags as $tag)
      {
        $tag = explode(':', $tag_name_of[ $tag['id'] ], 2);
        switch ($tag[0])
        {
          case 'country':
            $tags_of_image[ $image['id'] ]['country'] = $tag[1];
            break;
          case 'hosting':
            $tags_of_image[ $image['id'] ]['hosting'] = $tag[1];
            break;
          case 'organization':
            $tags_of_image[ $image['id'] ]['organization'] = $tag[1];
            break;
          case 'use-case':
            $tags_of_image[ $image['id'] ]['useCase'] = $tag[1];
            break;
          case 'url':
            $tags_of_image[ $image['id'] ]['url'] = $tag[1];
            break;
        }
      }
    }

    if (mkgetdir(dirname($cache_path)))
    {
      file_put_contents($cache_path, serialize($tags_of_image));
    }

    global $logger;
    $logger->info(__FUNCTION__.' executed in '.get_elapsed_time($function_start_time, get_moment()));

    return;
  }

  $tags_of_image = unserialize(file_get_contents($cache_path));

  return $tags_of_image[$img_id] ?? [];
}

function get_ressources($ressources_type, $get_types=false)
{
  global $conf;

  $ressources_types = array(
    'home_logos' => array(
      'cache_filename' => 'porg_home_logos.cache.php',
      'album_id' => conf_get_param('home_logos_cat_id', 3)
    ),
    'home_examples' => array(
      'cache_filename' => 'porg_home_examples.cache.php',
      'album_id' => conf_get_param('home_examples_cat_id', 39)
    ),
    'logos' => array(
      'cache_filename' => 'porg_users_logos.cache.php',
      'album_id' => conf_get_param('user_logos_cat_id', 18)
    ),
    'examples' => array(
      'cache_filename' => 'porg_users_examples.cache.php',
      'album_id' => conf_get_param('user_examples_cat_id', 7)
    ),
    'testimonials' => array(
      'cache_filename' => 'porg_users_testimonials.cache.php',
      'album_id' => conf_get_param('user_testimonials_cat_id', 33)
    ),
    'pcomlogos' => array(
      'cache_filename' => 'pcom_users_logos.cache.php',
      'album_id' => conf_get_param('pcom_logos_cat_id', 10)
    ),
  );

  if ($get_types)
  {
    return array_keys($ressources_types);
  }

  $cache_path = PHPWG_ROOT_PATH . $conf['data_location'] . PORG_ID . '/' . $ressources_types[$ressources_type]['cache_filename'];
  $album_id = $ressources_types[$ressources_type]['album_id'];

  if ('refresh_ressources_cache' == script_basename())
  {
    $function_start_time = get_moment();

    $result = ressources_api_request('pwg.categories.getImages', [], ['cat_id'=>$album_id, 'per_page'=>1000]);

    if ($result !== false)
    {
      $ressources = json_decode($result, true);

      if (mkgetdir(dirname($cache_path)))
      {
        file_put_contents($cache_path, serialize($ressources));
      }
    }

    global $logger;
    $logger->info(__FUNCTION__.' (type='.$ressources_type.') executed in '.get_elapsed_time($function_start_time, get_moment()));

    return;
  }

  $result = unserialize(file_get_contents($cache_path));

  $items = $result['result']['images'];

  return $items;
}
?>
