<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/get_involved.css">

<section class="container container-toppage">
  <div class="row text-center justify-content-center">
    <div class="col-md-6 d-flex flex-column justify-content-center users-header-text">
      <h1 class="mb-5">{'porg_get_involved_title'|translate}</h1>
      <p>{'porg_get_involved_desc1'|translate}<br><br><span
          class="strong-text">{'porg_get_involved_desc2'|translate}</span></p>
    </div>
    <div class="col-md-6 responsive-image d-flex flex-column justify-content-center users-header-image">
      <img class="img-fluid mt-md-0 mt-4 pt-1"
        src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/08/04/20260804145616-469e8af4-la.webp"
        alt="Piwigo screenshot">
    </div>
  </div>
</section>

<section class="container-open">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-9">
        <div class="grey-box">
          <h2 class="mb-3 text-center">{'porg_get_involved_help_title'|translate}</h2>
          <p class="text-center">{'porg_get_involved_help_desc'|translate}</p>
          <div class="row help-key-points">
            <div class="col-md-6">
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_help_li1'|translate}</span>
              </p>
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_help_li2'|translate}</span>
              </p>
            </div>
            <div class="col-md-6">
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_help_li3'|translate}</span>
              </p>
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_help_li4'|translate}</span>
              </p>
            </div>
          </div>
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label="{'porg_get_involved_help_btn'|translate}"
          href="{$EXT_URL.forum}" target="_blank"}
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-trans">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-10">
        <div class="row align-items-center g-3">

          <div class="col-12 col-md-6 ps-0 pe-0 pe-md-4">
            <div class="feature-copy">
              <h2 class="feature-title mb-4 text-start">{'porg_get_involved_trans_title'|translate}</h2>
              <p class="feature-description feature-description-desktop mb-4 text-start">
                {'porg_get_involved_trans_desc'|translate}</p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_trans_li1'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_trans_li2'|translate}</span>
              </p>

              <div class="d-flex justify-content-start mt-4">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_orange' label="{'porg_get_involved_trans_btn'|translate}"
                href="//piwigo.org/translate" class="text-start px-4" target="_blank"}
              </div>
            </div>
          </div>

          <div class="col-12 col-md-6 mt-0 pe-0 ps-0 ps-md-4">
            <div class="feature-image-container">
              <img
                src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/08/04/20260804155124-642c587a-la.webp"
                class=" feature-image img-fluid mt-5 mt-md-0" alt="Piwigo translation tool screenshot">
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-dev">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-10">
        <div class="row align-items-center g-3">

          <div class="col-12 col-md-6 order-md-2 pe-0 ps-0 ps-md-4">
            <div class="feature-copy">
              <h2 class="feature-title mb-4 text-start">{'porg_get_involved_dev_title'|translate}</h2>
              <p class="feature-description feature-description-desktop mb-4 text-start">
                {'porg_get_involved_dev_desc'|translate}</p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_dev_li1'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_dev_li2'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_dev_li3'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_dev_li4'|translate}</span>
              </p>

              <div class="d-flex justify-content-start mt-4">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_orange' label="{'porg_get_involved_dev_btn'|translate}"
                href="https://github.com/Piwigo/Piwigo/wiki" class="text-start px-4" target="_blank"}
              </div>
            </div>
          </div>

          <div class="col-12 col-md-6 mt-0 ps-0 pe-0 pe-md-4">
            <div class="feature-image-container">
              <img
                src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/08/04/20260804162244-2f09cc34-la.webp"
                class=" feature-image img-fluid mt-5 mt-md-0" alt="Piwigo translation tool screenshot">
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-users">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-10">
        <div class="row align-items-center g-3">

          <div class="col-12 col-md-6 ps-0 pe-0 pe-md-4">
            <div class="feature-copy">
              <h2 class="feature-title mb-4 text-start">{'porg_get_involved_users_title'|translate}</h2>
              <p class="feature-description feature-description-desktop mb-4 text-start">
                {'porg_get_involved_users_desc'|translate}</p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_users_li1'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_users_li2'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_users_li3'|translate}</span>
              </p>

              <p class="trans-list-item"><span class="icon-cube"><i class="icon-check-1"></i></span>
                <span>{'porg_get_involved_users_li4'|translate}</span>
              </p>

              <div class="d-flex justify-content-start mt-4">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_orange' label="{'porg_get_involved_users_btn'|translate}"
                href="{$EXT_URL.forum}" class="text-start px-4" target="_blank"}
              </div>
            </div>
          </div>

          <div class="col-12 col-md-6 mt-0 pe-0 ps-0 ps-md-4">
            <div class="feature-image-container">
              <img
                src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/08/04/20260804163017-3e09437b-la.webp"
                class=" feature-image img-fluid mt-5 mt-md-0" alt="Piwigo translation tool screenshot">
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-finance">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-10">
        <div class="row align-items-center g-3">

          <div class="col-12 col-md-6 order-md-2 pe-0 ps-0 ps-md-4">
            <div class="feature-copy">
              <h2 class="feature-title mb-4 text-start">{'porg_get_involved_finance_title'|translate}</h2>
              <p class="feature-description feature-description-desktop mb-4 text-start">
                {'porg_get_involved_finance_desc'|translate}</p>

              <div class="d-flex justify-content-start mt-4 gap-4">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_orange' label="{'porg_get_involved_finance_btn1'|translate}"
                href="{$PORG_ROOT}{$URL.contact}{$URL_PARAM_SEPARATOR}topic_id=donation#form" class="text-start px-4"}
                {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label="{'porg_get_involved_finance_btn2'|translate}"
                href="{$PORG_ROOT}{$URL.pricing}" class="text-start px-4"}
              </div>
            </div>
          </div>

          <div class="col-12 col-md-6 mt-0 ps-0 pe-0 pe-md-4">
            <div class="feature-image-container">
              <img
                src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/08/05/20260805095446-63d715fd-la.webp"
                class=" feature-image img-fluid mt-5 mt-md-0" alt="Piwigo translation tool screenshot">
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-more">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-9">
        <div class="grey-box">
          <h2 class="mb-3 text-center">{'porg_get_involved_more_title'|translate}</h2>
          <p class="text-center">{'porg_get_involved_more_desc'|translate}</p>

          <div class="row help-key-points mb-0">

            <div class="col-md-6">
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_more_li1'|translate}</span>
              </p>
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_more_li2'|translate}</span>
              </p>
            </div>
            <div class="col-md-6">
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_more_li3'|translate}</span>
              </p>
              <p class="help-list-item"><i class="icon-check-1"></i>
                <span>{'porg_get_involved_more_li4'|translate}</span>
              </p>
            </div>

            <p class="text-center mb-0 mt-3">{'porg_get_involved_more_desc2'|translate}</p>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-flower container align-items-center d-flex justify-content-center">
  <div class="container-flower-part col-md-10">
    <div class="glass-cardv2 glass-card1 d-flex flex-column align-items-center">
      <h2 class="mb-0">{'porg_get_involved_flower_title'|translate}</h2>
    </div>
    <div class="flower-container-img">
      <img class="flower-img" src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/08/05/20260805151944-a1af3c5c-xx.webp" class="img-fluid">
    </div>
    <div class="glass-cardv2 glass-card2 d-flex flex-column align-items-center">
      <p class="mb-0">{'porg_get_involved_flower_desc'|translate}</p>
    </div>
  </div>
</section>