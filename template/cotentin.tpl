<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/release16.css">

<section class="container cases-header">
  <div class="row justify-content-center">
    <div class="col-md-5"></div>
    <div class="col-md-2 col-6 text-center mb-5">
      <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/08/20260708095125-ebc291f5-me.webp" alt="Logo Cotentin" class="img-fluid">
    </div>
    <div class="col-md-5"></div>
    <div class="col-md-10 text-center">
      <h1 class="text-center">{'porg_cases_cotentin_title'|translate}</h1>
    </div>
  </div>
</section>

<section class="client-full-width-banner"></section>

<a href="#release_menu" class="btn-back-to-menu" title="go to menu"></a>

<section class="container mb-5">
  <div class="row version-16-content pt-5">
    <div class="col-md-4 pe-md-5">
      <div class="sidebar-sticky">
        <div class="version-16-nav-card" id="release_menu">

          <h2 class="country-testimonial nav-card-title">{'On this page'|translate}</h2>

          <nav class="nav flex-column mt-3 version-16-nav-list" aria-label="On this page">
            <a class="nav-link minimenus-item icon-flash-1"
              href="#challenge">{'The challenge'|translate}</a>
            <a class="nav-link minimenus-item icon-pwg"
              href="#choice">{'The choice of Piwigo'|translate}</a>
            <a class="nav-link minimenus-item icon-star-1"
              href="#benefits">{'Benefits'|translate}</a>
          </nav>

        </div>

        <div class="trial-card text-center">

          <h3 class="h3-mobile text-center mb-1">{'porg_cases_start_title'|translate}</h3>
          <p class="text-center mb-5">{'porg_cases_start_description'|translate}</p>
          {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'Start your free trial'|translate} href="{$PORG_ROOT}{$URL.signup}"}

        </div>
      </div>
    </div>
    <div class="col-md-8">

      <p class="mb-5">{'porg_cases_cotentin_description'|translate}</p>

      <div class="section-part justify-content-center text-center" id="challenge">
        <h2 class="mb-4">{'porg_cases_cotentin_challenge_title'|translate}</h2>

        <p class="mb-5">{'porg_cases_cotentin_challenge_description'|translate}</p>

        <div class="row g-2">
          <div class="col-6">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/08/20260708095126-666611cd-me.webp" class="mb-0 w-100 h-100 object-fit-cover rounded">
          </div>
          <div class="col-6 d-flex flex-column gap-2">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/08/20260708095125-f5a51fd3-me.webp" class="mb-0 w-100 object-fit-cover rounded" style="height: 50%">
            <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/08/20260708095125-60b6feee-me.webp" class="mb-0 w-100 object-fit-cover rounded" style="height: 50%">
          </div>
        </div>

      </div>

      <div class="section-framed-container" id="choice">
        <h2 class="mb-4">{'The choice of Piwigo'|translate}</h2>

        <p class="mb-5">{'porg_cases_cotentin_choice_description'|translate}</p>

        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/08/20260708095124-81967142-la.webp" class="mb-0 w-100 object-fit-cover rounded">

      </div>

      <div id="benefits" class="section-part technical-features">
        <h2 class="mb-4">{'Benefits'|translate}</h2>

        <p class="mb-5">{'porg_cases_cotentin_benefits_description'|translate}</p>
        <div class="testi-card">
          <i class="icon-quote main-green-text"></i>
          <p class="p-testimonial testi-text mb-0">{'porg_cases_cotentin_benefits_text'|translate}</p>
          <div class="testi-footer">

            <p class="name-testimonial mb-0">Christine Semilly-Lagalle <span class="p-testimonial testi-role mb-0">{'porg_cases_cotentin_benefits_person'|translate}</span></p>
            <a href="http://www.encotentin.fr" target="_blank" rel="noopener noreferrer" class="testi-author-link sector-testimonial pink-text">{'porg_cases_cotentin_benefits_structure'|translate}<i class="icon-ext1 secondary-pink-text ms-1"></i><i class="icon-ext2 secondary-pink-text ms-1"></i></a>

          </div>
        </div>
      </div>

    </div>
</section>

<section class="container bottom-section">
  <div class="row justify-content-center align-items-stretch">
    <h3 class="mb-4">{'More case studies'|translate}</h3>
    <div class="row px-0">

      <div class="col-lg-3 col-md-6 mb-4 d-flex">
        <div class="case-card h-100 d-flex flex-column">
          <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105822-51222a00-me.jpg" class="card-img-top">
          <div class="card-body d-flex flex-column">
            <h3 class="card-title main-menu-item-title my-4">{'porg_cases1_title'|translate}</h3>
            <div class="mt-auto pt-2">
              {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.wessex}" class="card-btn w-100"}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 d-flex">
        <div class="case-card h-100 d-flex flex-column">
          <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105711-334521c6-me.png" class="card-img-top">
          <div class="card-body d-flex flex-column">
            <h3 class="card-title main-menu-item-title my-4">{'porg_cases2_title'|translate}</h3>
            <div class="mt-auto pt-2">
              {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.indre}" class="card-btn w-100"}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 d-flex">
        <div class="case-card h-100 d-flex flex-column">
          <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/09/20260709111938-507d82ee-me.webp" class="card-img-top">
          <div class="card-body d-flex flex-column">
            <h3 class="card-title main-menu-item-title my-4">{'porg_cases3_title'|translate}</h3>
            <div class="mt-auto pt-2">
              {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.icam}" class="card-btn w-100"}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 d-flex">
        <div class="case-card h-100 d-flex flex-column">
          <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2022/05/11/20220511105653-ba73b387-me.png" class="card-img-top">
          <div class="card-body d-flex flex-column">
            <h3 class="card-title main-menu-item-title my-4">{'porg_cases4_title'|translate}</h3>
            <div class="mt-auto pt-2">
              {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Read customer story'|translate} href="{$PORG_ROOT}{$URL.ect}" class="card-btn w-100"}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="{$PORG_ROOT_URL_PLUGINS}js/cases.js"></script>