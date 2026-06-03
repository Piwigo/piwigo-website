
<div class="menu-mega-container">
	<div class="menu-columns">
		<div class="menu-column">
			<div class="column-header header-pink">{'Features'|translate}</div>
			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#upload"
				category_type='feature-submenu'
				title={'Upload & Import'|translate} description={'Upload & Import desc'|translate} icon_class='icon-cloud-oneplace'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#organize"
				category_type='feature-submenu'
				title={'Organize your media'|translate} description={'Organize your media desc'|translate} icon_class='icon-organize'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#search"
				category_type='feature-submenu'
				title={'Search & Find'|translate} description={'Search & Find desc'|translate} icon_class='icon-search'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#share"
				category_type='feature-submenu'
				title={'Share & Collaborate'|translate} description={'Share & Collaborate desc'|translate} icon_class='icon-permissions'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#customize"
				category_type='feature-submenu'
				title={'Customize & Extend'|translate} description={'Customize & Extend desc'|translate} icon_svg='images/icons/personalize.svg'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#measure"
				category_type='feature-submenu'
				title={'Measure & Monitor'|translate} description={'Measure & Monitor desc'|translate} icon_class='icon-stats'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				href="{$PORG_ROOT}{$URL.features}#security"
				category_type='feature-submenu'
				title={'Security & Privacy'|translate} description={'Security & Privacy desc'|translate} icon_class='icon-secu'
			}
		</div>

		<div class="menu-divider d-none d-md-block"></div>

		<div class="menu-column">
			<div class="column-header header-orange">{'Use cases'|translate}</div>
			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Travel & Tourism'|translate} icon_class='icon-travel' href="{$PORG_ROOT}{$URL.use_cases}#travel-tourism"
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Public Sector'|translate} icon_class='icon-public' href="{$PORG_ROOT}{$URL.use_cases}#public-sector"
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Companies'|translate} icon_class='icon-companies' href="{$PORG_ROOT}{$URL.use_cases}#companies"
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Education & Research'|translate} icon_class='icon-education' href="{$PORG_ROOT}{$URL.use_cases}#education-research"
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Nonprofits'|translate} icon_class='icon-nonprofit' href="{$PORG_ROOT}{$URL.use_cases}#nonprofits"
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='use-case-submenu'
				title={'Photographers & individuals'|translate} icon_class='icon-photographers' href="{$PORG_ROOT}{$URL.use_cases}#photographers-individuals"
			}
		</div>

		<div class="menu-divider d-none d-md-block"></div>

		<div class="menu-column">
			<div class="column-header header-green">{'Explore'|translate}</div>
			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='ai-submenu'
				title={'Piwigo AI'|translate|cat:' ✨'} description={'Piwigo AI desc'|translate} icon_svg='images/icons/AI.svg'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='explore-submenu'
				title={'Live demos'|translate} description={'Live demos desc'|translate} icon_class='icon-examples'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='explore-submenu'
				href="{$PORG_ROOT}{$URL.mobile_applications}"
				title={'Mobile apps'|translate} description={'Mobile apps desc'|translate} icon_class='icon-app'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='explore-submenu'
				title={'API & integrations'|translate} description={'API & integrations desc'|translate} icon_class='icon-dev'
			}

			{include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='explore-submenu'
				title={'Extensions'|translate} description={'Extensions desc'|translate} is_ext=true icon_class='icon-extension'
			}
		</div>
	</div>

	<div class="menu-horizontal-divider"></div>

	<div class="menu-footer d-flex justify-content-center">
		{include
			file='template/include/buttons/button.tpl'
			variant='menu_btn_white'
			label={'product btn'|translate} href="{$PORG_ROOT}{$URL.contact}"
		}
	</div>
</div>