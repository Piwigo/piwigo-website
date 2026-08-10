<div class="storage-popover-content p-3 text-start">
	<h5 class="popover-title fw-bold mb-2">
		{'pcom_pricing_page_storage_popin_1'|translate}
	</h5>
	<p class="popover-description text-muted">
		{'pcom_pricing_page_storage_popin_2'|translate}
	</p>

	<div class="storage-grid-container">
		{foreach from=$EXTRA_STORAGE item=option}
			<div class="storage-item-wrapper">
				{include file="template/include/card/storage_card.tpl" storage_gb=$option.size price=$option.price}
			</div>
		{/foreach}
	</div>
</div>