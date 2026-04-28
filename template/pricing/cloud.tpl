<section class="storage-section container">
    <div class="storage-header text-center">
        <h2 class="storage-title text-center">{'storage big title'|translate}</h2>
        <p class="storage-subtitle text-center">
            {'storage big description'|translate}
        </p>
    </div>

    <div class="row row-cols-1 row-cols-md-3 row-cols-lg-5 g-0 storage-grid">
        {assign var="storage_options_big" value=[
            ['gb' => '50', 'price' => '5'],
            ['gb' => '100', 'price' => '10'],
            ['gb' => '250', 'price' => '25'],
            ['gb' => '500', 'price' => '50'],
            ['gb' => '1000', 'price' => '100']
        ]}
        
        {foreach from=$storage_options_big item=option name=storage_loop}
            <div class="col storage-divider">
                <div class="storage-item-container">
                    {include file="template/include/card/storage_card.tpl" storage_gb=$option.gb price=$option.price}
                </div>
            </div>
        {/foreach}
    </div>
</section>

<div class="storage-download-container text-center">
    {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'Download our prices as a PDF'|translate} }
</div>