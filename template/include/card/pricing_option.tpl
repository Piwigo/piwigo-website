<div class="pricing-card card-{$type} {if $is_best_deal}best-deal-border{/if} shadow-sm d-flex flex-column p-4 rounded-4 bg-white h-100">

	{if $is_best_deal}
		<div class="best-deal-badge">{'Best deal'|translate}</div>
	{/if}

	<div class="text-center mb-4 pricing-header">
		<h2 class="fw-bolder mb-1 h3">{$title|translate}</h2>
		<p class="text-muted small lh-sm mb-0">{$subtitle|translate}</p>
	</div>

	<div class="price-section text-center mb-4">
		<div class="fw-bolder price-text">
			{$price}
		</div>
		<div class="text-muted small">{'pricing plan_excl_vat_month'|translate}<br>{'pricing plan_billed_annually'|translate}</div>
	</div>

	<div class="mb-4 text-center">
		{include
			file="template/include/buttons/button.tpl"
			variant=(isset($is_best_deal) && $is_best_deal)
			?
			"menu_btn_main_pink"
			:
			"menu_btn_green"
			href={(isset($btn_link_try)) ? $btn_link_try : "#"} label={(isset($btn_try)) ? ($btn_try|translate) : ('pricing free'|translate)} 
		}
	</div>

	<div class="features-wrapper">
		<div class="features-list text-start top-features-list">
			<ul class="list-unstyled mb-4">
				{foreach from=$features item=feature}
					<li class="d-flex align-items-start mb-3">
						{if isset($feature.not_included) && $feature.not_included}
							<i class="icon-cross text-muted opacity-50 cross"></i>
						{else}
							<i class="icon-check-1 me-2 mt-1"></i>
						{/if}

						<span class="small {if isset($feature.not_included) && $feature.not_included}text-muted{else}text-secondary{/if}">
							{if isset($feature.url)}
								<a href="{$feature.url}" class="text-decoration-underline text-inherit">{$feature.text|translate}</a>
								<i class="icon-rounded-warning text-info-light"></i>

							{elseif $feature.text|lower|strpos:"documentation" !== false}
								{assign var="translated_text" value=$feature.text|translate}
								{$translated_text|replace:'documentation':'<a href="https://doc.piwigo.org/" class="text-decoration-underline text-inherit" target="_blank" rel="noopener">documentation</a>'|replace:'community forum':'<a href="https://piwigo.org/forum/" class="text-decoration-underline text-inherit" target="_blank" rel="noopener">community forum</a>'}

							{elseif $feature.text|lower|strpos:"support included" !== false}
								<span class="custom-link-container js-plugin-tooltip-trigger d-flex align-items-top" style="cursor: pointer;">
									<span class="link-text">{$feature.text|translate}</span>
									<i class="icon-rounded-warning text-info-light ms-1 flex-shrink-0"></i>
									<div class="pricing-plugin-popover">
										{include file="template/include/card/pricing_plugin_card.tpl"}
									</div>
								</span>
							{else}
								{$feature.text|translate}
							{/if}
						</span>

						{if isset($feature.info) && $feature.info}
							<div class="info-icon-container ms-auto">
								<i class="icon-rounded-warning text-info-light flex-shrink-0"></i>
								{if $feature.text|lower|strpos:"storage" !== false}
									<div class="storage-hover-popover shadow-lg">
										{include file="template/include/card/storage_card_display.tpl"}
									</div>
								{else}
									<div class="global-hover-popover shadow-lg">
										{include file="template/include/card/pricing_global_card.tpl" tooltip_items=$feature.tooltip }
									</div>
								{/if}
							</div>
						{/if}
					</li>
				{/foreach}
			</ul>
		</div>
		<div class="features-list text-start bottom-features-list">
			<p class="fw-bold small mb-3 text-dark">{'pricing features_services'|translate}</p>
			<ul class="list-unstyled mb-0">
				{foreach from=$services item=service}
					<li class="d-flex align-items-start mb-3">
						<i class="icon-check-1 me-2 mt-1"></i>

						<span class="small text-secondary d-flex space-between">
							{if isset($service.url)}
								<a href="{$service.url}" class="text-inherit d-flex align-items-center link-wrapper">
									<span class="link-text">{$service.text|translate}</span>
									<i class="icon-rounded-warning text-info-light flex-shrink-0"></i>
								</a>

							{elseif $service.text|lower|strpos:"custom graphic personalization" !== false}
								<span class="custom-link-container js-custom-tooltip-trigger d-flex align-items-center" style="cursor: pointer;">
									<span class="link-text">{$service.text|translate}</span>
									<i class="icon-rounded-warning text-info-light flex-shrink-0"></i>

									<div class="custom-hover-popover shadow-lg">
										{include file="template/include/card/pricing_custom_card.tpl"}
									</div>
								</span>
							{else}
								{$service.text|translate}
							{/if}
						</span>

						{if isset($service.info) && $service.info}
							<div class="info-icon-container ms-auto">
								<i class="icon-rounded-warning text-info-light flex-shrink-0"></i>
								<div class="global-hover-popover shadow-lg">
									{include file="template/include/card/pricing_global_card.tpl" tooltip_items=$service.tooltip }
								</div>
							</div>
						{/if}
					</li>
				{/foreach}
			</ul>
		</div>
	</div>

	<div class="price-footer mt-4 text-center">
		{include
			file="template/include/buttons/button.tpl"
			variant="menu_btn_white"
			href={(isset($btn_link_try)) ? $btn_link_try : "#"} label={(isset($btn_trial)) ? ($btn_trial|translate) : ('pricing free_trial'|translate)} 
		}
	</div>
	<h2 class="h2-mobile-top-page text-center">{$title|translate}</h2>
</div>