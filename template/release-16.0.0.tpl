<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/release16.css">

<section class="container release-notes-intro release-top">
  <div class="row align-items-center">
    <div class="col-12 col-md-6 release-top-left">
      <h1 class="orange-text mb-3">Piwigo {$version}</h1>
      <h1 class="release-title mb-4">{'pwg_org_release16_title'|translate}</h1>

      <div class="mb-2">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label={'Download Piwigo %s'|translate:$version} href="//piwigo.org/download/dlcounter.php?code={$version}"}
      </div>

      <p class="release-date mb-3"><i class="icon-pwg"></i> {'Released on %s'|translate:$released_on}</p>

      <a href="#download_other_versions" class="release-date threec-text underlined-text">{'Download details and older versions'|translate}</a>

    </div>
    <div class="col-sm-12 col-md-6 text-center">
      <p class="intro-text intro-text2_10" id="intro-main-text">{'pwg_org_release16_intro_desc'|translate}</p>
      <p class="intro-text intro-text2_10 mb-0" id="intro-main-text">{'pwg_org_release16_intro_short_text'|translate}</p>
    </div>
  </div>
</section>

<section class="container-fluid mb-5">
  <div class="row text-center">
    <img class="piwigo-realease-banner px-0" src="https://sandbox.piwigo.com/uploads/4/y/1/4y1zzhnrnw//2025/09/02/20250902113553-22ad2a8c.png">
  </div>
</section>


<section class="container mb-5">
  <div class="row version-16-content pt-5">
    <div class="col-md-4">
      <div class="version-16-nav-card">

        <h2 class="country-testimonial nav-card-title">{'On this page'|translate}</h2>

        <nav class="nav flex-column mt-3 version-16-nav-list" aria-label="On this page">
          <a class="nav-link minimenus-item icon-star" href="#standard_pages">{'pwg_org_release16_menu_std_pages'|translate}</a>
          <a class="nav-link minimenus-item icon-puzzle" href="#2fa">{'pwg_org_release16_menu_2FA'|translate}</a>
          <a class="nav-link minimenus-item icon-paint" href="#related_tags">{'pwg_org_release16_menu_related_tags'|translate}</a>
          <a class="nav-link minimenus-item icon-paint" href="#save_buttons">{'pwg_org_release16_menu_mv_save_btn'|translate}</a>
          <div class="interview-nav-item">
            <a class="interview-nav-link nav-link minimenus-item icon-icon28" href="#interview_romain">{'Interview %s'|translate:'Romain'}</a>
          </div>
          <a class="nav-link minimenus-item icon-star" href="#widget_management">{'pwg_org_release16_menu_gallery_search'|translate}</a>
          <a class="nav-link minimenus-item icon-paint" href="#comments_manager">{'pwg_org_release16_menu_comment_manager'|translate}</a>
          <a class="nav-link minimenus-item icon-arrows-cw" href="#activity_log_filter">{'pwg_org_release16_menu_activity_log_filter'|translate}</a>
          <a class="nav-link minimenus-item icon-arrows-cw" href="#image_update">{'pwg_org_release16_menu_update_img_batches'|translate}</a>
          <a class="nav-link minimenus-item icon-star" href="#expert_mode">{'pwg_org_release16_menu_expert_mode'|translate}</a>
          <div class="interview-nav-item">
            <a class="interview-nav-link nav-link minimenus-item icon-icon28" href="#interview_lana">{'Interview %s'|translate:'Lana'}</a>
          </div>
          <a class="nav-link minimenus-item icon-wrench" href="#technical_features">{'pwg_org_release16_menu_technical_features'|translate}</a>
          <a class="nav-link minimenus-item icon-download" href="#download_details">{'pwg_org_release16_menu_download_details'|translate}</a>
        </nav>

      </div>
    </div>
    <div class="col-md-8">
      {* version content *}
      <div class="accordion accordion-flush release-version-accordion" id="releaseVersionAccordion">
        {foreach $download_versions as $download_version}
          <div class="accordion-item mb-3 border-0">
            <button class="accordion-button collapsed release-version-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-{$download_version.version|replace:'.':'-'}" aria-expanded="false" aria-controls="collapse-{$download_version.version|replace:'.':'-'}">
              <h4 class="release-version-title mb-0">Piwigo {$download_version.version}: {$download_version.features|join:', '} • <span class="release-version-date">{$download_version.released_on}</span></h4>
              <i class="icon-down-open release-version-toggle-icon" aria-hidden="true"></i>
            </button>
            </h2>
            <div id="collapse-{$download_version.version|replace:'.':'-'}" class="accordion-collapse collapse" aria-labelledby="heading-{$download_version.version|replace:'.':'-'}" data-bs-parent="#releaseVersionAccordion">
              <div class="accordion-body">
                {include file='template/release_content_partial.tpl' bugs=$download_version.bugs known_issues=$download_version.known_issues news_languages=$download_version.news_languages updated_languages=$download_version.updated_languages features=$download_version.features_items branch=$branch upgrade_from=$upgrade_from version=$download_version.version upgrade_code=$upgrade_code URL=$URL}
              </div>
            </div>
          </div>
        {/foreach}
      </div>

      <div class="section-part justify-content-center text-center">
        <h3 id="standard_pages">{'pwg_org_release16_menu_title_std_pages'|translate}<span class="badge badge-new icon-star">{'pwg_org_release16_new_badge'|translate}</span></h3>

        <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_menu_std_pages_desc'|translate}</p>

        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/07/18/20250718142136-c9b465c1-la.png" class="screenshot">

        <p class="sub-h3 mt-2">{'pwg_org_release16_menu_std_pages_desc2'|translate}</p>

        <img src="https://ressources.piwigo.com/uploads/c/v/7/cv7jpz6hf8//2025/10/22/20251022115751-d0da63b3.png" class="screenshot mt-3">

        <p class="sub-h3 mt-2">{'pwg_org_release16_menu_std_pages_desc3'|translate}</p>

        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/07/18/20250718142137-af445469-la.png" class="screenshot mt-3">

        <p class="sub-h3 mt-2">{'pwg_org_release16_menu_std_pages_desc4'|translate}</p>

        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/10/22/20251022141215-e328001c-la.png" class="screenshot mt-3">

        <p class="sub-h3 mt-2">{'pwg_org_release16_menu_std_pages_desc5'|translate}</p>

      </div>

      <div class="section-framed-container" id="2fa">
        <div class="section-part section-framed extension">
          <i class="icon-puzzle"></i>
          <h3 id="anonymous_stats">{'pwg_org_release16_menu_2FA_title'|translate}</h3>
          <p>{'pwg_org_release16_2FA_desc'|translate}</p>

          <p>{'pwg_org_release16_2FA_desc2'|translate}</p>
        </div>
      </div>

    </div>
  </div>
</section>

<section class="container" id="download_other_versions">
  <div class="row justify-content-center">
    <div class="col-11 col-md-10 dowload-other-versions">
      <div class="row justify-content-center">
        <div class="col-12 col-md-7 text-center">
          <h2 class="mb-5">{'Download details and older versions'|translate}</h2>
        </div>
      </div>

      <div class="table-responsive">
        <table class="table align-middle download-versions-table mb-0">
          <thead>
            <tr>
              <th scope="col">{'Version'|translate}</th>
              <th scope="col">{'Checksum'|translate}</th>
              <th scope="col">{'Release date'|translate}</th>
            </tr>
          </thead>
          <tbody>
            {foreach $download_versions as $download_version}
              <tr>
                <td class="text-version">Version {$download_version.version} {if $download_version@first}<span class="btn-menu badge-latest">Latest</span>{/if}</td>
                <td class="text-checksum">{$download_version.md5sum}</td>
                <td class="release-date">{$download_version.released_on}</td>
                <td class="text-end">
                  <a href="{$download_version.download_url}" class="orange-text release-date">
                    <i class="icon-download pe-1"></i>{'Download'|translate}
                  </a>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>


<script src="{$PORG_ROOT_URL_PLUGINS}js/release-16.js"></script>




{* 
<section class="container">





  <div class="section-part">
    <h3 id="related_tags">{'pwg_org_release16_title_related_tags'|translate}<span class="badge badge-refresh icon-brush">{'pwg_org_release16_badge_refresh'|translate}</span></h3>

    <div class="row">
      <div class="col-sm-2 col-md-3"></div>
      <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_related_tags_desc'|translate}</p>
      <div class="col-sm-2 col-md-3"></div>
    </div>

    <div class="row first-image-and-caption">
      <div class="col-sm-12 col-md-8 ">
        <img class="img-fluid corner1" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/uploads/c/v/7/cv7jpz6hf8//2025/10/27/20251027162930-54d9a828.png" class="screenshot">
        <img class="img-fluid corner2" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_related_tags_desc2'|translate}</p>
      </div>
    </div>

    <div class="row second-image-and-caption ">
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_related_tags_desc3'|translate}</p>
      </div>
      <div class="col-sm-12 col-md-8  right-image-screenshot">
        <img class="img-fluid corner3" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/10/28/20251028142108-cfab77cf-xx.png" class="screenshot">
        <img class="img-fluid corner4" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
    </div>

  </div>

  <div class="section-part">
    <h3 id="save_buttons">{'pwg_org_release16_title_mv_save_btn'|translate}<span class="badge badge-refresh icon-brush">{'pwg_org_release16_badge_refresh'|translate}</span></h3>

    <div class="row first-image-and-caption">
      <div class="col-sm-12 col-md-8 ">
        <img class="img-fluid corner1" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/10/23/20251023093729-b385447d-la.jpg" class="screenshot">
        <img class="img-fluid corner2" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_mv_save_btn_desc'|translate}</p>
      </div>
    </div>

  </div>

  <div id="interview_romain" class="interview-container">
    <div class="interview interview1">
      <img src="{$PORG_ROOT_URL}images/changelogs/quotes.svg" class="quotes">
      <img class="photo" src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/10/24/20251024135944-7fcb50d8-la.jpg">
      <p class="first">{'pwg_org_release16_interview_romain'|translate}</p>
      <p>{'pwg_org_release16_interview_romain_part2'|translate}</p>
      <div class="interview-signature"><a href=""></a>Romain</div>
    </div>
  </div>

  <div class="section-part">
    <h3 id="widget_management">{'pwg_org_release16_title_gallery_search'|translate}<span class="badge badge-new icon-star">{'pwg_org_release16_new_badge'|translate}</span></h3>

    <div class="row">
      <div class="col-sm-2 col-md-3"></div>
      <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_gallery_search_desc'|translate}</p>
      <div class="col-sm-2 col-md-3"></div>
    </div>

    <div class="row first-image-and-caption">
      <div class="col-sm-12 col-md-8 ">
        <img class="img-fluid corner1" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/10/24/20251024160311-8fba20ea-sm.png" class="screenshot">
        <img class="img-fluid corner2" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_gallery_search_desc2'|translate}</p>
      </div>
    </div>

    <div class="row second-image-and-caption ">
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_gallery_search_desc3'|translate}</p>
      </div>
      <div class="col-sm-12 col-md-8  right-image-screenshot">
        <img class="img-fluid corner3" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/10/24/20251024160644-db578cfd-me.png" class="screenshot">
        <img class="img-fluid corner4" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
    </div>

  </div>

  <div class="section-part">
    <h3 id="comments_manager">{'pwg_org_release16_title_comment_manager'|translate}
      <span class="badge badge-refresh icon-brush">{'pwg_org_release16_badge_refresh'|translate}</span>
    </h3>

    <div class="row">
      <div class="col-sm-2 col-md-3"></div>
      <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_comment_manager_desc'|translate}</p>
      <div class="col-sm-2 col-md-3"></div>
    </div>

    <div class="row second-image-and-caption ">
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_comment_manager_desc2'|translate}</p>
      </div>
      <div class="col-sm-12 col-md-8  right-image-screenshot">
        <img class="img-fluid corner3" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/_datas/c/v/7/cv7jpz6hf8/i/uploads/c/v/7/cv7jpz6hf8//2025/09/03/20250903114721-068b399e-xx.png" class="screenshot">
        <img class="img-fluid corner4" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
    </div>

  </div>

  <div class="section-framed-container" id="i18n_date">
    <div class="section-part section-framed">
      <img src="{$PORG_ROOT_URL}images/changelogs/information.svg" class="information">
      <h3 id="anonymous_stats">{'pwg_org_release16_title_date_format'|translate}</h3>
      <p>{'pwg_org_release16_date_format_desc'|translate}</p>
      <ul>
        <li>"Tuesday, October 7, 2025" {'pwg_org_release16_in_american_english'|translate}</li>
        <li>"mardi 7 octobre 2025" {'pwg_org_release16_in_french'|translate}</li>
        <li>"Dienstag, 7. Oktober 2025" {'pwg_org_release16_in_german'|translate}</li>
        <li>"martes, 7 de octubre de 2025" {'pwg_org_release16_in_spanish'|translate}</li>
        <li>...</li>
      </ul>
    </div>
  </div>

  <div class="section-part">
    <h3 id="activity_log_filter">{'pwg_org_release16_title_activity_filter'|translate} <span class="badge badge-redesign icon-arrows-cw">{'pwg_org_release16_badge_redesign'|translate}</span></h3>

    <div class="row">
      <div class="col-sm-2 col-md-3"></div>
      <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_activity_filter_desc'|translate}</p>
      <div class="col-sm-2 col-md-3"></div>
    </div>

    <div class="row first-image-and-caption">
      <div class="col-sm-12 col-md-8 ">
        <img class="img-fluid corner1" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src=" https://ressources.piwigo.com/_datas/c/v/7/cv7jpz6hf8/i/uploads/c/v/7/cv7jpz6hf8//2025/09/05/20250905111428-599f4948-xx.png" class="screenshot">
        <img class="img-fluid corner2" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_activity_filter_desc2'|translate}</p>
      </div>
    </div>

  </div>

  <div class="section-part">
    <h3 id="image_update">{'pwg_org_release16_title_update_img_batches'|translate}<span class="badge badge-redesign icon-arrows-cw">{'pwg_org_release16_badge_redesign'|translate}</span></h3>

    <div class="row">
      <div class="col-sm-2 col-md-3"></div>
      <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_update_img_batches_desc'|translate}</p>
      <div class="col-sm-2 col-md-3"></div>
    </div>

    <div class="row second-image-and-caption ">
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_update_img_batches_desc2'|translate}</p>
      </div>
      <div class="col-sm-12 col-md-8  right-image-screenshot">
        <img class="img-fluid corner3" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2025/09/03/20250903115313-73e80752-xx.png" class="screenshot">
        <img class="img-fluid corner4" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
    </div>

  </div>

  <div class="section-framed-container" id="3xl_4xl">
    <div class="section-part section-framed">
      <img src="{$PORG_ROOT_URL}/images/changelogs/information.svg" class="information">
      <h3 id="anonymous_stats">{'pwg_org_release16_title_img_format'|translate}</h3>
      <p>{'pwg_org_release16_img_format_desc'|translate}</p>
    </div>
  </div>

  <div class="section-part">
    <h3 id="expert_mode">{'pwg_org_release16_title_expert_mode'|translate}<span class="badge badge-new icon-star">{'pwg_org_release16_new_badge'|translate}</span></h3>

    <div class="row">
      <div class="col-sm-2 col-md-3"></div>
      <p class="col-sm-8 col-md-6 descriptive-text">{'pwg_org_release16_expert_mode_desc'|translate}</p>
      <div class="col-sm-2 col-md-3"></div>
    </div>

    <div class="row first-image-and-caption">
      <div class="col-sm-12 col-md-8 ">
        <img class="img-fluid corner1" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/uploads/c/v/7/cv7jpz6hf8//2025/10/07/20251007082656-d89dc25f.png" class="screenshot">
        <img class="img-fluid corner2" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_expert_mode_desc2'|translate}</p>
      </div>
    </div>

    <div class="row second-image-and-caption ">
      <div class="col-sm-12 col-md-4">
        <p class="screenshot-caption">{'pwg_org_release16_expert_mode_des3'|translate}</p>
      </div>
      <div class="col-sm-12 col-md-8  right-image-screenshot">
        <img class="img-fluid corner3" src="{$PORG_ROOT_URL}/images/changelogs/corner-image1.svg">
        <img src="https://ressources.piwigo.com/uploads/c/v/7/cv7jpz6hf8//2025/10/07/20251007082656-cafe7b58.png" class="screenshot">
        <img class="img-fluid corner4" src="{$PORG_ROOT_URL}/images/changelogs/corner-image2.svg">
      </div>
    </div>

  </div>

  <div id="interview_lana" class="interview-container">
    <div class="interview interview1">
      <img src="{$PORG_ROOT_URL}images/changelogs/quotes.svg" class="quotes">
      <img class="photo" src="https://ressources.piwigo.com/uploads/c/v/7/cv7jpz6hf8//2025/10/24/20251024140405-0919f0b1.jpg">
      <p class="first">{'pwg_org_release16_interview_lana'|translate}</p>
      <p>{'pwg_org_release16_interview_lana2'|translate}</p>
      <div class="interview-signature"><a href="">Lana</a></div>
    </div>
  </div>

  <div id="technical_features" class="section-part technical-features">

    <div class="row">

      <h3>{'Technical features'|translate}</h3>
      <p class=" descriptive-text col-sm-12 extra-side-padding" id="technical-first-paragraph">{'pwg_org_release16_end_notes'|translate} <a href="https://github.com/Piwigo/Piwigo/wiki/Technical-changes-in-Piwigo-16" class="icon-info-circled">{'pwg_org_release16_end_notes2'|translate}</a>. {'pwg_org_release16_end_notes3'|translate}.</p>

      <div class="col-sm-12 col-md-6">
        <h4 class="col-sm-12">{'pwg_org_release16_compatibility'|translate}</h4>
        <p class=" descriptive-text col-sm-12">{'pwg_org_release16_tech_features_php_min_version'|translate}</p>
      </div>

      <div class="col-sm-12 col-md-6">
        <h4 class="col-sm-12">{'pwg_org_release16_tech_features_change_img_priority'|translate}</h4>
        <p class=" descriptive-text col-sm-12">{'pwg_org_release16_tech_features_change_img_priority_desc'|translate}</p>
      </div>

      <div class="col-sm-12 col-md-6">
        <h4 class="col-sm-12">{'pwg_org_release16_tech_features_api_keys'|translate}</h4>
        <p class="descriptive-text col-sm-12">{'pwg_org_release16_api_key_desc'|translate}
          <br><br>
          {'pwg_org_release16_api_key_desc2'|translate}
        </p>
      </div>

      <div class="col-sm-12 col-md-6">
        <h4 class="col-sm-12">{'pwg_org_release16_tech_features_docker_image'|translate}</h4>
        <div class="col-sm-12">
          <p class=" descriptive-text">{'pwg_org_release16_tech_features_docker_image_desc'|translate}</p>
          <div class="col-sm-12 text-center"><a class="btn get-docker" href="https://hub.docker.com/r/piwigo/piwigo">{'pwg_org_release16_tech_features_docker_image_get'|translate}</a></div>
          <div class="col-sm-12 mt-3 text-center"><img class="w-50" src="https://sandbox.piwigo.com/uploads/4/y/1/4y1zzhnrnw//2025/08/28/20250828121444-d63cd3f2.png" class="information"></div>
        </div>
      </div>

    </div>

  </div>
</section>
*}