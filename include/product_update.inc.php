<?php

include(PORG_PATH . '/data/release.data.php');

/** @var array<string, array<string, mixed>> $porg_releases */

global $template, $lang_info;

$product_updates = [];
$color_index = 0;
$colors = array('orange', 'blue', 'purple');

$coding_activity_commits = porg_get_coding_activity();
$coding_activity_weeks = array();

// load commit classification lists (plugins / tools / android repos)
$commit_classification = array();
$classification_file = __DIR__ . '/commit_classification.php';
if (file_exists($classification_file)) {
  $cfg = include $classification_file;
  if (is_array($cfg)) {
    $commit_classification = $cfg;
  }
}

$timezone = new DateTimeZone(date_default_timezone_get());
$current_week_start = (new DateTimeImmutable('now', $timezone))->modify('monday this week')->setTime(0, 0, 0);
$most_recent_complete_week_start = $current_week_start->modify('-7 days');
$weeks_count = 4;
$coding_activity_week_indexes = array();

for ($week_offset = 0; $week_offset < $weeks_count; $week_offset++) {
  $week_start = $most_recent_complete_week_start->modify('-' . $week_offset . ' weeks');
  $week_end = $week_start->modify('+6 days');

  $week_key = $week_start->format('o-W');

  $coding_activity_weeks[] = array(
    'weeknumber' => (int) $week_start->format('W'),
    'start_date' => $week_start->format('F jS'),
    'end_date' => ($week_start->format('Y-m') === $week_end->format('Y-m')) ? $week_end->format('jS, Y') : $week_end->format('F jS, Y'),
    'commits' => array(
      'translation' => array(),
      'core' => array(),
      'theme' => array(),
      'plugin' => array(),
      'android' => array(),
      'ios' => array(),
      'tool' => array(),
    ),
  );

  $coding_activity_week_indexes[$week_key] = $week_offset;
}

if (is_array($coding_activity_commits)) {
  foreach ($coding_activity_commits as $commit) {
    if (!isset($commit['occured_on']) || !isset($commit['local_id']) || !isset($commit['url'])) {
      continue;
    }

    $commit_time = new DateTimeImmutable($commit['occured_on'], $timezone);
    $commit_week_key = $commit_time->modify('monday this week')->setTime(0, 0, 0)->format('o-W');

    if (!isset($coding_activity_week_indexes[$commit_week_key])) {
      continue;
    }

    $week_index = $coding_activity_week_indexes[$commit_week_key];

    $commit_id = $commit['local_id'];
    if (strlen($commit_id) == 40) {
      $commit_id = substr($commit_id, 0, 8);
    }

    $commit_url = $commit['url'];
    if (preg_match('{http://piwigo.org/svn}', $commit['url'])) {
      $commit_url = 'http://piwigo.org/dev/changeset/' . $commit['local_id'];
    } elseif (preg_match('{https://github.com}', $commit['url'])) {
      $commit_url = $commit['url'] . '/commit/' . $commit['local_id'];
    }

    // sort commit here
    $commit_type = 'core';

    // iOS app (Piwigo-Mobile)
    if (isset($commit['url']) && stripos($commit['url'], 'github.com/Piwigo/Piwigo-Mobile') !== false) {
      $commit_type = 'ios';
    }

    // Android detection via configured android repo names
    if ($commit_type === 'core' && !empty($commit_classification['android_repos']) && isset($commit['url'])) {
      foreach ($commit_classification['android_repos'] as $repo) {
        if ($repo && stripos($commit['url'], $repo) !== false) {
          $commit_type = 'android';
          break;
        }
      }
    }

    // Theme detection: repo name contains 'theme'
    if ($commit_type === 'core' && !empty($commit_classification['theme_repos']) && isset($commit['url'])) {
      foreach ($commit_classification['theme_repos'] as $repo) {
        if ($repo && stripos($commit['url'], $repo) !== false) {
          $commit_type = 'theme';
          break;
        }
      }
    }

    // Plugin detection via configured plugin repo names
    if ($commit_type === 'core' && !empty($commit_classification['plugin_repos'])) {
      $search_target = ($commit['url'] ?? '') . ' ' . ($commit['name'] ?? '');
      foreach ($commit_classification['plugin_repos'] as $repo) {
        if ($repo && stripos($search_target, $repo) !== false) {
          $commit_type = 'plugin';
          break;
        }
      }
    }

    // Tool detection via configured tool repo names
    if ($commit_type === 'core' && !empty($commit_classification['tool_repos'])) {
      $search_target = ($commit['url'] ?? '') . ' ' . ($commit['name'] ?? '');
      foreach ($commit_classification['tool_repos'] as $repo) {
        if ($repo && stripos($search_target, $repo) !== false) {
          $commit_type = 'tool';
          break;
        }
      }
    }

    if (isset($commit['author']) && $commit['author'] === 'Piwigo-TranslationTeam') {
      $commit_type = 'translation';
    }

    $coding_activity_weeks[$week_index]['commits'][$commit_type][] = array(
      'message' => $commit['message'] ?? '',
      'date' => format_date($commit['occured_on'], ['day', 'month', 'year']),
      'occured_on' => $commit['occured_on'],
      'repo' => $commit['name'] ?? '',
      'url' => $commit_url,
      'hash' => $commit_id,
      'author' => $commit['author'] ?? '',
    );
  }
}

// Ensure commits are ordered chronologically (oldest first) per week and per type
foreach ($coding_activity_weeks as &$week) {
  foreach ($week['commits'] as $type => &$commits) {
    usort($commits, function ($a, $b) {
      $ta = strtotime($a['occured_on'] ?? 0);
      $tb = strtotime($b['occured_on'] ?? 0);
      return $ta <=> $tb;
    });
  }
  unset($commits);
}
unset($week);

foreach ($porg_releases as $version => $version_content) {
  if (isset($version_content['show_in_changelogs']) and !$version_content['show_in_changelogs']) {
    continue;
  }

  $major_version_ends_with = (version_compare($version, '11') >= 0) ? '.0.0' : '.0';

  if (preg_match('/' . preg_quote($major_version_ends_with) . '$/', $version)) {
    $update = array(
      'version' => $version,
      'title' => 'Version ' . preg_replace('/(\.0){1,2}$/', '', $version),
      'slug' => 'version-' . str_replace('.', '-', $version),
      'released_on' => format_date($version_content['released_on'], ['day', 'month', 'year']),
    );

    if (isset($version_content['changelogs_image'])) {
      $changelogs_image = $version_content['changelogs_image'];
      if (substr($changelogs_image, 0, 4) === "http") {
        $update['image'] = $changelogs_image;
      } else {
        $update['image'] = get_absolute_root_url() . PORG_PATH . "images/product_updates/" . $changelogs_image;
      }
    } else {
      $update['image'] = get_absolute_root_url() . PORG_PATH . "images/product_updates/changelog-image-" . $colors[$color_index % 3] . ".svg";
    }

    if (isset($version_content['summary']) && is_array($version_content['summary'])) {
      $update['features'] = $version_content['summary'];
    } else {
      $update['features'] = array();
    }

    $product_updates[] = $update;
    $color_index++;
  }
}

$template->assign(
  array(
    'product_updates' => $product_updates,
    'coding_activity_weeks' => $coding_activity_weeks,
  )
);
