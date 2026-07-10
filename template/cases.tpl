<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/get_started.css">

<div class="mt-5 pt-5">

  <section class="container mb-5">
    <div class="row justify-content-center">
      <div class="col-md-6 text-center">
        <h1 class="text-center">{'porg_cases_title'|translate}</h1>
        <p class="text-center">{'porg_cases_description'|translate}</p>
      </div>
    </div>
  </section>

  <section class="container my-5 px-4">
    <div class="row justify-content-center align-items-stretch">
      <div class="col-md-11 row">

        <div class="col-lg-4 col-md-6 mb-4 d-flex">
          <div class="case-card h-100 d-flex flex-column">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105822-51222a00-me.jpg" class="card-img-top">
            <div class="card-body d-flex flex-column">
              <h3 class="card-title main-menu-item-title">{'porg_cases1_title'|translate}</h3>
              <p class="card-text sub-h3">"{'porg_cases1_description'|translate}"</p>
              <div class="mt-auto">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.wessex}" class="card-btn w-100"}
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 d-flex">
          <div class="case-card h-100 d-flex flex-column">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105711-334521c6-me.png" class="card-img-top">
            <div class="card-body d-flex flex-column">
              <h3 class="card-title main-menu-item-title">{'porg_cases2_title'|translate}</h3>
              <p class="card-text sub-h3">"{'porg_cases2_description'|translate}"</p>
              <div class="mt-auto">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.indre}" class="card-btn w-100"}
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 d-flex">
          <div class="case-card h-100 d-flex flex-column">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/09/20260709111938-507d82ee-me.webp" class="card-img-top">
            <div class="card-body d-flex flex-column">
              <h3 class="card-title main-menu-item-title">{'porg_cases3_title'|translate}</h3>
              <p class="card-text sub-h3"> "{'porg_cases3_description'|translate}"</p>
              <div class="mt-auto">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.icam}" class="card-btn w-100"}
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 d-flex">
          <div class="case-card h-100 d-flex flex-column">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105653-ba73b387-me.png" class="card-img-top">
            <div class="card-body d-flex flex-column">
              <h3 class="card-title main-menu-item-title">{'porg_cases4_title'|translate}</h3>
              <p class="card-text sub-h3">"{'porg_cases4_description'|translate}"</p>
              <div class="mt-auto">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.ect}" class="card-btn w-100"}
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 d-flex">
          <div class="case-card h-100 d-flex flex-column">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105738-69c84770-me.png" class="card-img-top">
            <div class="card-body d-flex flex-column">
              <h3 class="card-title main-menu-item-title">{'porg_cases5_title'|translate}</h3>
              <p class="card-text sub-h3">"{'porg_cases5_description'|translate}"</p>
              <div class="mt-auto">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.cotentin}" class="card-btn w-100"}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<section class="contact-content">
  <div class="container-fluid px-0">
    <div class="container text-center mb-md-5 mb-3">
      <h2 class="h2-top-page text-center">{'Trusted by organizations worldwide'|translate}</h2>
    </div>

    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $home_logos as $logo}
          <div class="logos-marquee-item">
            <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $home_logos as $logo}
          <div class="logos-marquee-item">
            <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</section>

<div class="px-4 px-md-0">
  <section class="container-example">
    <div class="container justify-content-center">
      <div class="row text-center justify-content-center">
        <div class="col-md-10">
          {include file="template/include/card/global_text_image.tpl" btn_green=true title={'porg_cases_example_title'|translate} desc={'porg_cases_example_description'|translate} image="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/07/20260707155757-7221241d-la.webp" btn_text={'Explore our users'|translate} btn_link="{$PORG_ROOT}{$URL.users}"}
        </div>
      </div>
    </div>
  </section>
</div>


<section class="container mb-5 pb-5">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      {include file='template/include/card/get_started_cta.tpl'}
    </div>
  </div>
</section>