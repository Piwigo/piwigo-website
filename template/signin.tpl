<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/signin.css">

<section class="signin-header container-fluid d-flex flex-column align-items-center">
  <div class="title-container">
    <h1 class="signin-title text-center">
      <span class="hightlight-wrap">
        <img class="highlight-circle" src="{$PORG_ROOT_URL}images/pricing/greencircle.svg" alt="green circle">
        <span class="highlight">{'signin_header_title_pt1'|translate}</span>
      </span>
      {'signin_header_title_pt2'|translate}
    </h1>
  </div>
  <div class="description_signin_text_content d-flex flex-column align-items-center">
    <p class="signin-description text-center">{'signin_header_desc'|translate}</p>
    <p class="signin-description-plus text-center">{'signin_header_desc_plus'|translate}</p>
  </div>
  {include
    file='template/include/buttons/button.tpl'
    variant='menu_btn_green'
    href="{$PORG_ROOT}{$URL.contact}"
    label={'signin_btn_contact'|translate} 
  }
</section>