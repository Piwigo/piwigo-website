<section class="use-case-header">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 use-case-header-text">
        <h1 class="mb-4">
          {$title}
        </h1>
        <p class="mb-5">
          {$description}
        </p>
        {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'use cases header btn'|translate} href="{$PORG_ROOT}{$URL.signup}" class="mb-2"}
      </div>
      <div class="col-md-6 text-center use-case-header-image">
        <img id="use-case-main-image" src={$img_src}
          alt="Piwigo use-case illustration" class="img-fluid">
      </div>
    </div>
  </div>
</section>