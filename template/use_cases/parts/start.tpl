<section class="container container-features">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-9 text-center justify-content-center">
      <div class="challenge-card row justify-content-center">
        <div class="col-12 col-md-10 justify-content-center text-center">
          <h2 class="text-center mb-0">{$title}</h2>
          <p class="text-center mb-4">{$description}</p>
          <div class="d-flex justify-content-center">
            {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'use cases header btn'|translate} href="{$PORG_ROOT}{$URL.signup}"}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>