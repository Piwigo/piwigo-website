

<div class="container-fluid menu-mega-container">
	<div class="row g-0 menu-columns">
		<div class="col-12 col-md-5 menu-column">
			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='feature-submenu'
				title={'Latest news'|translate} description={'Latest news desc'|translate} icon_class='icon-latest-news'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='feature-submenu'
				title={'Newsletter'|translate} description={'Newsletter desc'|translate} icon_class='icon-newsletter' href="{$PORG_ROOT}{$URL.newsletters}"
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='feature-submenu'
				is_ext=true
				title={'Blog'|translate} description={'Blog desc'|translate} icon_class='icon-doc'
			}
		</div>

		<div class="d-none d-md-block menu-divider"></div>

		<div class="col-12 col-md-5 menu-column">
			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Product Updates'|translate} description={'Product Updates desc'|translate} icon_class='icon-dev' href="{$PORG_ROOT}{$URL.product_update}"
			}
		</div>
	</div>

	<div class="menu-horizontal-divider"></div>

	<div class="menu-footer d-flex justify-content-center">
		{include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'news btn'|translate}}
	</div>
</div>