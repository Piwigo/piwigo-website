<?php
load_language('countries.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('countries.lang', PORG_PATH);

$all_logos = get_ressources("logos");
$all_examples = get_ressources("examples");

$use_cases = array(
  'travel-tourism' => 'tourism',
  'public-sector' => 'public-sector',
  'companies' => 'companies',
  'education-research' => 'education-research',
  'nonprofits' => 'nonprofits',
  'photographers-individuals' => 'photographers-individuals',
);

// Create filtered arrays for each use case
$filtered_logos = array();
foreach ($use_cases as $use_case_key => $use_case_tag) {
  $filtered_logos[$use_case_key] = array();

  foreach ($all_logos as $logo) {
    $logo_tags = get_ressources_infos($logo['id']);

    // Check if logo has the matching use case tag
    if (isset($logo_tags['useCase']) && $logo_tags['useCase'] === $use_case_tag) {
      $filtered_logos[$use_case_key][] = $logo;
    }
  }
}

// Get all testimonials
$all_testimonials = get_ressources("testimonials");

// Filter testimonials by use case
$filtered_testimonials = array();
foreach ($use_cases as $use_case_key => $use_case_tag) {
  $filtered_testimonials[$use_case_key] = array();

  foreach ($all_testimonials as $testimonial) {
    $testimonial_tags = get_ressources_infos($testimonial['id']);

    // Check if testimonial has the matching use case tag
    if (isset($testimonial_tags['useCase']) && $testimonial_tags['useCase'] === $use_case_tag) {
      // Prepare testimonial data
      $item_content = array(
        "id" => $testimonial['id'],
        "comment" => trigger_change('render_category_name', $testimonial['comment'] ?? ''),
        "author" => $testimonial['name'],
        "url" => $testimonial_tags['url'] ?? null,
        "hosting" => $testimonial_tags['hosting'] ?? null,
      );

      $filtered_testimonials[$use_case_key][] = array_merge($item_content, $testimonial_tags);
    }
  }
}

// Assign filtered logos to template
$template->assign(
  array(
    'tourism_logos' => $filtered_logos['travel-tourism'],
    'public_sector_logos' => $filtered_logos['public-sector'],
    'companies_logos' => $filtered_logos['companies'],
    'education_research_logos' => $filtered_logos['education-research'],
    'nonprofits_logos' => $filtered_logos['nonprofits'],
    'photographers_individuals_logos' => $filtered_logos['photographers-individuals'],
    'tourism_testimonials' => $filtered_testimonials['travel-tourism'],
    'public_sector_testimonials' => array_slice($filtered_testimonials['public-sector'], 0, 4),
    'companies_testimonials' => array_slice($filtered_testimonials['companies'], 0, 4),
    'education_research_testimonials' => array_slice($filtered_testimonials['education-research'], 0, 4),
    'nonprofits_testimonials' => array_slice($filtered_testimonials['nonprofits'], 0, 4),
    'photographers_individuals_testimonials' => array_slice($filtered_testimonials['photographers-individuals'], 0, 4),
  )
);