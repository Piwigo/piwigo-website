<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/use_cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/get_started.css">

{include file='template/use_cases/parts/top_page.tpl' title={'use cases public header title'|translate} description={'use cases public header description'|translate} img_src="{$PORG_ROOT_URL}images/use-case/tourism_header.webp"}

<section class="tourism-carousel">
  <div class="container-fluid px-0">
    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $public_sector_logos as $logo}
          <div class="logos-marquee-item">
            <a>
              <img class="logo-remove-bg d-block" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </a>
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $public_sector_logos as $logo}
          <div class="logos-marquee-item">
            <a>
              <img class="logo-remove-bg d-block" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </a>
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</section>

{assign var="public_features" value=[
  [
    'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_1.webp",
'title' => {'use cases public thumb1 title'|translate},
'description' => {'use cases public thumb1 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_2.webp",
'title' => {'use cases public thumb2 title'|translate},
'description' => {'use cases public thumb2 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_3.webp",
'title' => {'use cases public thumb3 title'|translate},
'description' => {'use cases public thumb3 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_4.webp",
'title' => {'use cases public thumb4 title'|translate},
'description' => {'use cases public thumb4 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_5.webp",
'title' => {'use cases public thumb5 title'|translate},
'description' => {'use cases public thumb5 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_6.webp",
'title' => {'use cases public thumb6 title'|translate},
'description' => {'use cases public thumb6 description'|translate}
]
]}

{include file='template/use_cases/parts/thumbs.tpl' features=$public_features title={'use cases public thumbs title'|translate} description={'use cases public thumbs description'|translate}}

{assign var="public_challenges_list" value=[
  {'use cases public challenge li1'|translate},
{'use cases public challenge li2'|translate},
{'use cases public challenge li3'|translate},
{'use cases public challenge li4'|translate},
{'use cases public challenge li5'|translate},
{'use cases public challenge li6'|translate}
]}
{include file='template/use_cases/parts/challenge.tpl'
  title={'use cases public challenge title'|translate}
description={'use cases public challenge description'|translate}
title2={'use cases tourism challenge title2'|translate}
list_items=$public_challenges_list
subtext={'use cases public challenge subtext'|translate}
}

{assign var="how_cards" value=[
  [
    'icon' => "icon-cloud-oneplace",
'title' => {'use cases public how card1 title'|translate},
'description' => {'use cases public how card1 description'|translate}
],
[
'icon' => "icon-help",
'title' => {'use cases public how card2 title'|translate},
'description' => {'use cases public how card2 description'|translate}
],
[
'icon' => "icon-paint",
'title' => {'use cases public how card3 title'|translate},
'description' => {'use cases public how card3 description'|translate}
],
[
'icon' => "icon-hide",
'title' => {'use cases public how card4 title'|translate},
'description' => {'use cases public how card4 description'|translate}
],
[
'icon' => "icon-flash-1",
'title' => {'built to last'|translate},
'description' => {'use cases public how card5 description'|translate}
],
[
'icon' => "icon-shield",
'title' => {'secure collaboration'|translate},
'description' => {'use cases public how card6 description'|translate}
]
]}
{include file='template/use_cases/parts/how.tpl' title={'use cases public how title'|translate} list_items=$how_cards}
{include file='template/use_cases/parts/discover.tpl' title={'use cases discover title'|translate} description={'use cases discover description'|translate} btn_text={'use cases discover btn text'|translate} btn_link="{$PORG_ROOT}{$URL.signup}"}

{assign var="stacks_cards" value=[
  [
'icon' => "icon-monk",
'title' => {'easy for everyone to use'|translate},
'description' => {'use cases public stacks card1 description'|translate}
],
[
'icon' => "icon-calc",
'title' => {'built to last'|translate},
'description' => {'use cases public stacks card2 description'|translate}
],
[
'icon' => "icon-help",
'title' => {'secure collaboration'|translate},
'description' => {'use cases public stacks card3 description'|translate}
],
[
'icon' => "icon-arrows-cw",
'title' => {'your data stays yours'|translate},
'description' => {'use cases public stacks card4 description'|translate}
],
[
'icon' => "icon-contribute",
'title' => {'open source and sustainable'|translate},
'description' => {'use cases public stacks card5 description'|translate}
]]}
{include file='template/use_cases/parts/stacks.tpl' page='public-sector' title={'use cases public stacks title'|translate} list_items=$stacks_cards}

{include file='template/use_cases/parts/host.tpl' title={'use cases public host title'|translate} description={'use cases public host description'|translate} cloud_description={'use cases public host cloud'|translate} self_hosted_description={'use cases public host self'|translate} cloud_btn_text={'use cases public host cloud btn text'|translate} cloud_btn_link="{$PORG_ROOT}{$URL.signup}" self_hosted_btn_text={'use cases public host self hosted btn text'|translate}}

{include file='template/use_cases/parts/use.tpl' title={'use cases public use title'|translate} description1={'use cases public use description1'|translate} description2={'use cases public use description2'|translate} btn_text={'use cases public use btn text'|translate} btn_link="{$PORG_ROOT}{$URL.indre}" img_src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/02/20260702160631-a2c76169-xl.webp"}

{include file='template/use_cases/parts/comments.tpl' title={'use cases public comments title'|translate} comments=$public_sector_testimonials btn_text={'use cases public comments btn'|translate} btn_link="{$PORG_ROOT}{$URL.users}{if $URL.users|strstr:'?'}&{else}?{/if}use_case=public"}

{include file='template/use_cases/parts/start.tpl' title={'use cases public start title'|translate} description={'use cases public start description'|translate}}