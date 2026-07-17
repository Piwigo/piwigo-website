<?php

load_language('countries.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('countries.lang', PORG_PATH);

$all_testimonials = get_ressources('testimonials');
$comments = array();

$wanted_ids = [461, 471, 468, 586];

foreach ($all_testimonials as $testimonial) {
  if (in_array($testimonial['id'], $wanted_ids)) {
    $testimonial_tags = get_tags_of($testimonial['id']);
    $item_content = array(
      'id' => $testimonial['id'],
      'comment' => trigger_change('render_category_name', $testimonial['comment'] ?? ''),
      'author' => $testimonial['name'],
      'url' => $testimonial_tags['url'] ?? null,
    );
    $comments[] = array_merge($item_content, $testimonial_tags);
  }
}

$template->assign(
  array(
    'comments' => $comments,
  )
);
