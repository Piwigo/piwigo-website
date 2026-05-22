<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/mobile_applications.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/global_text_image.css">

<section class="mobile-app-header container-fluid d-flex flex-column align-items-center">
  <div class="mobile-app-title-container align-items-center">
    <h1 class="mobile-app-title text-center">{'mobile_applications_title_pt1'|translate}
    </h1>
    <p class="mobile-app-title-circle text-center">
      <span class="highlight-wrap">
        <img class="highlight-circle-ios" src="{$PORG_ROOT_URL}images/pricing/greencircle.svg" alt="green circle">
        <span class="highlight">{'mobile_applications_title_pt2'|translate}</span>
      </span>
      {'mobile_applications_title_pt3'|translate}
      <span class="highlight-wrap">
        <img class="highlight-circle-android" src="{$PORG_ROOT_URL}images/pricing/greencircle.svg" alt="green circle">
        <span class="highlight">{'mobile_applications_title_pt4'|translate}</span>
      </span>
    </p>
  </div>
  <div class="mobile-app-description d-flex flex-column align-items-center">
    <p class="mobile-app-description-text text-center">{'mobile_applications_introduction_pt1'|translate}</p>
    <p class="mobile-app-description-text-pt2 text-center">{'mobile_applications_introduction_pt2'|translate}</p>
  </div>
  <div class="mobile-app-store-buttons d-flex flew-row justify-content-center">
    <a href="https://apps.apple.com/fr/app/piwigo/id472225196" target="blank">
      <img src="{$PORG_ROOT_URL}images/mobile_applications/appStore.png" />
    </a>
    <a href="https://play.google.com/store/apps/details?id=com.piwigo.piwigo_ng" target="blank">
      <img src="{$PORG_ROOT_URL}images/mobile_applications/playStore.png" />
    </a>
  </div>
</section>

<section class="mobile-app-import-part container">
  {include
    file="template/include/card/global_text_image.tpl"
    reverse=true
    title={'mobile_applications_import_title'|translate} desc={'mobile_applications_import_text'|translate} image="{$PORG_ROOT_URL}images/features/import/add.png"
  }
</section>

<section class="mobile-app-perm-part container">
  <div class="mobile-app-perm-headphoneman-part">
    <img src="{$PORG_ROOT_URL}images/mobile_applications/permissions.png" alt="permissions block" class="img-fluid">
    <img src="{$PORG_ROOT_URL}images/mobile_applications/headphoneMan.jpg" alt="headphone man illustration" class="img-fluid">
    <div class="mobile-app-perm-text-part d-flex flex-column align-items-center">
      <h2 class="mobile-app-perm-title text-start">{'mobile_applications_follows_you_title'|translate}</h2>
      <p class="mobile-app-perm-description text-start">{'mobile_applications_follows_you_text'|translate}</p>
    </div>
  </div>
</section>