<?php

load_language('countries.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('countries.lang', PORG_PATH);

$all_testimonials = get_ressources('pro_support_testimonials');
$comments = array();

foreach ($all_testimonials as $testimonial) {
  $testimonial_tags = get_tags_of($testimonial['id']);
  $item_content = array(
    'id' => $testimonial['id'],
    'comment' => trigger_change('render_category_name', $testimonial['comment'] ?? ''),
    'author' => $testimonial['name'],
    'url' => $testimonial_tags['url'] ?? null,
    'country' => $testimonial_tags['country'] ?? null,
  );
  $comments[] = array_merge($item_content, $testimonial_tags);
}

$template->assign(
  array(
    'comments' => $comments,
  )
);
