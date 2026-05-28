<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/home.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/triple_true.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/menu/mini_menu_item.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/get_started.css">
<div class="page-wrapper">
  <section class="pwg-banner container-fluide">
    <div class="container">
      <div class="row">
        <div class="pwg-tagline col-md-5 d-flex flex-column justify-content-center">

          <h1 class="mb-4">{'porg_home_title'|translate}<br>
            <span class="highlight-wrap mt-1">
              <img class="highlight-circle" src="{$PORG_ROOT_URL}images/home/circle.svg" alt="">
              <span class="orange-text">{'Your way'|translate}.</span>
            </span>
          </h1>

          <p class="mb-5"><span class="p-strong">{'porg_home_desc1'|translate}</span><br>{'porg_home_desc2'|translate}</p>

          <div class="btn-row">
            {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'porg_home_btn1'|translate} href="{$PORG_ROOT}{$URL.signup}"}
            {include file='template/include/buttons/button.tpl' variant='cta_secondary' label={'porg_home_btn2'|translate} href="#ways-to-use"}
          </div>
        </div>

        <div class="col-md-7 responsive-image d-flex flex-column justify-content-center">
          <img class="img-fluid" src="{$PORG_ROOT_URL}images/home/top.png" alt="Piwigo screenshot">
        </div>

        <div class="latest-activites justify-content-center text-center">
          <p class="pwg-activities release-date"><i class="pink-text icon-double-tag"></i>
            <a href="{$PORG_ROOT}{$URL.release}-{$LATEST_VERSION_NUMBER}" class="dark-text non-decorated-text country-testimonial">{'version %s'|translate:$LATEST_VERSION_NUMBER}</a>
            <span class="minimenus-item pink-badge" style="margin-left: 20px;">{$LATEST_VERSION_DATE}</span>
          </p>
          <p class="pwg-activities latest-news"><i class="orange-text icon-pwg" style="width: 20px;"></i>
            <a href="{$PORG_ROOT}{$URL.product_update}#updatesSection" class="dark-text non-decorated-text country-testimonial">{$LATEST_NEWS_TITLE}</a>
            <span class="minimenus-item orange-badge" style="margin-left: 20px;">{$LATEST_NEWS_DATE}</span>
          </p>
          <p class="pwg-activities latest-code-change"><i class="green-text icon-code-branch"></i>
            <a href="{$PORG_ROOT}{$URL.product_update}#updatesSection" class="dark-text non-decorated-text country-testimonial">{'Latest activity'|translate}</a>
            <span class="minimenus-item green-badge" style="margin-left: 20px;">{$LATEST_CODE_ACTIVTY}</span>
          </p>
        </div>

      </div>
    </div>
  </section>

  <section class="container" id="ways-to-use">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-md-10 text-center mb-3">
            <h2 class="h2-top-page text-center mb-2">{'porg_home_ways_to_use_title'|translate}</h2>
            <p class="sub-h2-top-page text-center dark-text">{'porg_home_ways_to_use_desc'|translate}</p>
          </div>
          <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-l">
            <div class="way-to-use-card w-100 d-flex flex-column">
              <div class="icon-wrapper pink-bg mx-auto">
                <i class="pink-text icon-cloud-oneplace"></i>
              </div>
              <h3 class="text-center">Piwigo {'Cloud'|translate}</h3>
              <p class="text-center sub-h3 pink-text">{'porg_home_ways_to_use_cloud_subtitle'|translate}</p>
              <ul class="way-to-use-list">
                <li>{'porg_home_ways_to_use_cloud_li_1'|translate}</li>
                <li>{'porg_home_ways_to_use_cloud_li_2'|translate}</li>
                <li>{'porg_home_ways_to_use_cloud_li_3'|translate}</li>
                <li>{'porg_home_ways_to_use_cloud_li_4'|translate}</li>
                <li>{'porg_home_ways_to_use_cloud_li_5'|translate}</li>
              </ul>
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_home_btn1'|translate} href="{$PORG_ROOT}{$URL.signup}" class='mt-auto'}
            </div>
          </div>
          <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-r">
            <div class="way-to-use-card w-100 d-flex flex-column">
              <div class="icon-wrapper orange-bg mx-auto">
                <i class="orange-text icon-self-host"></i>
              </div>
              <h3 class="text-center">Piwigo {'Self-hosted'|translate}</h3>
              <p class="text-center sub-h3 orange-text">{'porg_home_ways_to_use_self_hosted_subtitle'|translate}</p>
              <ul class="way-to-use-list">
                <li>{'porg_home_ways_to_use_self_hosted_li_1'|translate}</li>
                <li>{'porg_home_ways_to_use_self_hosted_li_2'|translate}</li>
                <li>{'porg_home_ways_to_use_self_hosted_li_3'|translate}</li>
                <li>{'porg_home_ways_to_use_self_hosted_li_4'|translate}</li>
                <li>{'porg_home_ways_to_use_self_hosted_li_5'|translate}</li>
              </ul>
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label="{'Download'|translate} Piwigo" href="#ways-to-use" class='mt-auto'}
            </div>
          </div>
          <div class="col-12 text-center d-flex">
            <div class="end-way-to-use-card w-100">
              <div class="col-md-7 text-center d-flex mx-auto mb-0">
                <p class="text-center  mb-0">{'porg_home_ways_to_use_end_box'|translate}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="container container-road">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-md-6 d-flex flex-column justify-content-center ways-to-use-card-col-l">
            <h2 class="mb-4">{'porg_home_road_title'|translate}</h2>
            <p class="mb-4">{'porg_home_road_desc'|translate}</p>
            <div class="checklist">
              <div class="checklist-item d-flex align-items-center">
                <div class="check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_road_li_1'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_road_li_2'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_road_li_3'|translate}</p>
                </div>
              </div>
            </div>
            <p class="text-center pink-text">{'porg_home_road_end'|translate}</p>
          </div>
          <div class="col-md-6 responsive-image d-flex flex-column justify-content-center ways-to-use-card-col-r">
            <img class="img-fluid" src="{$PORG_ROOT_URL}images/home/road.png" alt="Piwigo screenshot">
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="container container-sovereignty">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <h2 class="mb-4 text-center">{'porg_home_sovereignty_title'|translate}</h2>
          <p class="mb-5 text-center">{'porg_home_sovereignty_desc'|translate}</p>
          <div class="feature-benefits-strip mx-0" style="max-width: none; position: relative;">
            <img src="{$PORG_ROOT_URL}images/{$HOST_BADGE}" class="badge-host">
            <div class="feature-benefit-item">
              <span class="feature-benefit-icon green-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
              <p class="feature-benefit-text mb-0 li-centered">{'porg_home_sovereignty_li_1'|translate}</p>
            </div>
            <div class="feature-benefit-item">
              <span class="feature-benefit-icon green-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
              <p class="feature-benefit-text mb-0 li-centered">{'porg_home_sovereignty_li_2'|translate}</p>
            </div>
            <div class="feature-benefit-item">
              <span class="feature-benefit-icon green-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
              <p class="feature-benefit-text mb-0 li-centered">{'porg_home_sovereignty_li_3'|translate}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="container container-features">
    <div class="row text-center features-content justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-md-10 text-center mb-3">
            <h2 class="text-center mb-4">{'porg_home_features_title'|translate}</h2>
          </div>
          <div class="col-12 d-flex justify-content-center flex-wrap mini-menu-buttons" style="gap: 20px;">
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=true label={'Upload & Import'|translate}}
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=false label={'Organize your media'|translate}}
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=false label={'Search & Find'|translate}}
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=false label={'Share & Collaborate'|translate}}
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=false label={'Customize & Extend'|translate}}
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=false label={'Measure & Monitor'|translate}}
            {include file='template/include/sub_menu_items/mini_menu_item.tpl' is_selected=false label={'Security & Privacy'|translate}}
          </div>
          <div class="col-12 text-center d-flex justify-content-center feature-card-panel-list">
            <div class="feature-card-panel is-active" data-feature-panel="0">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">1. {'Import & Centralize'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_upload_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_upload_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#upload"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/features/import/upload.png" alt="Feature 1">
                </div>
              </div>
            </div>
            <div class="feature-card-panel" data-feature-panel="1">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">2. {'Organize your media'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_organize_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_organize_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#organize"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/home/organize.png" alt="Feature 2">
                </div>
              </div>
            </div>
            <div class="feature-card-panel" data-feature-panel="2">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">3. {'Search & Find'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_search_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_search_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#search"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/features/search/keyword.png" alt="Feature 3">
                </div>
              </div>
            </div>
            <div class="feature-card-panel" data-feature-panel="3">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">4. {'Share & Collaborate'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_share_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_share_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#share"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/home/share.png" alt="Feature 4">
                </div>
              </div>
            </div>
            <div class="feature-card-panel" data-feature-panel="4">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">5. {'Customize & Extend'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_customize_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_customize_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#customize"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/features/customize/themes.png" alt="Feature 5">
                </div>
              </div>
            </div>
            <div class="feature-card-panel" data-feature-panel="5">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">6. {'Measure & Monitor'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_measure_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_measure_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#measure"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/home/measure.png" alt="Feature 6">
                </div>
              </div>
            </div>
            <div class="feature-card-panel" data-feature-panel="6">
              <div class="feature-card row w-100">
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <h3 class="mb-1">7. {'Security & Privacy'|translate}</h3>
                  <p class="sub-h3 pink-text mb-0">{'porg_home_features_security_subtitle'|translate}</p>
                  <p class="p-boxed feature-card-desc">{'porg_home_features_security_desc'|translate}</p>
                  {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Explore solution →'|translate} href="{$PORG_ROOT}{$URL.features}#security"}
                </div>
                <div class="col-md-6 justify-content-center d-flex flex-column">
                  <img src="{$PORG_ROOT_URL}images/home/security.png" alt="Feature 7" style="margin-right: 25px;">
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 d-flex justify-content-center feature-card-pagination" aria-label="Feature cards pagination">
            <button type="button" class="feature-card-dot is-active" data-feature-target="0" aria-label="Show feature card 1"></button>
            <button type="button" class="feature-card-dot" data-feature-target="1" aria-label="Show feature card 2"></button>
            <button type="button" class="feature-card-dot" data-feature-target="2" aria-label="Show feature card 3"></button>
            <button type="button" class="feature-card-dot" data-feature-target="3" aria-label="Show feature card 4"></button>
            <button type="button" class="feature-card-dot" data-feature-target="4" aria-label="Show feature card 5"></button>
            <button type="button" class="feature-card-dot" data-feature-target="5" aria-label="Show feature card 6"></button>
            <button type="button" class="feature-card-dot" data-feature-target="6" aria-label="Show feature card 7"></button>
          </div>
        </div>
      </div>
  </section>

  {literal}
    <script type="text/javascript">
      document.addEventListener('DOMContentLoaded', function() {

        var menuButtons = document.querySelectorAll('.mini-menu-buttons .minimenu_item');
        var PaginationButtons = document.querySelectorAll('.feature-card-pagination .feature-card-dot');
        var featurePanels = document.querySelectorAll('.feature-card-panel');

        if (!menuButtons.length || !featurePanels.length) {
          return;
        }

        function setActivePanel(index) {
          featurePanels.forEach(function(panel, panelIndex) {
            panel.classList.toggle('is-active', panelIndex === index);
          });

          menuButtons.forEach(function(button, buttonIndex) {
            button.classList.toggle('selected_minimenu_item', buttonIndex === index);
          });

          PaginationButtons.forEach(function(button, buttonIndex) {
            button.classList.toggle('is-active', buttonIndex === index);
          });
        }

        setActivePanel(0);

        menuButtons.forEach(function(button, index) {
          button.addEventListener('click', function(event) {
            event.preventDefault();
            setActivePanel(index);
          });
        });
        PaginationButtons.forEach(function(button, index) {
          button.addEventListener('click', function(event) {
            event.preventDefault();
            setActivePanel(index);
          });
        });

        const titleItems = document.querySelectorAll('.why-title-item');
        const cardItems = document.querySelectorAll('.why-cards-col .test-card');
        const titlesStack = document.querySelector('.why-titles-stack');
        const titlesCol = document.querySelector('.why-titles-col');

        if (!titleItems.length || !cardItems.length || !titlesStack || !titlesCol) return;

        function handlePositions() {
          const cardsCol = document.querySelector('.why-cards-col');

          if (!cardsCol) {
            return;
          }

          // titlesStack.style.height = (cardsCol.offsetHeight + 400) + 'px';

          const scrollTop = window.scrollY;
          const navbarHeight = 40;
          const titleStepHeight = 90;

          const stackRect = titlesStack.getBoundingClientRect();
          const stackTopDoc = stackRect.top + scrollTop;
          const stackHeight = cardsCol.offsetHeight;

          cardItems.forEach(function(card, index) {
            const cardTopDoc = card.getBoundingClientRect().top + scrollTop;

            const naturalTop = cardTopDoc - stackTopDoc + 40;
            const stickyTopInStack = scrollTop - stackTopDoc + navbarHeight + (index * titleStepHeight);
            const maxTopInStack = stackHeight - ((titleItems.length - index) * titleStepHeight) - 60;

            let targetTop = Math.max(naturalTop, stickyTopInStack);
            targetTop = Math.min(targetTop, maxTopInStack);

            titleItems[index].style.top = targetTop + 'px';

            if (scrollTop > cardTopDoc - window.innerHeight) {
              titleItems[index].style.visibility = 'visible';
            } else if (index > 0) {
              titleItems[index].style.visibility = 'hidden';
            }
          });
        }

        setTimeout(handlePositions, 100);
        window.addEventListener('scroll', handlePositions);
        window.addEventListener('resize', handlePositions);
      });
    </script>
  {/literal}


  <section class="container container-who">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-md-6 d-flex flex-column justify-content-center ways-to-use-card-col-l">
            <h2 class="mb-3">{'porg_home_who_title'|translate}</h2>
            <p class=" p-strong mb-3">{'porg_home_who_desc'|translate}</p>
            <div class="checklist mb-3 gap-0">
              <div class="checklist-item d-flex align-items-center">
                <div class="small-check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_who_li_1'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="small-check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_who_li_2'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="small-check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_who_li_3'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="small-check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_who_li_4'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="small-check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_who_li_5'|translate}</p>
                </div>
              </div>
              <div class="checklist-item d-flex align-items-center">
                <div class="small-check-icon">
                  <i class="icon-check-1"></i>
                </div>
                <div class="check-text">
                  <p class="mb-0">{'porg_home_who_li_6'|translate}</p>
                </div>
              </div>
            </div>
            <p class="text-center pink-text">{'porg_home_who_end'|translate}</p>
          </div>
          <div class="col-md-6 responsive-image d-flex flex-column justify-content-center ways-to-use-card-col-r">
            <img class="img-fluid" src="{$PORG_ROOT_URL}images/home/who.png" alt="Piwigo screenshot">
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="carousel">
    <div class="container-fluid px-0">
      <div class="logos-marquee-wrapper">
        <div class="logos-marquee-track">

          {foreach $home_logos as $logo}
            <div class="logos-marquee-item">
              <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </div>

          {/foreach}

          {foreach $home_logos as $logo}
            <div class="logos-marquee-item">
              <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </div>

          {/foreach}
        </div>
      </div>
    </div>
  </section>

  <section class="container why-container">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-md-10 text-center mb-3">
            <h2 class="text-center mb-2">{'porg_home_why_title'|translate}</h2>
            <p class="text-center">{'porg_home_why_desc'|translate}</p>
          </div>
          <div class="why-items-list">
            <div class="row why-split-row">
              <div class="col-md-6 why-titles-col">
                <div class="why-titles-stack">
                  <div class="why-title-item" style="--item-index: 0;">
                    <p class="number-typo main-green-text">01.</p>
                    <h3>{'porg_home_why_li_1_title'|translate}</h3>
                  </div>
                  <div class="why-title-item" style="--item-index: 1;">
                    <p class="number-typo main-green-text">02.</p>
                    <h3>{'porg_home_why_li_2_title'|translate}</h3>
                  </div>
                  <div class="why-title-item" style="--item-index: 2;">
                    <p class="number-typo main-green-text">03.</p>
                    <h3>{'porg_home_why_li_3_title'|translate}</h3>
                  </div>
                  <div class="why-title-item" style="--item-index: 3;">
                    <p class="number-typo main-green-text">04.</p>
                    <h3>{'porg_home_why_li_4_title'|translate}</h3>
                  </div>
                  <div class="why-title-item" style="--item-index: 4;">
                    <p class="number-typo main-green-text">05.</p>
                    <h3>{'porg_home_why_li_5_title'|translate}</h3>
                  </div>
                </div>
              </div>
              <div class="col-md-6 why-cards-col">
                <div class="test-card mb-4"></div>
                <div class="test-card mb-4"></div>
                <div class="test-card mb-4"></div>
                <div class="test-card mb-4"></div>
                <div class="test-card mb-4"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </section>


  <section class="container container-opensource">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-md-6 responsive-image d-flex flex-column justify-content-center ways-to-use-card-col-l">
            <img class="img-fluid" src="{$PORG_ROOT_URL}images/home/opensource.png" alt="Piwigo screenshot">
          </div>
          <div class="col-md-6 d-flex flex-column justify-content-center ways-to-use-card-col-r">
            <h2 class="mb-3">{'porg_home_opensource_title'|translate}</h2>
            <p class="mb-4">{'porg_home_opensource_desc'|translate}</p>
            <div class="btn-row">
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_home_opensource_btn1'|translate} href="{$PORG_ROOT}{$URL.signup}"}
              {include file='template/include/buttons/button.tpl' variant='cta_secondary' label={'porg_home_opensource_btn2'|translate} href="#ways-to-use"}
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  
  <section class="container mb-5">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 text-center justify-content-center">
        {include file='template/include/card/get_started_cta.tpl'}
      </div>
    </div>
  </section>






</div>