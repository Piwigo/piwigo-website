<?php

global $template, $lang_info;

// 1) number of years
$template->assign('NB_YEARS', porg_get_nb_years());

// 2) installations
$template->assign('NB_INSTALLATIONS', "100,000+");

// 3) downloads
$template->assign('NB_DOWNLOADS', "2,8");

// 4) extensions
$template->assign('NB_EXTENSIONS', "599");

// 5) translations
$template->assign('NB_TRANSLATIONS', "59+");


$inde_image ='bloc-eu.webp';

if (isset($user['language']) && $user['language'] === 'fr_FR') {
	$inde_image ='bloc-fr.webp';
}

$template->assign('INDE_IMAGE', $inde_image);
?>