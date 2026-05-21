<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/signin.css">
<section class="signin-header container d-flex flex-column align-items-center">
  <h1 class="signin-title text-center">{'signin_header_title'|translate}</h1>
  <p class="signin-description text-center">{'signin_header_desc'|translate}</p>
  <p class="signin-description-plus text-center">{'signin_header_desc_plus'|translate}</p>
  {include
    file='template/include/buttons/button.tpl'
    variant='menu_btn_green'
    href="{$PORG_ROOT}{$URL.contact}"
    label={'signin_btn_contact'|translate} 
  }
</section>