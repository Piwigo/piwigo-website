<!DOCTYPE html>
<html lang="{$lang_info.code}" dir="{$lang_info.direction}">

<head>
  {* Required meta tags *}
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  {if !$AUTHORIZE_ROBOTS}
    <meta name="robots" content="noindex, nofollow">
  {/if}

  {if isset($meta_title)}
    <title>{$meta_title}</title>
  {/if}
  {if isset($meta_description)}
    <meta name="description" content="{$meta_description|escape:html}">
  {/if}

  <meta name="google-site-verification" content="{$GOOGLE_SITE_VERIFICATION}" />

  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}vendor/fontello/css/fontello.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}fonts/Sora/Sora.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}fonts/Kanit/Kanit.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}fonts/Red_Hat_Display/Red_Hat_Display.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}fonts/Chivo_Mono/Chivo_Mono.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/common.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/header.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/common_menu.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/menu_item_common.css">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/menu_button_common.css">

  {if (isset($LANGUAGE_CSS))}
    <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}{$LANGUAGE_CSS}">
  {/if}

  {if (isset($WEBVIEW) && $WEBVIEW)}
    <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/webview.css">
  {/if}
  <script src="{$PORG_ROOT_URL_PLUGINS}js/jquery-3.2.1.min.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}vendor/masonry-layout/dist/masonry.pkgd.min.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}vendor/masonry-layout/imagesloaded.pkgd.min.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}vendor/clipboard/clipboard.min.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}js/validator.min.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}js/piwigodotorg.js"></script>
  <script src="{$PORG_ROOT_URL_PLUGINS}js/pricing_switch.js"></script>

  <link rel="shortcut icon" type="image/x-icon" href="{$PORG_ROOT_URL_PLUGINS}images/favicon.ico">
  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}vendor/flag-icons-master/css/flag-icon.css">

  {if $TRACK_ANALYTICS}
  <script defer data-domain="piwigo.org" src="https://plausible.piwigo.org/js/script.js"></script>
  {/if}
</head>

<body{if isset($RELEASE_VERSION)} class="release-{$RELEASE_VERSION}" {/if}>
{if isset($ANNOUNCEMENT_INFO)}
  <div class="container-fluid announcement-bar">
  {if isset($ANNOUNCEMENT_INFO.url)}
    <a href="{$ANNOUNCEMENT_INFO.url}" target="_blank"><i class="icon-parchment"></i> {$ANNOUNCEMENT_INFO.label}</a>
  {else}
    <i class="icon-parchment"></i> {$ANNOUNCEMENT_INFO.label}
  {/if}
  </div>
{/if}
  {if isset($LANGUAGE_INFO)}
    <div class="container-fluid language-available">
      <a href="{$LANGUAGE_INFO.url}" class="non-decorated-text"><i class="icon-langage"></i> {$LANGUAGE_INFO.label}</a>
    </div>
  {/if}

  {if empty($HIDE_NAVBAR)}
    {include file='template/navbar.tpl'}
  {/if}

  </body>

</html>