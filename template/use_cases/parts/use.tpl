<section class="container use-container" id="ways-to-use">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <div class="row justify-content-center">
        <div class="col-md-8 text-center mb-4">
          <h2 class="text-center mb-0">{$title}</h2>
        </div>
        <div class="way-to-use-card use-card w-100 row align-items-center">
          <div class="col-lg-6 text-center text-lg-start">
            <img class="img-fluid w-100 rounded-md-4 rounded-3 d-lg-none d-block" src="{$img_src}" alt="{$title}" style="object-fit: cover; margin-bottom: 20px; height: 210px;">
            <h3 class="mb-4">{$description1}</h3>
            <p class="mb-4">{$description2}</p>
            {include file='template/include/buttons/button.tpl' variant='cta_primary' label={$btn_text}
            href={$btn_link}}
          </div>
          <div class="col-lg-6 h-100 d-lg-block d-none">
            <img class="img-fluid h-100 w-100 rounded-4" src="{$img_src}" alt="{$title}"
              style="object-fit: cover;">
          </div>
        </div>
      </div>
    </div>
</section>