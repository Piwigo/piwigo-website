<div class="container-fluid menu-mega-container">
  <div class="row g-0 menu-columns">
    <div class="col-12 menu-column">
      {include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='feature-submenu'
				title={'Who uses Piwigo'|translate} description={'Who uses Piwigo desc'|translate} icon_class='icon-users' href="{$PORG_ROOT}{$URL.users}"
      }

      {include
				file='template/include/sub_menu_items/sub_menu_itemc.tpl'
				category_type='feature-submenu'
        href="{$PORG_ROOT}{$URL.cases}"
      title={'Case studies'|translate} description={'Case studies desc'|translate} icon_class='icon-search'
      }
    </div>
  </div>
</div>