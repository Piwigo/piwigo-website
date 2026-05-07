<div class="storage-popover-content p-3 text-start">
    <h5 class="popover-title fw-bold mb-2">
        {'pricing storage_title'|translate}
    </h5>
    <p class="popover-description text-muted">
        {'pricing storage_p'|translate}
    </p>

    <div class="storage-grid-container">
        {foreach from=$EXTRA_STORAGE item=option}
            <div class="storage-item-wrapper">
                {include file="template/include/card/storage_card.tpl" 
                    storage_gb=$option.size 
                    price=$option.price}
            </div>
        {/foreach}
    </div>
</div>