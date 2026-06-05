<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/product.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/pricing_switch.css">


<section class="product-header pt-md-5">
  <div class="js-content-cloud product-content product-cloud-header d-flex flex-column flex-lg-row align-items-center justify-content-between">
    <div class="product-header-cloud-content-left col-12 col-lg-5 px-3 px-lg-5 mb-5 mb-lg-0 text-center text-lg-start order-2 order-lg-1">
      <div class="product-header-cloud-text d-flex flex-column gap-3 pb-4">
        <h1 class="product-header-cloud-title pb-2">{'product-header-cloud-title'|translate}</h1>
        <p class="product-header-cloud-description">{'product-header-cloud-desc'|translate}</p>
      </div>
      <div class="product-header-cloud-btn d-flex flex-column flex-sm-row justify-content-center justify-content-lg-start gap-3">
        {include
          file='template/include/buttons/button.tpl'
          variant='menu_btn_green'
          href="{$PORG_ROOT}{$URL.signup}"
        label={'product-header-cloud-btn1'|translate}
        }
        {include
          file='template/include/buttons/button.tpl'
          variant='menu_btn_blue'
          href='{$PORG_ROOT}{$URL.pricing}'
        label={'product-header-cloud-btn2'|translate}
        }
      </div>
    </div>
    <div class="product-header-cloud-content-right col-12 col-lg-6 text-center order-1 order-lg-2 mb-4 mb-lg-0">
      <div class="product-header-cloud-image img-fluid">
        <img class="img-fluid" src="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.webp" alt="Piwigo Cloud" title="Piwigo Cloud">
      </div>
    </div>
  </div>

  <div class="js-content-self-hosted product-content product-self-hosted-header d-flex flex-column flex-lg-row align-items-center justify-content-between" style="display: none !important;">
    <div class="product-header-self-hosted-content-left col-12 col-lg-5 px-3 px-lg-5 mb-5 mb-lg-0 text-center text-lg-start order-2 order-lg-1">
      <div class="product-header-self-hosted-text d-flex flex-column gap-3 pb-4">
        <h1 class="product-header-self-hosted-title pb-2">{'product-header-self-hosted-title'|translate}</h1>
        <p class="product-header-self-hosted-description">{'product-header-self-hosted-desc'|translate}</p>
      </div>
      <div class="product-header-self-hosted-btn d-flex flex-column flex-sm-row justify-content-center justify-content-lg-start gap-3">
        {include
          file='template/include/buttons/button.tpl'
          variant='menu_btn_green'
          href="{$PORG_ROOT}{$URL.signup}"
        label={'product-header-self-hosted-btn1'|translate}
        }
        {include
          file='template/include/buttons/button.tpl'
          variant='menu_btn_blue'
          href='{$PORG_ROOT}{$URL.pricing}'
        label={'product-header-self-hosted-btn2'|translate}
        }
      </div>
    </div>
    <div class="product-header-self-hosted-content-right col-12 col-lg-6 text-center order-1 order-lg-2 mb-4 mb-lg-0">
      <div class="product-header-self-hosted-image">
        <img class="img-fluid" src="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.webp" alt="Piwigo Cloud" title="Piwigo Cloud">
      </div>
    </div>
  </div>
</section>

<div class="d-flex justify-content-center gap-3 mb-5 product-toggle-buttons">
  {include file="template/include/buttons/pricing_switch.tpl"}
</div>

<div class="js-content-cloud product-content">
  {include file='template/product/cloud.tpl'}
</div>

<div class="js-content-self-hosted product-content" style="display: none !important;">
  {include file='template/product/self_hosted.tpl'}
</div>

<script>
  function updateProductView() {
    const hash = window.location.hash || '#cloud';
    const isSelfHosted = (hash === '#self-hosted');

    document.querySelectorAll('.js-content-cloud').forEach(function(el) {
      if (isSelfHosted) {
        el.style.setProperty('display', 'none', 'important');
      } else {
        el.style.removeProperty('display');
      }
    });
    document.querySelectorAll('.js-content-self-hosted').forEach(function(el) {
      if (isSelfHosted) {
        el.style.removeProperty('display');
      } else {
        el.style.setProperty('display', 'none', 'important');
      }
    });

    const btnCloud = document.querySelector('.btn-pricing.cloud');
    const btnSelfHosted = document.querySelector('.btn-pricing.self-hosted');

    if (btnCloud) {
      btnCloud.classList.toggle('active', !isSelfHosted);
      btnCloud.classList.toggle('inactive', isSelfHosted);
    }
    if (btnSelfHosted) {
      btnSelfHosted.classList.toggle('active', isSelfHosted);
      btnSelfHosted.classList.toggle('inactive', !isSelfHosted);
    }
  }

  window.addEventListener('DOMContentLoaded', function() {
    updateProductView();
    setTimeout(updateProductView, 100);

    document.querySelectorAll('.btn-pricing').forEach(function(btn) {
      btn.addEventListener('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        window.location.hash = e.currentTarget.classList.contains('self-hosted') ? '#self-hosted' : '#cloud';
      }, true);
    });
  });
  window.addEventListener('load', updateProductView);
  window.addEventListener('hashchange', updateProductView);
</script>