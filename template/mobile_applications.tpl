<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/mobile_applications.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/global_text_image.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/triple_true.css">

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
      <img src="{$PORG_ROOT_URL}images/mobile_applications/appStore.webp" />
    </a>
    <a href="https://play.google.com/store/apps/details?id=com.piwigo.piwigo_ng" target="blank">
      <img src="{$PORG_ROOT_URL}images/mobile_applications/playStore.webp" />
    </a>
  </div>
</section>

<section class="mobile-app-import-part container">
  {include
    file="template/include/card/global_text_image.tpl"
    reverse=true
    title={'mobile_applications_import_title'|translate} desc={'mobile_applications_import_text'|translate} image="{$PORG_ROOT_URL}images/features/import/add.webp" 
  }
</section>

<section class="mobile-app-perm-part container align-items-center d-flex justify-content-center">
  <div class="mobile-app-perm-headphoneman-part col-10">
    <img src="{$PORG_ROOT_URL}images/mobile_applications/permissions.webp" alt="permissions block" class="img-fluid">
    <img src="{$PORG_ROOT_URL}images/mobile_applications/headphoneMan.webp" alt="headphone man illustration" class="img-fluid">
    <div class="mobile-app-perm-text-part d-flex flex-column align-items-center col-6">
      <h2 class="mobile-app-perm-title text-start">{'mobile_applications_follows_you_title'|translate}</h2>
      <p class="mobile-app-perm-description text-start">{'mobile_applications_follows_you_text'|translate}</p>
    </div>
  </div>
</section>

<section class="mobile-app-album-part container">
  {include
    file="template/include/card/global_text_image.tpl"
    reverse=true
    title={'mobile_applications_albums_title'|translate} desc={'mobile_applications_albums_text'|translate} image="{$PORG_ROOT_URL}images/mobile_applications/Albums.webp" 
  }
</section>

<section class="mobile-app-manage-part container">
  {include
    file="template/include/card/global_text_image.tpl"
    reverse=false
    title={'mobile_applications_sort_photos_title'|translate} desc={'mobile_applications_sort_photos_text'|translate} image="{$PORG_ROOT_URL}images/mobile_applications/Manage.webp" 
  }
</section>

<section class="mobile-app-import-option-part container">
  {include
    file="template/include/card/triple_true.tpl"
    title={'mobile_applications_import_options_title'|translate} text_1={'mobile_applications_size_quality_title'|translate} text_1_desc={'mobile_applications_size_quality_text'|translate} text_2={'mobile_applications_metadata_title'|translate} text_2_desc={'mobile_applications_metadata_text'|translate} text_3={'mobile_applications_geolocalisation_title'|translate} text_3_desc={'mobile_applications_geolocalisation_text'|translate} color="green" text_desc=true
  }
</section>

<section class="mobile-app-manage-part container">
  {include
    file="template/include/card/global_text_image.tpl"
    reverse=true
    title={'mobile_applications_share_title'|translate} desc={'mobile_applications_share_text'|translate} image="{$PORG_ROOT_URL}images/mobile_applications/sharing.webp" 
  }
</section>


<section class="mobile-app-copy-part container">
  {include
    file="template/include/card/global_text_image.tpl"
    reverse=true
    title={'mobile_applications_copy_move_title'|translate} desc={'mobile_applications_copy_move_text'|translate} image="{$PORG_ROOT_URL}images/mobile_applications/Copy.webp" 
  }
</section>

<section class="mobile-app-security-part container">
  {include
    file="template/include/card/triple_true.tpl"
    title={'mobile_applications_security_title'|translate} text_1={'mobile_applications_user_rights_title'|translate} text_1_desc={'mobile_applications_user_rights_text'|translate} text_2={'mobile_applications_confidentiality_title'|translate} text_2_desc={'mobile_applications_confidentiality_text'|translate} text_3={'mobile_applications_control_title'|translate} text_3_desc={'mobile_applications_control_text'|translate} color="green" text_desc=true
  }
</section>
