<section class="container container-features">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-10 text-center justify-content-center cloud-features">
      <div class="row justify-content-center g-3 mb-3 stat px-2">

        <div class="col-lg-4">
          <div class="facts-card">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo Cloud feature 1">
            <h2 class="h2-top-page text-center">{'cloud_f1_title'|translate}</h2>
            <p class="text-center">{'cloud_f1_desc'|translate}</p>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="facts-card">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo Cloud feature 2">
            <h2 class="h2-top-page text-center">{'cloud_f2_title'|translate}</h2>
            <p class="text-center">{'cloud_f2_desc'|translate}</p>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="facts-card">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo Cloud feature 3">
            <h2 class="h2-top-page text-center">{'cloud_f3_title'|translate}</h2>
            <p class="text-center">{'cloud_f3_desc'|translate}</p>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="facts-card">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo Cloud feature 4">
            <h2 class="h2-top-page text-center">{'cloud_f4_title'|translate}</h2>
            <p class="text-center">{'cloud_f4_desc'|translate}</p>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="facts-card">
            <img src="{$PORG_ROOT_URL}images\product_updates\12\piwigo12-features-matrix.webp" class="img-fluid mb-3" alt="Piwigo Cloud feature 5">
            <h2 class="h2-top-page text-center">{'cloud_f5_title'|translate}</h2>
            <p class="text-center">{'cloud_f5_desc'|translate}</p>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>

<section class="container container-infrastructure">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <h2 class="mb-5 text-center">{'cloud_infrastructure_title'|translate}</h2>

      <div class="d-flex flex-wrap justify-content-center gap-4 col-md-11 mb-5">
        <div class="release-badge d-flex align-items-center">
          <div class="small-check-icon">
            <i class="icon-check-1"></i>
          </div>
          <div class="check-text">
            <p class="mb-0">{'cloud_infrastructure_badge1'|translate}</p>
          </div>
        </div>
        <div class="release-badge d-flex align-items-center">
          <div class="small-check-icon">
            <i class="icon-check-1"></i>
          </div>
          <div class="check-text">
            <p class="mb-0">{'cloud_infrastructure_badge2'|translate}</p>
          </div>
        </div>
        <div class="release-badge d-flex align-items-center">
          <div class="small-check-icon">
            <i class="icon-check-1"></i>
          </div>
          <div class="check-text">
            <p class="mb-0">{'cloud_infrastructure_badge3'|translate}</p>
          </div>
        </div>
        <div class="release-badge d-flex align-items-center">
          <div class="small-check-icon">
            <i class="icon-check-1"></i>
          </div>
          <div class="check-text">
            <p class="mb-0">{'cloud_infrastructure_badge4'|translate}</p>
          </div>
        </div>
        <div class="release-badge d-flex align-items-center">
          <div class="small-check-icon">
            <i class="icon-check-1"></i>
          </div>
          <div class="check-text">
            <p class="mb-0">{'cloud_infrastructure_badge5'|translate}</p>
          </div>
        </div>

      </div>
      {include file="template/include/card/global_text_image.tpl" desc={'cloud_infrastructure_desc'|translate} image="{$PORG_ROOT_URL}images/features/security/hostingeu.webp" }
    </div>
  </div>
</section>

<section class="container container-trusted">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <h2 class="mb-5 text-center">{'cloud_trusted_title'|translate}</h2>
      <div class="row justify-content-center g-5 px-2 cloud-trusted">

        <div class="col-6 mt-0">
          <h3 class="pink-text text-center ms-3">   {'cloud_trusted_badge1'|translate}</h3>
        </div>

        <div class="col-6 mt-0">
          <h3 class="pink-text text-center me-3">{'cloud_trusted_badge2'|translate}   </h3>
        </div>

      </div>
    </div>
  </div>
</section>

<section class="contact-content carousel-container">
  <div class="container-fluid px-0">

    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-inner">
        <div class="logos-marquee-track">
          {foreach $cloud_logos as $logo}
            <div class="logos-marquee-item">
              <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </div>
          {/foreach}
          {* duplicate so it doesn't end *}
          {foreach $cloud_logos as $logo}
            <div class="logos-marquee-item">
              <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </div>
          {/foreach}
        </div>
      </div>
    </div>

    <div class="btn-container text-center mt-4">
      {include
      file='template/include/buttons/button.tpl'
      variant='menu_btn_green'
      href="{$PORG_ROOT}{$URL.users}"
      label={'cloud_trusted_btn'|translate}
      }
    </div>
  </div>
</section>