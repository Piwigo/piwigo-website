<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/product.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/pricing_switch.css">


<section class="product-header pb-5">
  <div id="content-cloud" class="product-content product-cloud-header d-flex flex-row align-items-center p-5 gap-5">
    <div class="product-header-cloud-content-left d-flex flex-column gap-4 pe-5 ps-5">
      <div class="product-header-cloud-text d-flex flex-column gap-3 pb-5">
        <h1 class="product-header-cloud-title pb-5">{'product-header-cloud-title'|translate}</h1>
        <p class="product-header-cloud-description">{'product-header-cloud-desc'|translate}</p>
      </div>
      <div class="product-header-cloud-btn d-flex flex-row gap-3">
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
          label={'product-header-cloud-btn1'|translate} 
        }
      </div>
    </div>
    <div class="product-header-cloud-content-right">
      <div class="product-header-cloud-image">
        <img src="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.webp" alt="Piwigo Cloud" title="Piwigo Cloud">
      </div>
    </div>
  </div>

  <div id="content-self-hosted" class="product-content product-self-hosted-header d-flex flex-row align-items-center p-5 gap-5">
    <div class="product-header-self-hosted-content-left d-flex flex-column gap-4 pe-5 ps-5">
      <div class="product-header-self-hosted-text d-flex flex-column gap-3 pb-5">
        <h1 class="product-header-self-hosted-title pb-5">{'product-header-self-hosted-title'|translate}</h1>
        <p class="product-header-self-hosted-description">{'product-header-self-hosted-desc'|translate}</p>
      </div>
      <div class="product-header-self-hosted-btn d-flex flex-row gap-3">
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
    <div class="product-header-self-hosted-content-right">
      <div class="product-header-self-hosted-image">
        <img src="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.webp" alt="Piwigo Cloud" title="Piwigo Cloud">
      </div>
    </div>
  </div>
</section>

<div class="d-flex justify-content-center gap-3 mb-5 product-toggle-buttons">
  {include file="template/include/buttons/pricing_switch.tpl"}
</div>

<div id="content-cloud" class="product-content">
  {include file='template/product/cloud.tpl'}
</div>

<div id="content-self-hosted" class="product-content" style="display: none;">
  {include file='template/product/self_hosted.tpl'}
</div>

<script>
  function updateProductView() {
    const hash = window.location.hash || '#cloud';
    const isSelfHosted = (hash === '#self-hosted');

    document.getElementById('content-cloud').style.display = isSelfHosted ? 'none' : 'block';
    document.getElementById('content-self-hosted').style.display = isSelfHosted ? 'block' : 'none';

    const btnCloud = document.getElementById('btn-cloud');
    const btnSelfHosted = document.getElementById('btn-self-hosted');

    btnCloud.className = isSelfHosted ? 'btn-menu menu-btn-white' : 'btn-menu menu-btn-blue';
    btnSelfHosted.className = isSelfHosted ? 'btn-menu menu-btn-blue' : 'btn-menu menu-btn-white';
  }

  window.addEventListener('DOMContentLoaded', updateProductView);
  window.addEventListener('hashchange', updateProductView);
</script>