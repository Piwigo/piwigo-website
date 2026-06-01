<?php

$security_sub1_image ='hostingeu.webp';

if (isset($user['language']) && $user['language'] === 'fr_FR') {
	$security_sub1_image ='hostingfr.webp';
}

$template->assign('SECURITY_SUB1_IMAGE', $security_sub1_image);


