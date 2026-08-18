<section class="get-started-hero py-4 py-md-5">
  <div class="container cta2-copy">
    <div class="row align-items-stretch">
      <div class="col-12 col-md-5">
        <div class="get-started-copy d-flex flex-column pe-md-2 ps-0">
          <h2 class="mb-4 get-started-title">{'Get started CTA 2 title part 1'|translate}
            <span class="highlight-wrap m-0 p-0">
              <img class="highlight-circle" src="{$PORG_ROOT_URL}images/get_started/circle.svg" alt="" style="width: 120%;">
              <span class="highlight">{'Get started CTA 2 title part 2'|translate}</span>
            </span>
          </h2>
          <p class="mb-4 mb-md-5">
            {'Get started CTA 2 description'|translate}
          </p>

          <div class="get-started-mobile-image d-md-none mb-4">
            <img class="img-fluid" src="{$PORG_ROOT_URL}images/get_started/race.webp" alt="Rocket">
          </div>

          <div class="get-started-buttons cta2-buttons d-flex flex-column gap-2 gap-md-3">
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Get started CTA 2 btn 1'|translate}
            href="{$PORG_ROOT}{$URL.pricing}"}
            {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Get started CTA 2 btn 2'|translate}
            href="{$PORG_ROOT}{$URL.pricing}{$URL_PARAM_SEPARATOR}plan=self_hosted" class="px-4"}
          </div>
        </div>
      </div>

      <div class="col-12 col-md-7 d-none d-md-flex">
        <img class="img-rocket w-100 h-100" src="{$PORG_ROOT_URL}images/get_started/race.webp" alt="Rocket">
      </div>
    </div>
  </div>
</section>