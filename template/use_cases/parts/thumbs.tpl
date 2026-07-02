<section class="container container-features">
  <div class="row text-center features-content justify-content-center">
    
    <div class="col-md-6 text-center justify-content-center mb-5">
      <h2 class="mb-3 text-center">{$title}</h2>
      <p class="mb-0 text-center pb-5">{$description}</p>
    </div>

    <div class="col-md-11 text-center justify-content-center cloud-features">
      <div class="row justify-content-center g-3 mb-3 stat px-2">

        {if isset($features)}
          {foreach $features as $feature}
            <div class="col-xl-4">
              <div class="facts-card h-100">
                <img src="{$feature.img_src}" class="img-fluid mb-3" alt="{$feature.title}" loading="lazy">
                <h4 class="text-center">{$feature.title}</h4>
                <p class="text-center mb-0">{$feature.description}</p>
              </div>
            </div>
          {/foreach}
        {/if}

      </div>
    </div>
  </div>
</section>