<?php
global $user;

if (isset($user) && 'en_UK' != ($user['language'] ?? '')) {
  load_language('use_cases.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
}
load_language('use_cases.lang', PORG_PATH);

load_language('countries.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('countries.lang', PORG_PATH);

$all_testimonials = get_ressources('use_case_photographers_testimonials');
$perso_sector_testimonials = array();

foreach ($all_testimonials as $testimonial) {
  $testimonial_tags = get_tags_of($testimonial['id']);

  $item_content = array(
    'id' => $testimonial['id'],
    'comment' => trigger_change('render_category_name', $testimonial['comment'] ?? ''),
    'author' => $testimonial['name'],
    'url' => $testimonial_tags['url'] ?? null,
    'hosting' => $testimonial_tags['hosting'] ?? null,
  );

  $perso_sector_testimonials[] = array_merge($item_content, $testimonial_tags);
}

$users_examples = get_ressources("use_case_photographers_examples");

$processed_users_examples = array();
if (is_array($users_examples)) {
  foreach ($users_examples as $example) {
    $item_tags = get_tags_of($example['id']);
  
    $filtered_data = array(
      "id" => $example['id'],
      "name" => $example['name'],
      "comment" => trigger_change('render_category_name', $example['comment'] ?? ''),
      "page_url" => $example['page_url'],
      "element_url" => $example['element_url'],
      "derivatives" => $example['derivatives'],
    );
  
    $processed_users_examples[] = array_merge($filtered_data, $item_tags);
  }
}


$template->assign(
  array(
    'perso_testimonials' => $perso_sector_testimonials,
    'users_examples' => $processed_users_examples,
  )
);
