<?php

load_language('countries.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('countries.lang', PORG_PATH);

$all_testimonials = get_ressources('testimonials');
$comments = array();

// Index testimonials by their ID for efficient lookup
$testimonials_by_id = array();
foreach ($all_testimonials as $testimonial) {
  $testimonials_by_id[$testimonial['id']] = $testimonial;
}

$wanted_ids = [461, 471, 468, 586, 465];

foreach ($wanted_ids as $id) {
  if (isset($testimonials_by_id[$id])) {
    $testimonial = $testimonials_by_id[$id];
    $testimonial_tags = get_tags_of($id);
    $item_content = array(
      'id' => $testimonial['id'],
      'comment' => trigger_change('render_category_name', $testimonial['comment'] ?? ''),
      'author' => $testimonial['name'],
      'url' => $testimonial_tags['url'] ?? null,
      'country' => $testimonial_tags['country'] ?? null,
    );
    $comments[] = array_merge($item_content, $testimonial_tags);
  }
}

$template->assign(
  array(
    'comments' => $comments,
  )
);
