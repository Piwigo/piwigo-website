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
        'price' => l10n('%d €', 29),
        'subtitle' => l10n('pricing card pro description'),
        'features' => array(
            array('text' => l10n('1 administrator')),
            array('text' => l10n('unlimited users')),
            array('text' => l10n('no contributors'), 'not_included' => true),
            array('text' => l10n('10GB storage'), 'info' => true),
            array('text' => l10n('Image, video & audio files only'), 'not_included' => true, 'info' => true),
            array('text' => l10n('Email support')),
        ),
        'services' => array(
            array('text' => l10n('All the standard features of Piwigo'), 'info' => true),
            array('text' => l10n('Over 80 plugins to customize your Piwigo'), 'info' => true),
            array('text' => l10n('Host your gallery on a secure cloud'), 'info' => true),
            array('text' => l10n('Import your existing Piwigo'), 'info' => true),
        )
    ),
    'plan_team' => array(
        'title' => l10n('Team'),
        'is_best_deal' => false,
        'admins_count' => '3',
        'storage_size' => '100GB',
        'price' => l10n('%d €', 99),
        'subtitle' => l10n('pricing card team description'),
        'features' => array(
            array('text' => l10n('3 administrators')),
            array('text' => l10n('unlimited users')),
            array('text' => l10n('unlimited contributors')),
            array('text' => l10n('100GB storage'), 'info' => true),
            array('text' => l10n('All file formats'), 'info' => true),
            array('text' => l10n('Priority email support')),
        ),
        'services' => array(
            array('text' => l10n('All the features of the Pro plan, but also...')),
            array('text' => l10n('Contributor management (Allow non-administrators to upload files)'), 'info' => true),
            array('text' => l10n("Administrators' activity history (additions, deletions, etc.)"), 'info' => true),
            array('text' => l10n('Advanced user management'), 'info' => true),
        )
    ),
    'plan_enterprise' => array(
        'title' => l10n('Enterprise'),
        'is_best_deal' => true,
        'admins_count' => '5',
        'storage_size' => '250GB',
        'price' => l10n('%d €', 199),
        'subtitle' => l10n('pricing card entreprise description'),
        'features' => array(
            array('text' => l10n('5 administrators')),
            array('text' => l10n('unlimited users')),
            array('text' => l10n('unlimited contributors')),
            array('text' => l10n('250GB storage'), 'info' => true),
            array('text' => l10n('All file formats'), 'info' => true),
            array('text' => l10n('Priority email support')),
        ),
        'services' => array(
            array('text' => l10n('All the features of the Team plan, but also...')),
            array('text' => l10n('More options for organizing, categorizing and presenting your content'), 'info' => true),
            array('text' => l10n('More automation and productivity'), 'info' => true),
            array('text' => l10n('More advanced features'), 'info' => true),
            array('text' => l10n('Custom graphic personalization'), 'info' => true),
            array('text' => l10n('Custom data import (priced upon request)')),
        )
    ),
    'plan_vip' => array(
        'title' => l10n('VIP'),
        'is_best_deal' => false,
        'admins_count' => l10n('pricing plan_unlimited'),
        'storage_size' => '1000GB',
        'price' => l10n('%d €', 399),
        'subtitle' => l10n('pricing card vip description'),
        'features' => array(
            array('text' => l10n('unlimited administrators')),
            array('text' => l10n('unlimited users')),
            array('text' => l10n('unlimited contributors')),
            array('text' => l10n('1000GB storage'), 'info' => true),
            array('text' => l10n('All file formats'), 'info' => true),
            array('text' => l10n('Priority email support + phone support')),
        ),
        'services' => array(
            array('text' => l10n('All the features of the Enterprise plan, but also...')),
            array('text' => l10n('Advanced authentication features (Single sign-on, password rules...)'), 'info' => true),
            array('text' => l10n('Enhanced coaching for Piwigo implementation'), 'info' => true),
            array('text' => l10n('Custom development (priced upon request)')),
            array('text' => l10n('Dedicated server (priced upon request)')),
            array('text' => l10n('Custom data import included'), 'info' => true),
        )
    )
);

$support_plans = array(
    'free' => array(
        'title' => l10n('Free'),
        'price' => l10n('%d €', 0),
        'subtitle' => l10n('pricing card free description'),
        'features' => array(
            array('text' => l10n('Access to all features, themes and plugins')),
            array('text' => l10n('Access to the documentation and the community forum')),
        )
    ),
    'light' => array(
        'title' => l10n('Light'),
        'price' => l10n('%d €', 39),
        'subtitle' => l10n('pricing card light description'),
        'features' => array(
            array('text' => l10n('Access to all features, themes and plugins')),
            array('text' => l10n('Access to the documentation and the community forum')),
            array('text' => l10n('Professional user support via email, video call, and phone by appointment')),
            array('text' => l10n('Response time: 48 business hours')),
            array('text' => l10n('3 administrators')),
            array('text' => l10n('Support included for over 100 plugins'), 'info' => true),
        )
    ),
    'standard' => array(
        'title' => l10n('Standard'),
        'price' => l10n('%d €', 79),
        'subtitle' => l10n('pricing card standard description'),
        'features' => array(
            array('text' => l10n('Access to all features, themes and plugins')),
            array('text' => l10n('Access to the documentation and the community forum')),
            array('text' => l10n('Professional user support via email, video call, and phone by appointment')),
            array('text' => l10n('Response time: 24 business hours')),
            array('text' => l10n('5 administrators')),
            array('text' => l10n('Support included on over 100 plugins and 20 Enterprise plugins'), 'info' => true),
        )
    ),
    'premium' => array(
        'title' => l10n('Premium'),
        'price' => l10n('%d €', 150),
        'subtitle' => l10n('pricing card premium description'),
        'features' => array(
            array('text' => l10n('Access to all features, themes and plugins')),
            array('text' => l10n('Access to the documentation and the community forum')),
            array('text' => l10n('Professional user support via email, video call, and phone by appointment')),
            array('text' => l10n('Response time: 8 business hours (priority)')),
            array('text' => l10n('unlimited administrators')),
            array('text' => l10n('Support included on over 120 plugins and VIP plugins'), 'info' => true),
            array('text' => l10n('Annual audit of your use of Piwigo'), 'info' => true),
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
    '50'   => array('size' => '50',   'price' => l10n('%d €', 5)),
    '100'  => array('size' => '100',  'price' => l10n('%d €', 10)),
    '250'  => array('size' => '250',  'price' => l10n('%d €', 25)),
    '500'  => array('size' => '500',  'price' => l10n('%d €', 50)),
    '1000' => array('size' => '1000', 'price' => l10n('%d €', 100)),
);


$template->assign(array(
    'PLANS'             => $plans,
    'SUPPORT_PLANS'     => $support_plans,
    'MAINTENANCE_PLAN'  => $maintenance_plan,
    'EXTRA_STORAGE'     => $extra_storage,
    'IMAGE_FORMATS'     => $image_formats,
    'OTHER_FORMATS'     => $other_formats,
    'PRICING_PDF_LINK'  => $pricing_pdf_link,
    'DOC_LINK'          => $doc_link,
    'FORUM_LINK'        => $forum_link,
    'DOWNLOAD_LINK'     => $download_link,
    'CONTACT_URL'       => porg_get_page_urls()['contact'],
    'PCOM_REQUIREMENTS_URL' => $requirements_url,
    'PCOM_BLOG_CUSTOM_DATA_IMPORT_URL' => $blog_custom_data_import_url,
    'PCOM_BLOG_PERSONNALISATION_URL' => $blog_personnalisation_url,
    'EPHEMERAL_KEY'     => get_ephemeral_key(15),
));

?>