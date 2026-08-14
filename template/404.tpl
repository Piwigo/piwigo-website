<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/404.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">

<section class="container-fluid container-error404 d-flex align-items-center justify-content-center">
  <div class="container equal content-error404">
    <h1 class="error-title text-center">{'404_error_title'|translate}</h1>
    <p class="error-description text-center">{'404_error_desc'|translate}</p>
    <div class="error-button-container d-flex justify-content-center">
      {include
        file='template/include/buttons/button.tpl'
        variant='menu_btn_white'
        href="{$PORG_ROOT}{$URL.home}"
        label={'404_error_button'|translate} 
      }
    </div>
  </div>
</section>