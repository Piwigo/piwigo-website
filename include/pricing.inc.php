<?php
$template->assign(
	'ANNOUNCEMENT_INFO',
	array(
		'label' => l10n('As of September 1st 2026, a 10% price increase is planned for all our subscribers, both existing and new.'),
	)
);

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
	$pricing_pdf_link = "https://ressources.piwigo.com/action.php?id=2160&part=e&download";
	$doc_link = 'https://doc-fr.piwigo.org/';
	$forum_link = 'https://fr.piwigo.org/forum/';
	$download_link = 'https://piwigo.org/download/dlcounter.php?code=latest';
} else {
	$pricing_pdf_link = "https://ressources.piwigo.com/action.php?id=2159&part=e&download";
	$doc_link = 'https://doc.piwigo.org/';
	$download_link = 'https://piwigo.org/download/dlcounter.php?code=latest';
	$forum_link = ($user['language'] == 'de_DE') ? 'https://de.piwigo.org/forum/' : 'https://piwigo.org/forum/';
}

$image_formats = 'jpg, jpeg, png, gif, webp, heic, ogg, ogv, mp4, m4v, webm, webmv, mp3';
$other_formats = 'psd, ai, eps, tif, tiff, svg, pdf';

$plans = array(
	'plan_pro' => array(
		'title' => l10n('pcom_pricing_page_pro'),
		'is_best_deal' => false,
		'admins_count' => '1',
		'storage_size' => '10GB',
		'price' => l10n('€%d', 29),
		'subtitle' => l10n('pcom_pricing_page_pro_explanation'),
		'features' => array(
			array('text' => l10n('1 administrator')),
			array('text' => l10n('pcom_pricing_page_unlimited_users')),
			array('text' => l10n('pcom_pricing_page_no_contributors'), 'not_included' => true),
			array(
				'text' => l10n('pro storage'),
				'info' => true,
				'subject' => 'storage'
				),
			array(
				'text' => l10n('format only'),
				'not_included' => true,
				'info' => true,
				'tooltip' => array(
					l10n('image_formats'),
				)
			),
			array('text' => l10n('pcom_pricing_page_email_support')),
			array(
				'text' => l10n('pcom_pricing_page_personal_pro_details_2'),
				'subject' => 'plugins'
			),
		),
		'services' => array(
			array(
				'text' => l10n('pcom_pricing_page_personal_pro_details_1'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_personal_details_6'),
					l10n('pcom_pricing_page_personal_details_3'),
					l10n('pcom_pricing_page_personal_pro_details_5'),
					l10n('pcom_pricing_page_personal_details_5'),
					l10n('pcom_pricing_page_personal_details_4')
				)
			),
			array(
				'text' => l10n('Host'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_personal_pro_details_18')
				)
			),
			array(
				'text' => l10n('pcom_pricing_page_import_piwigo'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_import_piwigo_detail')
				)
			),
		)
	),
	'plan_team' => array(
		'title' => l10n('pcom_pricing_page_team'),
		'is_best_deal' => false,
		'admins_count' => '3',
		'storage_size' => '100GB',
		'price' => l10n('€%d', 99),
		'subtitle' => l10n('pcom_pricing_page_team_explanation'),
		'features' => array(
			array('text' => l10n('3 administrators')),
			array('text' => l10n('pcom_pricing_page_unlimited_users')),
			array('text' => l10n('pcom_pricing_page_unlimited_contributors')),
			array(
				'text' => l10n('team storage'),
				'info' => true,
				'subject' => 'storage'
			),
			array(
				'text' => l10n('pcom_pricing_page_all_formats'),
				'info' => true,
				'tooltip' => array(
					l10n('other_formats'),
				)
			),
			array('text' => l10n('pcom_pricing_page_priority_email_support')),
			array(
				'text' => l10n('plugins to customize', 95),
				'subject' => 'plugins'
			),
		),
		'services' => array(
			array('text' => l10n('pcom_pricing_page_team_details_1')),
			array('text' => l10n('pcom_pricing_page_team_details_3')),
			array('text' => l10n('pcom_pricing_page_team_details_2')),
			array(
				'text' => l10n('pcom_pricing_page_user_management'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_team_details_4'),
					l10n('pcom_pricing_page_team_details_5'),
					l10n('pcom_pricing_page_team_details_6'),
					l10n('pcom_pricing_page_etc')
				)
			),
		)
	),
	'plan_enterprise' => array(
		'title' => l10n('pcom_pricing_page_enterprise'),
		'is_best_deal' => true,
		'admins_count' => '5',
		'storage_size' => '250GB',
		'price' => l10n('€%d', 199),
		'subtitle' => l10n('pcom_pricing_page_enterprise_explanation'),
		'features' => array(
			array('text' => l10n('5 administrators')),
			array('text' => l10n('unlimited users')),
			array('text' => l10n('unlimited contributors')),
			array('text' => l10n('entreprise storage'), 'info' => true, 'subject' => 'storage'),
			array(
				'text' => l10n('pcom_pricing_page_all_formats'),
				'info' => true,
				'tooltip' => array(
					l10n('other_formats'),
				)
			),
			array('text' => l10n('pcom_pricing_page_priority_email_support')),
			array(
				'text' => l10n('plugins to customize',108),
				'subject' => 'plugins'
			),
		),
		'services' => array(
			array('text' => l10n('pcom_pricing_page_enterprise_details_1')),
			array(
				'text' => l10n('pcom_pricing_page_enterprise_details_2'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_user_custom_search_filters'),
					l10n('pcom_pricing_page_custom_properties'),
					l10n('pcom_pricing_page_enterprise_details_3'),
					l10n('pcom_pricing_page_enterprise_details_4')
				)
			),
			array(
				'text' => l10n('pcom_pricing_page_enterprise_details_5'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_enterprise_details_6'),
					l10n('pcom_pricing_page_enterprise_details_7'),
					l10n('pcom_pricing_page_enterprise_details_8')
				)
			),
			array(
				'text' => l10n('pcom_pricing_page_enterprise_details_9'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_enterprise_details_10'),
					l10n('pcom_pricing_page_enterprise_details_11'),
					l10n('pcom_pricing_page_enterprise_details_12'),
					l10n('pcom_pricing_page_etc')
				)
			),
			array(
				'text' => l10n('pcom_pricing_page_enterprise_details_13'),
				'subject' => 'personalisation'
			),
			array('text' => l10n('pcom_pricing_page_enterprise_details_14')),
		)
	),
	'plan_vip' => array(
		'title' => l10n('pcom_pricing_page_vip'),
		'is_best_deal' => false,
		'admins_count' => l10n('pcom_pricing_page_unlimited'),
		'storage_size' => '1000GB',
		'price' => l10n('€%d', 399),
		'subtitle' => l10n('pcom_pricing_page_vip_explanation'),
		'features' => array(
			array('text' => l10n('pcom_pricing_page_unlimited_admins')),
			array('text' => l10n('pcom_pricing_page_unlimited_users')),
			array('text' => l10n('pcom_pricing_page_unlimited_contributors')),
			array('text' => l10n('vip storage'), 'info' => true, 'subject' => 'storage'),
			array(
				'text' => l10n('pcom_pricing_page_all_formats'),
				'info' => true,
				'tooltip' => array(
					l10n('other_formats'),
				)
			),
			array('text' => l10n('pcom_pricing_page_priority_email_phone_support')),
			array(
				'text' => l10n('plugins to customize', 111),
				'subject' => 'plugins'
			),
		),
		'services' => array(
			array('text' => l10n('pcom_pricing_page_vip_details_1')),
			array('text' => l10n('pcom_pricing_page_vip_details_2')),
			array(
				'text' => l10n('pcom_pricing_page_vip_details_3'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_vip_details_6')
				)
			),
			array('text' => l10n('pcom_pricing_page_vip_details_4')),
			array('text' => l10n('pcom_pricing_page_vip_details_5')),
			array(
				'text' => l10n('pcom_pricing_page_vip_details_7'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_page_vip_details_8')
				)
			),
		)
	)
);

$support_plans = array(
	'free' => array(
		'title' => l10n('pcom_pricing_page_support_free'),
		'price' => l10n('€%d', 0),
		'subtitle' => l10n('pcom_pricing_page_support_free_explanation'),
		'features' => array(
			array('text' => l10n('pcom_pricing_page_support_functionalities')),
			array('text' => l10n('Access_doc')),
		)
	),
	'light' => array(
		'title' => l10n('pcom_pricing_page_support_light'),
		'price' => l10n('€%d', 39),
		'subtitle' => l10n('pcom_pricing_page_support_light_explanation'),
		'features' => array(
			array('text' => l10n('pcom_pricing_page_support_functionalities')),
			array('text' => l10n('Access_doc')),
			array('text' => l10n('pcom_pricing_page_user_support')),
			array('text' => l10n('Response_48')),
			array('text' => l10n('3 administrators')),
			array(
				'text' => l10n('pcom_pricing_page_support_light_plugins'),
				'subject' => 'plugins'
			),
		)
	),
	'standard' => array(
		'title' => l10n('pcom_pricing_page_support_standard'),
		'price' => l10n('€%d', 79),
		'subtitle' => l10n('pcom_pricing_page_support_standard_explanation'),
		'features' => array(
			array('text' => l10n('pcom_pricing_page_support_functionalities')),
			array('text' => l10n('Access_doc')),
			array('text' => l10n('pcom_pricing_page_user_support')),
			array('text' => l10n('Response_24')),
			array('text' => l10n('5 administrators')),
			array(
				'text' => l10n('pcom_pricing_page_support_standard_plugins'),
				'subject' => 'plugins'
			),
		)
	),
	'premium' => array(
		'title' => l10n('pcom_pricing_page_support_premium'),
		'price' => l10n('€%d', 150),
		'subtitle' => l10n('pcom_pricing_page_support_premium_explanation'),
		'features' => array(
			array('text' => l10n('pcom_pricing_page_support_functionalities')),
			array('text' => l10n('Access_doc')),
			array('text' => l10n('pcom_pricing_page_user_support')),
			array('text' => l10n('Response_8')),
			array('text' => l10n('pcom_pricing_page_unlimited_admins')),
			array(
				'text' => l10n('pcom_pricing_page_support_premium_plugins'),
				'subject' => 'plugins'
			),
			array(
				'text' => l10n('pcom_pricing_page_support_premium_audit'),
				'info' => true,
				'tooltip' => array(
					l10n('pcom_pricing_annual_audit_info'),
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
		'title' => l10n('pcom_pricing_page_code_plugins_title'),
		'text' => l10n('pcom_pricing_page_code_plugins_paragraph'),
	),
	array(
		'icon' => 'icon-key',
		'title' => l10n('pcom_pricing_page_ssh_title'),
		'text' => l10n('pcom_pricing_page_ssh_paragraph'),
	),
);

$prof_services = array(
	array(
		'img' => 'personalize_orange.svg',
		'title' => l10n('pcom_pricing_page_on_premise_11'),
		'text' => l10n('pcom_pricing_page_on_premise_12'),
		'btn' => l10n('pcom_pricing_page_see_examples'),
		'price' => l10n('€%d', 490),
		'suffix' => l10n('pcom_pricing_page_ht'),
	),
	array(
		'icon' => 'icon-import',
		'title' => l10n('pcom_pricing_page_custom_data_import'),
		'text' => l10n('pcom_pricing_page_on_premise_13'),
		'btn' => l10n('pcom_pricing_page_learn_more'),
		'label' => l10n('on_quotation'),
		'price' => l10n('€%d', 150),
		'suffix' => l10n('pcom_pricing_page_ht_hour'),
	),
	array(
		'icon' => 'icon-wrench',
		'title' => l10n('pcom_pricing_page_on_premise_18'),
		'text' => l10n('pcom_pricing_page_on_premise_19'),
		'btn' => l10n('pcom_pricing_page_see_prerequistes'),
		'label' => l10n('on_quotation'),
		'price' => l10n('€%d', 150),
		'suffix' => l10n('pcom_pricing_page_ht_hour'),
	),
);

$tech_table_prices = array(
	'install_customer' => l10n('from €%d', 200),
	'install_external' => l10n('from €%d', 250),
	'update_customer' => l10n('€%d', 500, 'pcom_pricing_page_ht_year'),
	'update_external' => l10n('€%d', 600, 'pcom_pricing_page_ht_year'),
	'managed_customer' => l10n('€%d', 1500, 'pcom_pricing_page_ht_year'),
	'na' => l10n('pcom_pricing_page_non_applicable'),
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