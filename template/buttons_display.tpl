<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/cross_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/page_number.css">

<section class="buttons-display-showcase">

  <p>Les boutons :</p>

  <div class="buttons-display-list">
    {include file='template/include/buttons/button.tpl' variant='cta_primary' label='Start your free trial'}
    {include file='template/include/buttons/button.tpl' variant='cta_secondary' label='Start your free trial'}
    {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label='Start your free trial'}
  </div>

    <div class="row buttons-menu-row">
      <div class="col-3">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label='Free trial'}
      </div>
      <div class="col-3 d-flex">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label='Free trial'}
      </div>
      <div class="col-3">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label='Free trial'}
      </div>
      <div class="col-3">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_orange' label='Free trial'}
      </div>
    </div>

  <div class="buttons-display-list">
    {include file='template/include/buttons/cross_button.tpl'}
  </div>

  <div class="pagination-numbers-container">
    {include file='template/include/buttons/forward_arrow.tpl' reversed=true}
    {include file='template/include/buttons/forward_arrow.tpl' fast=true reversed=true}
    {include file='template/include/buttons/page_number.tpl' label='1' is_selected=true}
    {include file='template/include/buttons/page_number.tpl' label='2'}
    {include file='template/include/buttons/page_number.tpl' label='3'}
    {include file='template/include/buttons/forward_arrow.tpl'}
    {include file='template/include/buttons/forward_arrow.tpl' fast=true}
  </div>

</section>