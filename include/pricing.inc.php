<?php

$faqs = array();
$faq_number = 12;

load_language('faq.lang', PORG_PATH);

for ($i = 1; $i <= $faq_number; $i++) {
	$faqs[] = array(
		'id' => $i,
		'question' => $lang['faq question ' . $i],
		'answer' => $lang['faq answer ' . $i],
	);
}

$template->assign('faqs', $faqs);



global $user, $template;


$blog_personnalisation_url = 'https://customizations.piwigo.com/';

$blog_custom_data_import_urls = array(
	'en_UK' => 'https://piwigo.com/blog/2025/07/01/importing-an-existing-photo-library-into-piwigo/',
	'fr_FR' => 'https://fr.piwigo.com/blog/2025/07/01/importer-une-phototheque-existante-dans-piwigo/',
);

$blog_custom_data_import_url = isset($blog_custom_data_import_urls[$user['language']])
	? $blog_custom_data_import_urls[$user['language']]
	: $blog_custom_data_import_urls['en_UK'];

$requirements_urls = array(
	'en_UK' => 'https://piwigo.org/guides/install/requirements',
	'fr_FR' => 'https://fr.piwigo.org/guides/installation/pr%C3%A9requis',
);

$requirements_url = isset($requirements_urls[$user['language']])
	? $requirements_urls[$user['language']]
	: $requirements_urls['en_UK'];

if ($user['language'] == 'fr_FR') {
	$pricing_pdf_link = "https://ressources.piwigo.com/action.php?id=624&part=e&download";
	$doc_link = 'https://doc-fr.piwigo.org/';
	$forum_link = 'https://fr.piwigo.org/forum/';
	$download_link = 'https://fr.piwigo.org/obtenir-piwigo';
} else {
	$pricing_pdf_link = "https://ressources.piwigo.com/action.php?id=623&part=e&download";
	$doc_link = 'https://doc.piwigo.org/';
	$download_link = 'https://piwigo.org/get-piwigo';
	$forum_link = ($user['language'] == 'de_DE') ? 'https://de.piwigo.org/forum/' : 'https://piwigo.org/forum/';
}

$image_formats = 'jpg, jpeg, png, gif, webp, heic, ogg, ogv, mp4, m4v, webm, webmv, mp3';
$other_formats = 'psd, ai, eps, tif, tiff, svg, pdf';

$plans = array(
	'plan_pro' => array(
		'title' => l10n('Pro'),
		'is_best_deal' => false,
		'admins_count' => '1',
		'storage_size' => '10GB',
		'price' => l10n('€%d', 29),
		'subtitle' => l10n('pricing card pro description'),
		'features' => array(
			array('text' => l10n('1 administrator')),
			array('text' => l10n('unlimited users')),
			array('text' => l10n('no contributors'), 'not_included' => true),
			array('text' => l10n('pro storage'), 'info' => true),
			array(
				'text' => l10n('format only'),
				'not_included' => true,
				'info' => true,
				'tooltip' => array(
					l10n('image_formats'),
				)
			),
			array('text' => l10n('Email support')),
		),
		'services' => array(
			array(
				'text' => l10n('features of Piwigo'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_personal_details_6'),
					l10n('pricing_page_personal_details_3'),
					l10n('pricing_page_personal_pro_details_5'),
					l10n('pricing_page_personal_details_5'),
					l10n('pricing_page_personal_details_4')
				)
			),
			array(
				'text' => l10n('plugins to customize'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_personal_pro_details_7'),
					l10n('pricing_page_personal_pro_details_8'),
					l10n('pricing_page_personal_pro_details_9'),
					l10n('pricing_page_personal_pro_details_10'),
					l10n('pricing_page_personal_pro_details_11'),
					l10n('pricing etc..')
				)
			),
			array(
				'text' => l10n('Host'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_personal_pro_details_18')
				)
			),
			array(
				'text' => l10n('Import'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_import_piwigo_detail')
				)
			),
		)
	),
	'plan_team' => array(
		'title' => l10n('Team'),
		'is_best_deal' => false,
		'admins_count' => '3',
		'storage_size' => '100GB',
		'price' => l10n('€%d', 99),
		'subtitle' => l10n('pricing card team description'),
		'features' => array(
			array('text' => l10n('3 administrators')),
			array('text' => l10n('unlimited users')),
			array('text' => l10n('unlimited contributors')),
			array('text' => l10n('team storage'), 'info' => true),
			array(
				'text' => l10n('All file formats'),
				'info' => true,
				'tooltip' => array(
					l10n('other_formats'),
				)
			),
			array('text' => l10n('Priority email support')),
		),
		'services' => array(
			array('text' => l10n('All the features pro')),
			array('text' => l10n('Contributor')),
			array('text' => l10n("Administrators activity")),
			array(
				'text' => l10n('Advanced user management'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_team_details_4'),
					l10n('pricing_page_team_details_5'),
					l10n('pricing_page_team_details_6'),
					l10n('pricing etc..')
				)
			),
		)
	),
	'plan_enterprise' => array(
		'title' => l10n('Enterprise'),
		'is_best_deal' => true,
		'admins_count' => '5',
		'storage_size' => '250GB',
		'price' => l10n('€%d', 199),
		'subtitle' => l10n('pricing card entreprise description'),
		'features' => array(
			array('text' => l10n('5 administrators')),
			array('text' => l10n('unlimited users')),
			array('text' => l10n('unlimited contributors')),
			array('text' => l10n('entreprise storage'), 'info' => true),
			array(
				'text' => l10n('All file formats'),
				'info' => true,
				'tooltip' => array(
					l10n('other_formats'),
				)
			),
			array('text' => l10n('Priority email support')),
		),
		'services' => array(
			array('text' => l10n('All the features team')),
			array(
				'text' => l10n('More options'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_user_custom_search_filters'),
					l10n('pricing_page_custom_properties'),
					l10n('pricing_page_enterprise_details_3'),
					l10n('pricing_page_enterprise_details_4')
				)
			),
			array(
				'text' => l10n('More automation'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_enterprise_details_6'),
					l10n('pricing_page_enterprise_details_7'),
					l10n('pricing_page_enterprise_details_8')
				)
			),
			array(
				'text' => l10n('More features'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_enterprise_details_10'),
					l10n('pricing_page_enterprise_details_11'),
					l10n('pricing_page_enterprise_details_12'),
					l10n('pricing etc..')
				)
			),
			array(
				'text' => l10n('Custom graphic'),

			),
			array('text' => l10n('Custom data')),
		)
	),
	'plan_vip' => array(
		'title' => l10n('VIP'),
		'is_best_deal' => false,
		'admins_count' => l10n('pricing plan_unlimited'),
		'storage_size' => '1000GB',
		'price' => l10n('€%d', 399),
		'subtitle' => l10n('pricing card vip description'),
		'features' => array(
			array('text' => l10n('unlimited administrators')),
			array('text' => l10n('unlimited users')),
			array('text' => l10n('unlimited contributors')),
			array('text' => l10n('vip storage'), 'info' => true),
			array(
				'text' => l10n('All file formats'),
				'info' => true,
				'tooltip' => array(
					l10n('other_formats'),
				)
			),
			array('text' => l10n('Priority vip')),
		),
		'services' => array(
			array('text' => l10n('All the features vip')),
			array('text' => l10n('Advanced')),
			array(
				'text' => l10n('Enhanced'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_vip_details_6')
				)
			),
			array('text' => l10n('Custom dev')),
			array('text' => l10n('Dedicated server')),
			array(
				'text' => l10n('Custom data import included'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_page_vip_details_8')
				)
			),
		)
	)
);

$support_plans = array(
	'free' => array(
		'title' => l10n('Free'),
		'price' => l10n('€%d', 0),
		'subtitle' => l10n('pricing card free description'),
		'features' => array(
			array('text' => l10n('Access_f')),
			array('text' => l10n('Access_doc')),
		)
	),
	'light' => array(
		'title' => l10n('Light'),
		'price' => l10n('€%d', 39),
		'subtitle' => l10n('pricing card light description'),
		'features' => array(
			array('text' => l10n('Access_f')),
			array('text' => l10n('Access_doc')),
			array('text' => l10n('Professional_support')),
			array('text' => l10n('Response_48')),
			array('text' => l10n('3 administrators')),
			array(
				'text' => l10n('Support_100'),

			),
		)
	),
	'standard' => array(
		'title' => l10n('Standard'),
		'price' => l10n('€%d', 79),
		'subtitle' => l10n('pricing card standard description'),
		'features' => array(
			array('text' => l10n('Access_f')),
			array('text' => l10n('Access_doc')),
			array('text' => l10n('Professional_support')),
			array('text' => l10n('Response_24')),
			array('text' => l10n('5 administrators')),
			array(
				'text' => l10n('Support_100_20'),

			),
		)
	),
	'premium' => array(
		'title' => l10n('Premium'),
		'price' => l10n('€%d', 150),
		'subtitle' => l10n('pricing card premium description'),
		'features' => array(
			array('text' => l10n('Access_f')),
			array('text' => l10n('Access_doc')),
			array('text' => l10n('Professional_support')),
			array('text' => l10n('Response_8')),
			array('text' => l10n('unlimited administrators')),
			array(
				'text' => l10n('Support_120'),

			),
			array(
				'text' => l10n('Annual audit'),
				'info' => true,
				'tooltip' => array(
					l10n('pricing_annual_audit_info'),
				)
			),
		)
	)
);


$maintenance_plan = array(
	'custom_graphic_personalization' => l10n('%d €', 490),
	'custom_data_import' => l10n('%d €', 150),
	'installation_and_configuration' => l10n('%d €', 250),
	'update_support_with_support_plan' => l10n('%d €', 500),
	'update_support_without_support_plan' => l10n('%d €', 600),
	'server_manag_with_support_plan' => l10n('%d €', 1500),
	'custom_feature_dev' => l10n('%d €', 150),
);

$extra_storage = array(
	'50' => array('size' => '50', 'price' => l10n(5)),
	'100' => array('size' => '100', 'price' => l10n(10)),
	'250' => array('size' => '250', 'price' => l10n(25)),
	'500' => array('size' => '500', 'price' => l10n(50)),
	'1000' => array('size' => '1000', 'price' => l10n(100)),
);

$specific_cases = array(
	array(
		'icon' => 'icon-dev',
		'title' => l10n('pricing specific_case_title_1'),
		'text' => l10n('pricing specific_case_text_1'),
	),
	array(
		'icon' => 'icon-key',
		'title' => l10n('pricing specific_case_title_2'),
		'text' => l10n('pricing specific_case_text_2'),
	),
);

$prof_services = array(
	array(
		'img' => 'personalize_orange.svg',
		'title' => l10n('pricing prof_service_title_3'),
		'text' => l10n('pricing prof_service_text_3'),
		'btn' => l10n('pricing label_see_examples'),
		'price' => l10n('€%d', 490),
		'suffix' => l10n('pricing price_excl_taxes'),
	),
	array(
		'icon' => 'icon-import',
		'title' => l10n('pricing prof_service_title_4'),
		'text' => l10n('pricing prof_service_text_4'),
		'btn' => l10n('pricing label_learn_more'),
		'label' => l10n('pricing professional services lil text'),
		'price' => l10n('€%d', 150),
		'suffix' => l10n('pricing price_excl_taxes_hour'),
	),
	array(
		'icon' => 'icon-wrench',
		'title' => l10n('pricing prof_service_title_5'),
		'text' => l10n('pricing prof_service_text_5'),
		'btn' => l10n('pricing label_see_prerequisites'),
		'label' => l10n('pricing professional services lil text'),
		'price' => l10n('€%d', 150),
		'suffix' => l10n('pricing price_excl_taxes_hour'),
	),
);

$tech_table_prices = array(
	'install_customer' => l10n('from €%d', 200),
	'install_external' => l10n('from €%d', 250),
	'update_customer' => l10n('€%d', 500, 'pricing price_excl_taxes_year'),
	'update_external' => l10n('€%d', 600, 'pricing price_excl_taxes_year'),
	'managed_customer' => l10n('€%d', 1500, 'pricing price_excl_taxes_year'),
	'na' => l10n('pricing price_na'),
);

$template->assign(array(
	'PLANS' => $plans,
	'SUPPORT_PLANS' => $support_plans,
	'MAINTENANCE_PLAN' => $maintenance_plan,
	'EXTRA_STORAGE' => $extra_storage,
	'IMAGE_FORMATS' => $image_formats,
	'OTHER_FORMATS' => $other_formats,
	'PRICING_PDF_LINK' => $pricing_pdf_link,
	'THEME_COLOR' => 'orange',
	'SPECIFIC_CASES' => $specific_cases,
	'PROF_SERVICES' => $prof_services,
	'DOC_LINK' => $doc_link,
	'FORUM_LINK' => $forum_link,
	'DOWNLOAD_LINK' => $download_link,
	'CONTACT_URL' => porg_get_page_urls()['contact'],
	'PCOM_REQUIREMENTS_URL' => $requirements_url,
	'PCOM_BLOG_CUSTOM_DATA_IMPORT_URL' => $blog_custom_data_import_url,
	'PCOM_BLOG_PERSONNALISATION_URL' => $blog_personnalisation_url,
	'EPHEMERAL_KEY' => get_ephemeral_key(15),
	'TECH_PRICES' => $tech_table_prices,
));

?>