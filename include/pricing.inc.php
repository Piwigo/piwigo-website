<?php
// Read data/faq.js and assign the FAQ array to Smarty as $faqs
$data_file = PORG_PATH . 'data/faq.js';
$faqs = array();
if (file_exists($data_file)) {
    $content = file_get_contents($data_file);
    $start = strpos($content, '[');
    $end = strrpos($content, '];');
    if ($start !== false && $end !== false) {
        $json = substr($content, $start, $end - $start + 1);
        $decoded = json_decode($json, true);
        if (is_array($decoded)) {
            $faqs = $decoded;
        }
    }
}

load_language('faq.lang', PORG_PATH);

$template->assign('faqs', $faqs);

?>
