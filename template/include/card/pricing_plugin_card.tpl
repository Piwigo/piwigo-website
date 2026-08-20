<div class="pricing-tooltip-card tooltip-plugins">
	<div class="tooltip-content">
		<p class="tooltip-description">
			{'pricing tooltip_vip'|translate}
		</p>

		<div class="tooltip-footer">
			{include
				file="template/include/buttons/button.tpl"
				variant="menu_btn_white"
				href="{$PORG_ROOT}{$URL.plugins_by_plan}{$URL_PARAM_SEPARATOR}plan=selfhosted&display=self-hosted"
				label={'pricing tooltip_list_vip'|translate}
			}
		</div>
	</div>
</div>