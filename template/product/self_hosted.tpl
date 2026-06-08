<section class="container container-features">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-10 text-center justify-content-center selfhosted-features">
      <div class="row justify-content-center g-3 mb-3 stat px-2">

        <div class="col-12 col-xl-4">
          <div class="facts-card h-100">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo selfhosted feature 1">
            <h2 class="h2-top-page text-center">{'selfhosted_f1_title'|translate}</h2>
            <p class="text-center">{'selfhosted_f1_desc'|translate}</p>
          </div>
        </div>

        <div class="col-12 col-xl-4">
          <div class="facts-card h-100">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo selfhosted feature 2">
            <h2 class="h2-top-page text-center">{'selfhosted_f2_title'|translate}</h2>
            <p class="text-center">{'selfhosted_f2_desc'|translate}</p>
          </div>
        </div>

        <div class="w-100 d-none d-md-block"></div>

        <div class="col-12 col-xl-4">
          <div class="facts-card h-100">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo selfhosted feature 3">
            <h2 class="h2-top-page text-center">{'selfhosted_f3_title'|translate}</h2>
            <p class="text-center">{'selfhosted_f3_desc'|translate}</p>
          </div>
        </div>

        <div class="col-12 col-xl-4">
          <div class="facts-card h-100">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo selfhosted feature 4">
            <h2 class="h2-top-page text-center">{'selfhosted_f4_title'|translate}</h2>
            <p class="text-center">{'selfhosted_f4_desc'|translate}</p>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>

<section class="short-get-started-cta py-5 py-md-5">
  <div class="container short-get-started-container">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-10 text-center short-get-started-content">
        <h2 class="short-gs-title mb-0 mb-md-4">{'selfhosted-short-cta-title'|translate}</h2>
        <div class="d-flex justify-content-center pb-4">
          {include
            file='template/include/buttons/button.tpl'
            variant='cta_primary_green'
            label={'selfhosted-short-cta-btn'|translate} href="{$PORG_ROOT}{$URL.signup}"
          }
        </div>
        <div class="short-get-started-links justify-content-center">
          <div class="d-flex flex-row short-get-started-links-r1 pb-2 gap-4 justify-content-center">
            <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-doc"></i>{'selfhosted-short-cta-guides'|translate}</p>
            <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-dev"></i>{'selfhosted-short-cta-sys'|translate}</p>
          </div>
          <div class="d-flex flex-row short-get-started-links-r2 pb-2 gap-4 justify-content-center">
            <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-docker"></i>{'selfhosted-short-cta-docker'|translate}</p>
            <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-arrows-cw"></i>{'selfhosted-short-cta-updt'|translate}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

{assign
  var='prof_services'
  value=[
    [ 'icon' => 'icon-icon28', 'title' => 'selfhosted-professional-serv-title1'|translate, 'subtitle' => 'selfhosted-professional-serv-subtitle1'|translate, 'text' => 'selfhosted-professional-serv-text1'|translate, 'list' => [ 'selfhosted-professional-serv-list1-text1'|translate, 'selfhosted-professional-serv-list1-text2'|translate, 'selfhosted-professional-serv-list1-text3'|translate ] ],
    [ 'icon' => 'icon-dev', 'title' => 'selfhosted-professional-serv-title2'|translate, 'subtitle' => 'selfhosted-professional-serv-subtitle2'|translate, 'text' => 'selfhosted-professional-serv-text2'|translate, 'list' => [ 'selfhosted-professional-serv-list2-text1'|translate, 'selfhosted-professional-serv-list2-text2'|translate, 'selfhosted-professional-serv-list2-text3'|translate ] ],
    [ 'icon' => 'icon-support', 'title' => 'selfhosted-professional-serv-title3'|translate, 'subtitle' => 'selfhosted-professional-serv-subtitle3'|translate, 'text' => 'selfhosted-professional-serv-text3'|translate, 'list' => [ 'selfhosted-professional-serv-list3-text1'|translate, 'selfhosted-professional-serv-list3-text2'|translate, 'selfhosted-professional-serv-list3-text3'|translate ] ]
  ]
}

<section class="professional-services-container container gap-5 row justify-content-center text-center">
  <div class="professional-services-header text-center col-md-7 justify-content-center text-center">
    <h2 class="professional-services-title text-center">{'selfhosted-professional-title'|translate}</h2>
    <p class="professional-services-desc-pt1 text-center">{'selfhosted-professional-desc1'|translate}</p>
    <p class="professional-services-desc-pt2 text-center pe-5 ps-5">{'selfhosted-professional-desc2'|translate}</p>
  </div>

  <div class="services-strip">
    {foreach from=$prof_services item=service}
      <div class="professional-service-card">
        <span class="professional-services-icon orange-professional-services-icon">
          <i class="{$service.icon}"></i>
        </span>
        <div class="professional-services-text d-flex flex-column">
          <h4 class="professional-services-title-text text-center">{$service.title}</h4>
          <p class="professional-services-subtittle-text text-center orange-text strong-text">{$service.subtitle}</p>
          <p class="professional-services-text text-start">{$service.text}</p>
          <ul class="professional-services-list ps-3 mb-0">
            {foreach from=$service.list item=item_text}
              <li class="professional-services-text-list">
                <p class="mb-0 p">{$item_text}</p>
              </li>
            {/foreach}
          </ul>
        </div>
      </div>
    {/foreach}
  </div>

  <div class="d-flex justify-content-center pb-4">
    {include
      file='template/include/buttons/button.tpl'
      variant='cta_primary_green'
      label={'selfhosted-professional-serv-btn'|translate} href="{$PORG_ROOT}{$URL.pricing}&plan=self_hosted"
    }
  </div>
</section>

<section class="container container-ecosystem py-5">
  <div class="row features-content justify-content-center align-items-center">
    <div class="col-12 col-xl-11 row gap-lg-5 justify-content-between align-items-center">

      <div class="ecosystem-content-left col-12 col-lg-5 text-center text-lg-start order-1">
        <div class="ecosystem-text d-flex flex-column gap-3 pb-4">
          <h2 class="ecosystem-title fw-bold">{'selfhosted-ecosystem-title'|translate}</h2>
          <p class="ecosystem-description text-muted">{'selfhosted-ecosystem-desc'|translate}</p>
        </div>

        <div class="ecosystem-btn d-flex flex-column justify-content-center justify-content-lg-start align-items-center align-items-lg-start gap-3">
          {include
            file='template/include/buttons/button.tpl'
            variant='menu_btn_green'
            href="#"
            label={'selfhosted-ecosystem-btn1'|translate}
          }
          {include
            file='template/include/buttons/button.tpl'
            variant='menu_btn_blue' 
            href="#"
            label={'selfhosted-ecosystem-btn2'|translate}
          }
        </div>
      </div>

      <div class="ecosystem-content-right col-12 col-lg-6 text-center order-2 mt-4 mt-lg-0">
        <div class="ecosystem-image">
          <img class="img-fluid" src="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.webp" alt="Piwigo Ecosystem" title="Piwigo Ecosystem">
        </div>
      </div>


      <div class="col-12 text-center community-card order-3 mt-5">
        <div class="col-md-6 mx-auto">
          <h3 class="text-center mb-4">{'selfhosted-ecosystem-community-title'|translate}</h3>

          <div class="short-get-started-links justify-content-center">
            <div class="d-flex flex-row flex-wrap short-get-started-links-r1 pb-2 gap-4 row-gap-2 justify-content-center">
              <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-latest-news"></i>{'selfhosted-ecosystem-community-badge1'|translate}</p>
              <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-git"></i>{'selfhosted-ecosystem-community-badge2'|translate}</p>
              <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-contribute"></i>{'selfhosted-ecosystem-community-badge3'|translate}</p>
              <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-extension"></i>{'selfhosted-ecosystem-community-badge4'|translate}</p>
              <p class="short-get-started-links-text mb-0 gap-1 d-flex"><i class="icon-dev"></i>{'selfhosted-ecosystem-community-badge5'|translate}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>