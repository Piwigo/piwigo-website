<?php

load_language('premium_plugins.lang', PORG_PATH);

$plugin_names = array(
  'Add <head> element',
  'Additional Pages',
  'Admin Tools',
  'Advanced Menu Manager',
  'AlwaysShowMetadata',
  'Antiaspi',
  'AStat.2',
  'Automatic Size',
  'Back2Front',
  'Batch Downloader',
  'Batch Manager Prefilters',
  'Batch Manager, Photo Description',
  'BBCode Bar',
  'Birthdate',
  'Color Palette',
  'Colored Tags',
  'Comments Blacklist',
  'Comments on albums',
  'Contact form',
  'Contact 1 menu',
  'Cookie Consent',
  'Copyrights',
  'Crypto Captcha',
  'Custom Download Link',
  'Delete Hit/Rate',
  'Download by Size',
  'Download Counter',
  'Edit Filename',
  'Embedded Videos',
  'Exif View',
  'Exiftools GPS',
  'Extended Description',
  'FCK Editor',
  'Fotorama',
  'Header Manager',
  'Gthumb+',
  'Hide Title on Browse Path',
  'Image Preview',
  'IPTC from Mac',
  'Language Switch',
  'Lightbox',
  'Localfiles Editor',
  'Loupe',
  'Menu Random Photo',
  'Menu Tags',
  'meta',
  'Meta Open Graph',
  'Mobile Theme for Tablets',
  'No Stats for Robots',
  'OpenStreetMap',
  'Panoramas',
  'Paypal Shopping Cart',
  'Permalink Generator',
  'Perso Footer',
  'Personal Favicon',
  'Photo Update',
  'Piwishack',
  'Posted Date Changer',
  'Protect Notification',
  'Private Share',
  'PWG Stuffs',
  'Read Metadata',
  'Reset Manual Order',
  'rightclick',
  'Rotate Image',
  'RV Askimet',
  'RV autocomplete',
  'RV Menu Tree',
  'RV Thumb Scroller',
  'ShareAlbum',
  'Show Photo Identifier',
  'Social Buttons',
  'Statistics',
  'Stop Spammers',
  'Subscribe to Comments',
  'Tag to Keyword',
  'Take a tour of Piwigo',
  'Theme Switch',
  'Thumbnail Tooltip',
  'Title',
  'URL Uploader',
  'VideoJS',
  'Add tags mass',
  'Add User Notes',
  'Admin messages',
  'Batch Manager, Added By',
  'Community',
  'Download Permissions',
  'Export Data',
  'PDF2Tab',
  'Photo added by',
  'Quick Fav',
  'See my photos',
  'See photos by user',
  'Upload 1 menu',
  'Write Metadata',
  'User Custom Fields',
  'Batch Downloader (premium)',
  'Download formats buttons',
  'Download Limits',
  'Expiry Date',
  'External reference',
  'Manage Properties Photos',
  'PhotoSphere',
  'Properties Mass Update',
  'Smartalbums',
  'Tag Groups',
  'Tag Recognition',
  'User Collections',
  'User Mass Register',
  'LDAP login',
  'Microsoft 365 connect',
  'Password Policy',
);

global $template;

$feature_table = array(
  array(false, true, true, true),
  array(false, false, true, true)
);

$plugin_table = array();
for ($i = 0; $i < 82; $i++) {
  $plugin_table[] = array(true, true, true, true);
}
for ($i = 0; $i < 15; $i++) {
  $plugin_table[] = array(false, true, true, true);
}
for ($i = 0; $i < 13; $i++) {
  $plugin_table[] = array(false, false, true, true);
}
for ($i = 0; $i < 3; $i++) {
  $plugin_table[] = array(false, false, false, true);
}

$template->assign(array(
  'FEATURE_TABLE' => $feature_table,
  'PLUGIN_TABLE' => $plugin_table,
  'PLUGIN_NAMES' => $plugin_names,
));

?>