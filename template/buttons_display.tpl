<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/cross_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/page_number.css">

<section class="buttons-display-showcase">

  <p>Les boutons :</p>

  <div class="buttons-display-list">
    {include file='template/include/buttons/button.tpl' variant='cta_primary' label='Start your free trial' href='https://google.com'}
    {include file='template/include/buttons/button.tpl' variant='cta_secondary' label='Start your free trial' href='https://google.com'}
    {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label='Start your free trial' href='https://google.com'}
  </div>

    <div class="row buttons-menu-row">
      <div class="col-3">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label='Free trial' href='https://google.com'}
      </div>
      <div class="col-3 d-flex">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label='Free trial' href='https://google.com'}
      </div>
      <div class="col-3">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label='Free trial' href='https://google.com'}
      </div>
      <div class="col-3">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_orange' label='Free trial' href='https://google.com'}
      </div>
    </div>

  <div class="buttons-display-list">
    {include file='template/include/buttons/cross_button.tpl' href='https://google.com'}
  </div>

  <div class="pagination-numbers-container">
    {include file='template/include/buttons/page_number.tpl' label='1' href='https://google.com' is_selected=true}
    {include file='template/include/buttons/page_number.tpl' label='2' href='https://google.com'}
    {include file='template/include/buttons/page_number.tpl' label='3' href='https://google.com'}
    {include file='template/include/buttons/forward_arrow.tpl' href='https://google.com'}
    {include file='template/include/buttons/forward_arrow.tpl' href='https://google.com' fast=true}
  </div>

</section>