<section class="container container-features">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-9 text-center justify-content-center">
      <div class="challenge-card row justify-content-center">
        <div class="col-12 col-md-10 justify-content-center text-center">
          <h3 class="text-center">{$title}</h3>
          <p class="text-center">{$description}</p>
          <div class="d-flex justify-content-center">
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={$btn_text} href={$btn_link}}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>