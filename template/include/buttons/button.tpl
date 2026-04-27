{if $variant|default:'cta_primary' eq 'cta_primary'}
  {assign var='classes' value='btn-cta btn-text cta-primary'}
  {assign var='default_label' value='CTA principale'}
{elseif $variant eq 'cta_primary_green'}
  {assign var='classes' value='btn-cta btn-text cta-primary-green'}
  {assign var='default_label' value='CTA principale verte'}
{elseif $variant eq 'cta_secondary'}
  {assign var='classes' value='btn-cta btn-text cta-secondary'}
  {assign var='default_label' value='CTA secondaire'}
{elseif $variant eq 'menu_btn_blue'}
  {assign var='classes' value='btn-menu menu-btn-blue'}
  {assign var='default_label' value='Menu blue'}
{elseif $variant eq 'menu_btn_green'}
  {assign var='classes' value='btn-menu menu-btn-green'}
  {assign var='default_label' value='Menu green'}
{elseif $variant eq 'menu_btn_orange'}
  {assign var='classes' value='btn-menu menu-btn-orange'}
  {assign var='default_label' value='Menu orange'}
{elseif $variant eq 'menu_btn_white'}
  {assign var='classes' value='btn-menu menu-btn-white'}
  {assign var='default_label' value='Menu white'}
{else}
  {assign var='classes' value='btn-cta btn-text cta-primary'}
  {assign var='default_label' value='CTA principale'}
{/if}

<a href="{$href|default:'#'}" class="{$classes}">{$label|default:$default_label}</a>
