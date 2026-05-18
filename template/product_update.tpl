<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/product_update.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/product_update.js"></script>

<section class="product-update-header">
  <div class="product-update-content">
  
    <div class="product-update-text-section">
      <h1>{'porg_product_update_header_title'|translate}</h1>
      <p>{'porg_product_update_header_description'|translate}</p>
    </div>

    <div class="product-update-cards-section">
      <div class="product-update-cards-container" id="cardsContainer">
        {foreach from=$product_updates item=update name=updates}
        <div class="product-update-card">
          <img class="version-image" src="{$update.image}">
          <div class="p-testimonial card-date">{$update.released_on}</div>
          <h4 class="card-title">{$update.title}</h4>
          <p class="pricing-list card-features">
            {foreach from=$update.features item=feature name=features_loop}
            {$feature|translate}{if !$smarty.foreach.features_loop.last}, {/if}
            {/foreach}
          </p>
          {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'See details'|translate} href="{$PORG_ROOT}{$URL.release}-{$update.version}"}
        </div>
        {/foreach}
      </div>
      
      <div class="product-update-nav">
        <button class="product-update-nav-btn prev" id="prevBtn" aria-label="Previous">
          <p class="minimenus-item">←</p>
        </button>
        <button class="product-update-nav-btn next" id="nextBtn" aria-label="Next">
          <p class="minimenus-item">→</p>
        </button>
      </div>
    </div>
  </div>
</section>

<section class="product-update-updates">
    <div class="row product-update-updates-content">
      <div class="col-md-4 text-center">
        <div class="product-update-updates-filters-container">
          <div class="product-update-updates-filters-header">
            <h3 class="sector-testimonial">{'Filters'|translate}</h3>
            <a class="p-testimonial clear-filters" data-filter="clear">{'Clear all'|translate}</a>
          </div>

          <div class="product-update-updates-filters">
          </div>
        </div>
      </div>
      <div class="col-md-8">
        <h2 class="h2-top-page">{'porg_product_update_updates_title'|translate}</h2>
      </div>
    </div>
  </div>
</section>