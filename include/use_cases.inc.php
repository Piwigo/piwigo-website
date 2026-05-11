<?php
$all_logos = get_ressources("logos");

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

// Assign filtered logos to template
$template->assign(
  array(
    'tourism_logos' => $filtered_logos['travel-tourism'],
    'public_sector_logos' => $filtered_logos['public-sector'],
    'companies_logos' => $filtered_logos['companies'],
    'education_research_logos' => $filtered_logos['education-research'],
    'nonprofits_logos' => $filtered_logos['nonprofits'],
    'photographers_individuals_logos' => $filtered_logos['photographers-individuals'],
  )
);
?>
