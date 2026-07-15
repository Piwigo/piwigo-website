<?php
global $user;

if (isset($user) && 'en_UK' != ($user['language'] ?? '')) {
  load_language('use_cases.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
}
load_language('use_cases.lang', PORG_PATH);

load_language('countries.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('countries.lang', PORG_PATH);

$all_logos = get_ressources('logos');
$public_sector_logos = array();

foreach ($all_logos as $logo) {
  $logo_tags = get_tags_of($logo['id']);

  if (isset($logo_tags['useCase']) && $logo_tags['useCase'] === 'public') {
    $logo['url'] = $logo_tags['url'] ?? '#';
    $public_sector_logos[] = $logo;
  }
}

$all_testimonials = get_ressources('testimonials');
$public_sector_testimonials = array();

foreach ($all_testimonials as $testimonial) {
  $testimonial_tags = get_tags_of($testimonial['id']);

  if (isset($testimonial_tags['useCase']) && $testimonial_tags['useCase'] === 'public') {
    $item_content = array(
      'id' => $testimonial['id'],
      'comment' => trigger_change('render_category_name', $testimonial['comment'] ?? ''),
      'author' => $testimonial['name'],
      'url' => $testimonial_tags['url'] ?? null,
      'hosting' => $testimonial_tags['hosting'] ?? null,
    );

    $public_sector_testimonials[] = array_merge($item_content, $testimonial_tags);
  }
}

$template->assign(
  array(
    'public_sector_logos' => $public_sector_logos,
    'public_sector_testimonials' => $public_sector_testimonials,
  )
);
