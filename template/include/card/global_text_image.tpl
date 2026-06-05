<div class="row align-items-center g-3">

  <div class="col-12 col-md-6 {if $reverse}order-md-last{/if}">
    <div class="feature-copy">
      {if $title}
        <h2 class="feature-title mb-4">
          {$title}
        </h2>
      {/if}
      <p class="feature-description feature-description-desktop mb-4 d-none d-md-block">
        {$desc}
      </p>
      {if $btn_text}
        <div class="d-none d-md-block" {if $desc2 != ''}style="margin-bottom: 1.5rem;{/if}">
          {include file='template/include/buttons/button.tpl' variant='cta_secondary' label={$btn_text} href='{$btn_link}'}
        </div>
      {/if}
      <p class="feature-description feature-description-desktop mb-4">
        {$desc2}
      </p>

    </div>
  </div>

  <div class="col-12 col-md-6" style="padding-right: 0; padding-left: 0;">
    <div class="feature-image-container {if $imageoffbeat}pe-5 ps-5{/if}" style="margin: 0 20px; {if $reverse}justify-content: flex-end;{/if}">
      <img src="{$image}" class="feature-image img-fluid" alt="{$title|escape}">
    </div>
  </div>

  <div class="col-12 d-md-none">
    <p class="feature-description feature-description-mobile {if $btn_text}mb-4{else}mb-0{/if}">
      {$desc}
    </p>
    {if $btn_text}
      <div style="margin-bottom: 1.5rem;">
        {include file='template/include/buttons/button.tpl' variant='cta_secondary' label={$btn_text} href='{$btn_link}'}
      </div>
    {/if}
    <p class="feature-description feature-description-mobile">
      {$desc2}
    </p>
  </div>

</div>