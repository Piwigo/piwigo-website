{if $variant|default:'cta_primary' eq 'cta_primary'}
  {assign var='classes' value='btn-cta btn-text cta-primary'}
{elseif $variant eq 'cta_primary_green'}
  {assign var='classes' value='btn-cta btn-text cta-primary-green'}
{elseif $variant eq 'cta_secondary'}
  {assign var='classes' value='btn-cta btn-text cta-secondary'}
{elseif $variant eq 'menu_btn_blue'}
  {assign var='classes' value='btn-menu menu-btn-blue'}
{elseif $variant eq 'menu_btn_green'}
  {assign var='classes' value='btn-menu menu-btn-green'}
{elseif $variant eq 'menu_btn_orange'}
  {assign var='classes' value='btn-menu menu-btn-orange'}
{elseif $variant eq 'menu_btn_white'}
  {assign var='classes' value='btn-menu menu-btn-white'}
{elseif $variant eq 'menu_btn_main_pink'}
  {assign var='classes' value='btn-menu menu-btn-main-pink'}
{else}
  {assign var='classes' value='btn-cta btn-text cta-primary'}
{/if}

<a href="{$href|default:'#'}" class="{$classes}{if isset($class)} {$class}{/if}" {if isset($target)}target="{$target}" {/if} {if isset($target) && $target eq '_blank'}rel="noopener" {/if}><span>{$label|default:'cta'}</span></a>