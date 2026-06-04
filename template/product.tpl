<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/product.css">

<p class="product-title">Piwigo.com</p>

<div class="d-flex justify-content-center gap-3 mb-5 product-toggle-buttons">
  <a href="#cloud" id="btn-cloud" class="btn-menu menu-btn-blue">{'Cloud'|translate}</a>
  <a href="#self-hosted" id="btn-self-hosted" class="btn-menu menu-btn-white">{'Self hosting'|translate}</a>
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