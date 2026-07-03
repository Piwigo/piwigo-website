<section class="container" id="ways-to-use">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-8 text-center mb-3">
          <h2 class="text-center mb-0">{$title}</h2>
          <p class="text-center">{$description}</p>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-l">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <div class="icon-wrapper pink-bg mx-auto">
              <i class="pink-text icon-cloud-oneplace"></i>
            </div>
            <h3 class="text-center">Piwigo {'Cloud'|translate}</h3>
            <p class="text-center sub-h3 pink-text mb-0">{$cloud_description}</p>
          </div>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-r">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <div class="icon-wrapper orange-bg mx-auto">
              <i class="orange-text icon-self-host"></i>
            </div>
            <h3 class="text-center">Piwigo {'Self-hosted'|translate}</h3>
            <p class="text-center sub-h3 orange-text mb-0">{$self_hosted_description}</p>
          </div>
        </div>
        <div class="text-center mt-4">
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Choose your setup'|translate} href="{$PORG_ROOT}{$URL.product}"}
        </div>
      </div>
    </div>
  </div>
</section>