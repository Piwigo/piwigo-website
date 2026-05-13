<section class="storage-section container">
    <div class="storage-header text-center">
        <h2 class="storage-title text-center">{'pricing storage big title'|translate}</h2>
        <p class="storage-subtitle text-center">
            {'pricing storage big description'|translate}
        </p>
    </div>

    <div class="row row-cols-1 row-cols-md-3 row-cols-lg-5 g-0 storage-grid">
        {foreach from=$EXTRA_STORAGE item=option name=storage_loop}
            <div class="col storage-divider">
                <div class="storage-item-container">
                    {include file="template/include/card/storage_card.tpl" storage_gb=$option.size price=$option.price}
                </div>
            </div>
        {/foreach}
    </div>
</section>

<div class="storage-download-container text-center">
    {include
        file='template/include/buttons/button.tpl'
        variant='menu_btn_white'
        href=$PRICING_PDF_LINK
        label={'pricing storage downloader'|translate} 
    }
</div>

<section class="compare_table_container container">
    <div class="compare_table_toggle text-center">
        <button class="compare_table_btn" id="compareTableBtn">
            {'pricing compare table toggle'|translate}
            <i class="icon-down-open" id="compareIcon"></i>
        </button>
    </div>

    <div class="compare_table_display" id="compareTableDisplay">
        {include file='template/include/card/compare_plan_table.tpl'}
    </div>
</section>