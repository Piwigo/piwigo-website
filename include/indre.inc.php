<?php
global $user;

if (isset($user) && 'en_UK' != ($user['language'] ?? '')) {
  load_language('cases.lang', PORG_PATH, array('language' => 'en_UK', 'no_fallback' => true));
}
load_language('cases.lang', PORG_PATH);
