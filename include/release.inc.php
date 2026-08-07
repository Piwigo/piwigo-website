<?php

include_once(PORG_PATH . 'include/functions_piwigodotorg.php');
include(PORG_PATH . '/data/release.data.php');
include(PORG_PATH . '/data/languages.data.php');

global $lang_info, $lang;

if (!isset($porg_languages) || !is_array($porg_languages)) {
  $porg_languages = array();
}

if (!isset($_GET['version'])) {
  return;
}

$version = $_GET['version'];
$meta_title = 'Piwigo ' . $version . ' | ' . l10n('Release note');

if (!isset($porg_releases[$version])) {
  http_response_code(404);
  $template->set_filenames(array('porg_page' => realpath(PORG_PATH . 'template/404.tpl')));
  return;
}

/* Load en_UK translation */
load_language('release-' . $version . '.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
/* Load user translation */
load_language('release-' . $version . '.lang', PORG_PATH);

/* Major or minor release */
$nb_digits = 1;
if (version_compare($version, '11') < 0) {
  $nb_digits = 2;
}
$branch = implode('.', array_slice(explode('.', $version), 0, $nb_digits));

$major = $branch . '.0';
if (version_compare($version, '11') >= 0) {
  $major .= '.0';
}

$upgrade_from = $branch . '.x';

/* Release md5sum */
$md5sum = $porg_releases[$version]['md5sum'];

/* Release summary */
$summary = implode(', ', $porg_releases[$version]['summary']);
if (isset($porg_releases[$version]['subtitle'])) {
  $summary = l10n($porg_releases[$version]['subtitle']);
}

/* Release date */
$released_on = format_date($porg_releases[$version]['released_on'], ['day', 'month', 'year']);

$download_versions = array();

// Load all language files for the major branch (e.g., 16.x)
foreach ($porg_releases as $release_version => $release_content) {
  if (preg_match('/^' . preg_quote($branch, '/') . '\./', $release_version)) {
    load_language('release-' . $release_version . '.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
    load_language('release-' . $release_version . '.lang', PORG_PATH);
  }
}

/* Download versions for the current major branch */
foreach ($porg_releases as $download_version => $download_version_content) {
  if ($download_version === $version) {
    continue;
  }

  if (!preg_match('/^' . preg_quote($branch, '/') . '\\./', $download_version)) {
    continue;
  }

  if (!isset($download_version_content['md5sum']) || !isset($download_version_content['released_on'])) {
    continue;
  }

  $download_version_features = array();

  if (!empty($download_version_content['bugs'])) {
    $download_version_features[] = l10n('Bugs fixed');
  }

  if (!empty($download_version_content['known_issues'])) {
    $download_version_features[] = l10n('Known issues');
  }

  if (!empty($download_version_content['languages']) && (!empty($download_version_content['languages']['new']) || !empty($download_version_content['languages']['updated']))) {
    $download_version_features[] = l10n('Languages');
  }

  if (!empty($download_version_content['features'])) {
    $download_version_features[] = l10n('Featured added');
  }

  $download_version_features[] = l10n('Upgrade');

  $dv_bugs = null;
  if (!empty($download_version_content['bugs']) && is_array($download_version_content['bugs'])) {
    foreach ($download_version_content['bugs'] as $bug_content) {
      if (!is_array($bug_content) || !isset($bug_content['id'])) {
        continue;
      }

      $id = $bug_content['id'];
      $bug_label_key = 'porg_issue_' . $id;

      $url = 'https://github.com/Piwigo/Piwigo/issues/' . $id;
      $is_security = false;
      if (preg_match('/^GHSA-/', $id)) {
        $is_security = true;
        $url = 'https://github.com/Piwigo/Piwigo/security/advisories/' . $id;
        $bug_content['section'] = null;
      }

      $dv_bugs[] = array(
        'id' => $id,
        'is_security' => $is_security,
        'url' => $url,
        'label' => isset($lang[$bug_label_key]) ? stripslashes($lang[$bug_label_key]) : $id,
        'section' => isset($bug_content['section']) ? '/ ' . l10n(trim($bug_content['section'])) : null,
      );
    }
  }

  $dv_known_issues = null;
  if (!empty($download_version_content['known_issues']) && is_array($download_version_content['known_issues'])) {
    foreach ($download_version_content['known_issues'] as $issue) {
      if (!is_array($issue) || !isset($issue['id'])) {
        continue;
      }

      $known_issue_label_key = 'porg_issue_' . $issue['id'];
      $dv_known_issues[] = array(
        'id' => $issue['id'],
        'url' => 'https://github.com/Piwigo/Piwigo/issues/' . $issue['id'],
        'label' => isset($lang[$known_issue_label_key]) ? stripslashes($lang[$known_issue_label_key]) : $issue['id'],
        'section' => isset($issue['section']) ? '/ ' . l10n(trim($issue['section'])) : null,
      );
    }
  }

  $dv_features = null;
  if (!empty($download_version_content['features']) && is_array($download_version_content['features'])) {
    foreach ($download_version_content['features'] as $issue) {
      if (!is_array($issue) || !isset($issue['id'])) {
        continue;
      }

      $feature_label_key = 'porg_issue_' . $issue['id'];
      $dv_features[] = array(
        'id' => $issue['id'],
        'url' => 'https://github.com/Piwigo/Piwigo/issues/' . $issue['id'],
        'label' => isset($lang[$feature_label_key]) ? stripslashes($lang[$feature_label_key]) : $issue['id'],
        'section' => isset($issue['section']) ? '/ ' . l10n(trim($issue['section'])) : null,
      );
    }
  }

  $dv_new_language = null;
  if (!empty($download_version_content['languages']) && !empty($download_version_content['languages']['new']) && is_array($download_version_content['languages']['new'])) {
    $tmp_new = array();
    foreach ($download_version_content['languages']['new'] as $language) {
      $native = isset($porg_languages[$language]) ? $porg_languages[$language] : $language;
      $tmp_new[] = $lang['language_' . $language] . ' (' . $native . ')';
    }
    if (!empty($tmp_new)) {
      $dv_new_language = implode(', ', $tmp_new);
    }
  }

  $dv_updated_language = null;
  if (!empty($download_version_content['languages']) && !empty($download_version_content['languages']['updated']) && is_array($download_version_content['languages']['updated'])) {
    $tmp_updated = array();
    foreach ($download_version_content['languages']['updated'] as $language) {
      $native = isset($porg_languages[$language]) ? $porg_languages[$language] : $language;
      $tmp_updated[] = array(
        'lang' => $lang['language_' . $language],
        'nativ_lang' => $native,
      );
    }
    if (!empty($tmp_updated)) {
      $dv_updated_language = $tmp_updated;
    }
  }

  $download_versions[] = array(
    'version' => $download_version,
    'released_on' => format_date($download_version_content['released_on'], ['day', 'month', 'year']),
    'md5sum' => $download_version_content['md5sum'],
    'download_url' => '//piwigo.org/download/dlcounter.php?code=' . $download_version,
    'features' => $download_version_features,
    'bugs' => isset($dv_bugs) ? $dv_bugs : null,
    'known_issues' => isset($dv_known_issues) ? $dv_known_issues : null,
    'features_items' => isset($dv_features) ? $dv_features : null,
    'news_languages' => isset($dv_new_language) ? $dv_new_language : null,
    'updated_languages' => isset($dv_updated_language) ? $dv_updated_language : null,
  );
}

/* Get bugs issue */
$bugs = array();
$bugs_data = (!empty($porg_releases[$version]['bugs']) && is_array($porg_releases[$version]['bugs'])) ? $porg_releases[$version]['bugs'] : array();
foreach ($bugs_data as $bug_content) {
  if (!is_array($bug_content) || !isset($bug_content['id'])) {
    continue;
  }

  $id = $bug_content['id'];
  $bug_label_key = 'porg_issue_' . $id;

  $url = 'https://github.com/Piwigo/Piwigo/issues/' . $id;
  $is_security = false;
  if (preg_match('/^GHSA-/', $id)) {
    $is_security = true;
    $url = 'https://github.com/Piwigo/Piwigo/security/advisories/' . $id;
    $bug_content['section'] = null;
  }

  $bugs[] = array(
    'id' => $id,
    'is_security' => $is_security,
    'url' => $url,
    'label' => isset($lang[$bug_label_key]) ? stripslashes($lang[$bug_label_key]) : $id,
    'section' => isset($bug_content['section']) ? '/ ' . l10n(trim($bug_content['section'])) : null,
  );
}

/* Get feature issue */
$features = array();
$features_data = (!empty($porg_releases[$version]['features']) && is_array($porg_releases[$version]['features'])) ? $porg_releases[$version]['features'] : array();
foreach ($features_data as $issue) {
  if (!is_array($issue) || !isset($issue['id'])) {
    continue;
  }

  $feature_label_key = 'porg_issue_' . $issue['id'];
  $features[] = array(
    'id' => $issue['id'],
    'url' => 'https://github.com/Piwigo/Piwigo/issues/' . $issue['id'],
    'label' => isset($lang[$feature_label_key]) ? stripslashes($lang[$feature_label_key]) : $issue['id'],
    'section' => isset($issue['section']) ? '/ ' . l10n(trim($issue['section'])) : null,
  );
}

/* Get know_issues */
$known_issues = array();
$porg_known = (!empty($porg_releases[$version]['known_issues']) && is_array($porg_releases[$version]['known_issues'])) ? $porg_releases[$version]['known_issues'] : array();
foreach ($porg_known as $issue) {
  if (!is_array($issue) || !isset($issue['id'])) {
    continue;
  }

  $known_issue_label_key = 'porg_issue_' . $issue['id'];
  $known_issues[] = array(
    'id' => $issue['id'],
    'url' => 'https://github.com/Piwigo/Piwigo/issues/' . $issue['id'],
    'label' => isset($lang[$known_issue_label_key]) ? stripslashes($lang[$known_issue_label_key]) : $issue['id'],
    'section' => isset($issue['section']) ? '/ ' . l10n(trim($issue['section'])) : null,
  );
}

/* New languages */
$new_language = null;
$new_languages_data = (!empty($porg_releases[$version]['languages']) && !empty($porg_releases[$version]['languages']['new']) && is_array($porg_releases[$version]['languages']['new'])) ? $porg_releases[$version]['languages']['new'] : array();
$tmp_new_languages = array();
foreach ($new_languages_data as $language) {
  $tmp_new_languages[] = $lang['language_' . $language] . ' (' . $porg_languages[$language] . ')';
}

if (!empty($tmp_new_languages)) {
  $new_language = implode(', ', $tmp_new_languages);
}

/* Updated languages */
$updated_language = null;
$updated_languages_data = (!empty($porg_releases[$version]['languages']) && !empty($porg_releases[$version]['languages']['updated']) && is_array($porg_releases[$version]['languages']['updated'])) ? $porg_releases[$version]['languages']['updated'] : array();
$tmp_updated_languages = array();
foreach ($updated_languages_data as $language) {
  $tmp_updated_languages[] = array(
    'lang' => $lang['language_' . $language],
    'nativ_lang' => $porg_languages[$language],
  );
}
if (!empty($tmp_updated_languages)) {
  $updated_language = $tmp_updated_languages;
}

$template->assign(
  array(
    'md5sum' => $md5sum,
    'released_on' => $released_on,
    'summary' => $summary,
    'bugs' => !empty($bugs) ? $bugs : null,
    'features' => !empty($features) ? $features : null,
    'known_issues' => !empty($known_issues) ? $known_issues : null,
    'news_languages' => $new_language,
    'updated_languages' => $updated_language,
    'download_versions' => $download_versions,
    'version' => $version,
    'branch' => $branch,
    'version_major' => $major,
    'upgrade_from' => $upgrade_from,
    'upgrade_code' => str_replace('.', '', $upgrade_from . 'to' . $version),
    'releases_url' => porg_get_page_url('release'),
  )
);
