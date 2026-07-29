<?php 

    global $template, $lang_info; // $lang_info est déjà globalisé

    $template->assign('EPHEMERAL_KEY', get_ephemeral_key(2));
    $template->assign('IS_FRENCH_LANGUAGE', ($user['language'] === 'fr_FR'));
?>