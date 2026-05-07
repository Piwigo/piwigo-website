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

?>
