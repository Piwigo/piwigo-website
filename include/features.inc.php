<?php

load_language('feature_customize.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_customize.lang', PORG_PATH);
load_language('feature_measure.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_measure.lang', PORG_PATH);
load_language('feature_organize.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_organize.lang', PORG_PATH);
load_language('feature_search.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_search.lang', PORG_PATH);
load_language('feature_security.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_security.lang', PORG_PATH);
load_language('feature_share.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_share.lang', PORG_PATH);
load_language('feature_upload.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
load_language('feature_upload.lang', PORG_PATH);

$security_sub1_image ='hostingeu.webp';

if (isset($user['language']) && $user['language'] === 'fr_FR') {
	$security_sub1_image ='hostingfr.webp';
}

$template->assign('SECURITY_SUB1_IMAGE', $security_sub1_image);


