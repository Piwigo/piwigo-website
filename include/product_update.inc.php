<?php

include(PORG_PATH . '/data/release.data.php');

/** @var array<string, array<string, mixed>> $porg_releases */

global $template, $lang_info;

$product_updates = [];
$color_index = 0;
$colors = array('orange', 'blue', 'purple');

foreach ($porg_releases as $version => $version_content)
{
  if (isset($version_content['show_in_changelogs']) and !$version_content['show_in_changelogs'])
  {
    continue;
  }

  $major_version_ends_with = (version_compare($version, '11') >= 0) ? '.0.0' : '.0';

  if (preg_match('/'.preg_quote($major_version_ends_with).'$/', $version))
  {
    $update = array(
      'version' => $version,
      'title' => 'Version ' . preg_replace('/(\.0){1,2}$/', '', $version),
      'slug' => 'version-' . str_replace('.', '-', $version),
      'released_on' => porg_date_format($version_content['released_on']),
    );

    if (isset($version_content['changelogs_image']))
    {
      $changelogs_image = $version_content['changelogs_image'];
      if (substr($changelogs_image, 0, 4) === "http")
      {
        $update['image'] = $changelogs_image;
      }
      else
      {
        $update['image'] = get_absolute_root_url() . PORG_PATH . "images/product_updates/" . $changelogs_image;
      }
    }
    else
    {
      $update['image'] = get_absolute_root_url() . PORG_PATH . "images/product_updates/changelog-image-" . $colors[$color_index % 3] . ".svg";
    }

    if (isset($version_content['summary']) && is_array($version_content['summary']))
    {
      $update['features'] = $version_content['summary'];
    }
    else
    {
      $update['features'] = array();
    }

    $product_updates[] = $update;
    $color_index++;
  }
}

$template->assign(
  array(
    'product_updates' => $product_updates,
  )
);
?>
