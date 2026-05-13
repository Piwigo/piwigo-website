<div class="storage-option-card">
	<div class="storage-amount">
		<span>{$storage_gb}{'GB'|translate}</span>
	</div>
	<div class="storage-price-container">
		<div class="price-display-wrapper">
			{* <span class="currency">€</span> *}
			<span class="price-number">{'$'|translate}{$price}</span>
		</div>
		<div class="price-details">
			<p>{'pricing excl_vat'|translate}</p>
			<p>{'pricing excl_month'|translate}</p>
		</div>
	</div>
</div>