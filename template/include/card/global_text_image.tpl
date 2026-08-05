<div class="row align-items-center g-3">

  <div class="col-12 col-md-6 {if $reverse}order-md-last{/if}">
    <div class="feature-copy">
      {if $title}
        <h2 class="feature-title mb-4 text-center text-md-start">
          {$title}
        </h2>
      {/if}
      <p class="feature-description feature-description-desktop mb-4 d-none d-md-block text-center text-md-start">
        {$desc}
      </p>
      {if $btn_text}
        {assign var="btn_variant" value="cta_secondary"}
        {if $btn_orange}{assign var="btn_variant" value="cta_primary"}{/if}
        {if $btn_green}{assign var="btn_variant" value="cta_primary_green"}{/if}
        <div class="d-none {if $btn_variant == 'cta_secondary'}d-md-block{else}d-md-flex justify-content-start{/if}" {if $desc2 != ''}style="margin-bottom: 1.5rem;"{/if}>
          {if isset($target)}
            {include file='template/include/buttons/button.tpl' variant=$btn_variant label=$btn_text href=$btn_link target=$target}
          {else}
            {include file='template/include/buttons/button.tpl' variant=$btn_variant label=$btn_text href=$btn_link}
          {/if}
        </div>
      {/if}
      <p class="feature-description feature-description-desktop mb-4 text-center text-md-start">
        {$desc2}
      </p>

    </div>
  </div>

  <div class="col-12 col-md-6" style="padding-right: 0; padding-left: 0;">
    <div class="feature-image-container {if $imageoffbeat}pe-5 ps-5{/if}" style="margin: 0 20px; {if $reverse}justify-content: flex-end;{/if}">
      <img src="{$image}" class="feature-image img-fluid {if $btn_orange}rounded-4{/if}" alt="{$title|escape}">
    </div>
  </div>

  <div class="col-12 d-md-none">
    <p class="feature-description feature-description-mobile {if $btn_text}mb-4{else}mb-0{/if} text-center text-md-start">
      {$desc}
    </p>
    {if $btn_text}
      {assign var="btn_variant" value="cta_secondary"}
      {if $btn_orange}{assign var="btn_variant" value="cta_primary"}{/if}
      {if $btn_green}{assign var="btn_variant" value="cta_primary_green"}{/if}
      <div class="{if $btn_variant == 'cta_primary'}d-flex justify-content-center{/if}" {if $desc2 != '' or $btn_variant != 'cta_primary'}style="margin-bottom: 1.5rem;"{/if}>
        {if isset($target)}
          {include file='template/include/buttons/button.tpl' variant=$btn_variant label=$btn_text href=$btn_link target=$target}
        {else}
          {include file='template/include/buttons/button.tpl' variant=$btn_variant label=$btn_text href=$btn_link}
        {/if}
      </div>
    {/if}
    <p class="feature-description feature-description-mobile text-center text-md-start">
      {$desc2}
    </p>
  </div>

</div>