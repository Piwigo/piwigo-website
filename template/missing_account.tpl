<section class="container-fluide" style="margin-top: 160px; margin-bottom: 200px;">
  <div class="container equal">
    <h1 class="mb-4 text-center">{$smarty.get.account|escape:'html'}{'missing_account_title'|translate}</h1>
    <p class="mb-5 text-center">{'missing_account_desc'|translate}</p>
    <div class="d-flex justify-content-center">
      {include
        file='template/include/buttons/button.tpl'
        variant='menu_btn_green'
        href="{$PORG_ROOT}{$URL.signup}&username={$smarty.get.account|escape:'html'}"
        label={'missing_account_button'|translate} 
        class='px-5'
      }
    </div>
  </div>
</section>