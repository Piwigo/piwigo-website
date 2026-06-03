<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/header.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/common_menu.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/menu_item_common.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/menu_button_common.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/header.js"></script>

<nav class="navbar navbar-default navbar-expand-lg">
  <div class="container d-flex justify-content-between align-items-center">
    <a class="navbar-brand" href="{$URL.home}">
      <img src="{$PORG_ROOT_URL}images/piwigo.org.svg" alt="Piwigo.org" title="go to Piwigo.org home page">
    </a>

    <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
      data-bs-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false"
      aria-label="Toggle navigation">
      <i class="icon-burger" style="color: var(--main_flash_green) !important;"></i>
      {* <span class="navbar-toggler-icon"></span> *}
    </button>

    <div class="collapse navbar-collapse align-items-center" id="bs-example-navbar-collapse-1">

      <div class="mobile-menu-header d-lg-none">
        <img src="{$PORG_ROOT_URL}images/piwigo.org.svg" alt="Piwigo.org" class="mobile-brand">
        <button class="navbar-toggler close-menu" type="button" data-bs-toggle="collapse"
          data-bs-target="#bs-example-navbar-collapse-1">
          <i class="icon-cross mobile-close-icon" style="color: var(--main_flash_green) !important;"></i>
        </button>
      </div>

      <ul class="nav navbar-nav navbar-right align-items-center">
        <li class="nav-btn-wrapper nav-btn-get-started">
          {include file='template/include/sub_menu/sub_menu_button.tpl' is_openable=true is_selected=$NAV_SELECTED.get_started label={'Get started'|translate}}
          <div class="mobile-sub-content d-lg-none">
            {include file='template/include/sub_menu/sub_menu_item_get_started.tpl'}</div>
        </li>
        <li class="nav-btn-wrapper nav-btn-product">
          {include file='template/include/sub_menu/sub_menu_button.tpl' is_openable=true is_selected=$NAV_SELECTED.product label={'Product'|translate}}
          <div class="mobile-sub-content d-lg-none">
            {include file='template/include/sub_menu/sub_menu_item_product.tpl'}</div>
        </li>
        <li class="nav-btn-wrapper">
          {include file='template/include/sub_menu/sub_menu_button.tpl' href="{$PORG_ROOT}{$URL.users}" is_selected=$NAV_SELECTED.users label={'Our users'|translate} }
        </li>
        <li class="nav-btn-wrapper nav-btn-support">
          {include file='template/include/sub_menu/sub_menu_button.tpl' is_openable=true is_selected=$NAV_SELECTED.support label={'Support'|translate}}
          <div class="mobile-sub-content d-lg-none">
            {include file='template/include/sub_menu/sub_menu_item_support.tpl'}</div>
        </li>
        <li class="nav-btn-wrapper nav-btn-behind-code">
          {include file='template/include/sub_menu/sub_menu_button.tpl' is_openable=true is_selected=$NAV_SELECTED.behind_code label={'Behind the code'|translate} }
          <div class="mobile-sub-content d-lg-none">
            {include file='template/include/sub_menu/sub_menu_item_behind_code.tpl'}</div>
        </li>
        <li class="nav-btn-wrapper nav-btn-news">
          {include file='template/include/sub_menu/sub_menu_button.tpl' is_openable=true is_selected=$NAV_SELECTED.news label={'News'|translate}}
          <div class="mobile-sub-content d-lg-none">
            {include file='template/include/sub_menu/sub_menu_item_news.tpl'}
          </div>
        </li>
      </ul>

      <div class="mobile-menu-footer d-lg-none">
        <div class="mobile-cta-wrapper">
          {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'Free trial'|translate} href='#'}
        </div>

        <div class="mobile-footer-row d-flex">
          <a href="{$PORG_ROOT}{$URL.contact}" class="header-mail-btn btn-text w-50 mr-2">
            {'Contact us'|translate} <i class="icon-mailext header-mail-icon"></i>
          </a>

          <a href="#" class="header-lang-btn btn-text w-50">
            {'English (UK)'|translate}
            <span class="lang-label-group">

              <i class="icon-langage header-lang-icon"></i>
              <i class="icon-down-open arrow-lang"></i>
            </span>

          </a>
        </div>
      </div>
    </div>

    <div class="header-buttons d-none d-lg-flex">
      <a href="{$PORG_ROOT}{$URL.contact}" class="header-mail-btn btn-text"><i class="icon-mailext header-mail-icon"></i></a>
      <div class="header-lang-dropdown">
        <a href="#" class="header-lang-btn btn-text js-lang-toggle" aria-expanded="false"
          aria-controls="header-lang-menu" aria-haspopup="true">
          <i class="icon-langage header-lang-icon"></i>
          <i class="icon-down-open header-arrow-icon" aria-hidden="true"></i>
        </a>
        <div id="header-lang-menu" class="header-lang-menu" role="menu" aria-label="Language selector">
          {foreach from=$switch_languages item=switch_language}
            <a href="{$switch_language.url}" class="header-lang-option minimenus-item" role="menuitem">{$switch_language.label}</a>
          {/foreach}
        </div>
      </div>
      {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'Free trial'|translate} href='#'}
    </div>
  </div>
</nav>

{literal}
  <script>
    $(document).ready(function() {
      $('.submenu_button').on('click', function(e) {
        var isIpadAir = window.innerWidth >= 820 && window.innerWidth <= 1180;

        if (isIpadAir) {
          e.preventDefault();
          var $subContent = $(this).next('.mobile-sub-content');
          $subContent.toggle();
          $(this).find('.icon-down-open').toggleClass('icon-rotate-180');

        }
      });
    });
  </script>
{/literal}