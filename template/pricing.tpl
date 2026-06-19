<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/pricing.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/pricing_switch.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_option.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/compare_plan_table.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/faq_item.css">
{*
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_plugin_card.css"> *}
{*
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_custom_card.css"> *}
{*
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_global_card.css"> *}
{*
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/storage_card.css"> *}
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/global_text_image.css">

<a href="{$PORG_ROOT}{$URL.plugins}"> plugins ici </a>

<section class="pricing-header-main container-fluid">
	<div class="row align-items-center text-center">
		<div class="col-12 pricing-header-text">
			<h1 class="pricing-title">
				{'pricing main title part 1'|translate}
				<span class="highlight-wrap">
					<img class="highlight-circle" src="{$PORG_ROOT_URL}images/pricing/greencircle.svg" alt="">
					<span class="highlight">{'pricing main title part 2'|translate}</span>
				</span>
			</h1>
			<p class="pricing-subtitle">
				{'pricing main description'|translate}
			</p>
		</div>

		<div class="col-12 pricing-toggle-container">
			{include file="template/include/buttons/pricing_switch.tpl"}
		</div>

		<div class="col-12 pricing-toggle-description">
			<p id="desc-cloud" class="toggle-desc">
				{'pricing toggle description 1'|translate}
			</p>
			<p id="desc-selfhosted" class="toggle-desc d-none">
				{'pricing toggle description 2'|translate}
			</p>
		</div>
	</div>
</section>

<div id="card-selfhosted" class="selfhosted-card-container d-none-card">
	{include
		file="template/include/card/global_text_image.tpl"
		title={'pricing title selfhosted card'|translate} desc={'pricing selfhosted description card'|translate} image="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.webp" 
	}
</div>

<div id="pricing-content-cloud" class="pricing-content">
	{include file="template/include/card/pricing_opt_display.tpl"}
	<div id="cloud-storage" class="pricing-storage-content d-none-card">
		{include file="template/pricing/cloud.tpl" }
	</div>
</div>

<div id="pricing-content-selfhosted" class="pricing-content">
	{include file="template/pricing/self_hosted.tpl"}
</div>


<section class="faq_pricing_container container">
	<div class="faq_pricing_header">
		<h3 class="faq_pricing_title text-center">{'pricing faq pricing title'|translate}</h2>
	</div>
	<div class="row faq_pricing_grid g-0">
		{foreach from=$faqs item=faq}
			{include
				file="template/include/card/faq_item.tpl"
				faq_id=$faq.id
				faq_question=$faq.question
				faq_answer=$faq.answer
			}
		{/foreach}
	</div>
</section>

<script src="{$PORG_ROOT_URL}js/pricing_switch.js"></script>
<script src="{$PORG_ROOT_URL}js/compare_toggle.js"></script>
