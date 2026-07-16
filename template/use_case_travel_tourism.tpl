<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/use_cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/get_started.css">

{include file='template/use_cases/parts/top_page.tpl' title={'use cases tourism header title'|translate} description={'use cases tourism header description'|translate} img_src="{$PORG_ROOT_URL}images/use-case/tourism_header.webp"}

<section class="tourism-carousel">
  <div class="container-fluid px-0">
    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <a>
              <img class="logo-remove-bg d-block" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </a>
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $tourism_logos as $logo}
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

{assign var="tourism_features" value=[
  [
    'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_1.webp",
'title' => {'use cases tourism thumb1 title'|translate},
'description' => {'use cases tourism thumb1 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_2.webp",
'title' => {'use cases tourism thumb2 title'|translate},
'description' => {'use cases tourism thumb2 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_3.webp",
'title' => {'use cases tourism thumb3 title'|translate},
'description' => {'use cases tourism thumb3 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_4.webp",
'title' => {'use cases tourism thumb4 title'|translate},
'description' => {'use cases tourism thumb4 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_5.webp",
'title' => {'use cases tourism thumb5 title'|translate},
'description' => {'use cases tourism thumb5 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_6.webp",
'title' => {'use cases tourism thumb6 title'|translate},
'description' => {'use cases tourism thumb6 description'|translate}
]
]}

{include file='template/use_cases/parts/thumbs.tpl' features=$tourism_features title={'use cases tourism thumbs title'|translate} description={'use cases tourism thumbs description'|translate}}

{assign var="tourism_challenges_list" value=[
  {'use cases tourism challenge li1'|translate},
{'use cases tourism challenge li2'|translate},
{'use cases tourism challenge li3'|translate},
{'use cases tourism challenge li4'|translate},
{'use cases tourism challenge li5'|translate}
]}
{include file='template/use_cases/parts/challenge.tpl'
  title={'use cases tourism challenge title'|translate}
description={'use cases tourism challenge description'|translate}
title2={'use cases tourism challenge title2'|translate}
list_items=$tourism_challenges_list
subtext={'use cases tourism challenge subtext'|translate}
}

{assign var="how_cards" value=[
  [
    'icon' => "icon-cloud-oneplace",
'title' => {'use cases tourism how card1 title'|translate},
'description' => {'use cases tourism how card1 description'|translate}
],
[
'icon' => "icon-help",
'title' => {'use cases tourism how card2 title'|translate},
'description' => {'use cases tourism how card2 description'|translate}
],
[
'icon' => "icon-paint",
'title' => {'use cases tourism how card3 title'|translate},
'description' => {'use cases tourism how card3 description'|translate}
],
[
'icon' => "icon-hide",
'title' => {'use cases tourism how card4 title'|translate},
'description' => {'use cases tourism how card4 description'|translate}
],
[
'icon' => "icon-flash-1",
'title' => {'scales with your library'|translate},
'description' => {'use cases tourism how card5 description'|translate}
],
[
'icon' => "icon-shield",
'title' => {'built for collaboration'|translate},
'description' => {'use cases tourism how card6 description'|translate}
]
]}
{include file='template/use_cases/parts/how.tpl' title={'use cases tourism how title'|translate} list_items=$how_cards}
{include file='template/use_cases/parts/discover.tpl' title={'use cases discover title'|translate} description={'use cases discover description'|translate} btn_text={'use cases discover btn text'|translate} btn_link="{$PORG_ROOT}{$URL.signup}"}

{assign var="stacks_cards" value=[
  [
'icon' => "icon-monk",
'title' => {'easy for everyone to use'|translate},
'description' => {'use cases tourism stacks card1 description'|translate}
],
[
'icon' => "icon-calc",
'title' => {'scales with your library'|translate},
'description' => {'use cases tourism stacks card2 description'|translate}
],
[
'icon' => "icon-help",
'title' => {'built for collaboration'|translate},
'description' => {'use cases tourism stacks card3 description'|translate}
],
[
'icon' => "icon-arrows-cw",
'title' => {'your data stays yours'|translate},
'description' => {'use cases tourism stacks card4 description'|translate}
],
[
'icon' => "icon-contribute",
'title' => {'open source and sustainable'|translate},
'description' => {'use cases tourism stacks card5 description'|translate}
]]}
{include file='template/use_cases/parts/stacks.tpl' page='tourism' title={'use cases tourism stacks title'|translate} list_items=$stacks_cards}

{include file='template/use_cases/parts/host.tpl' title={'use cases tourism host title'|translate} description={'use cases tourism host description'|translate} cloud_description={'use cases tourism host cloud'|translate} self_hosted_description={'use cases tourism host self'|translate} cloud_btn_text={'use cases tourism host cloud btn text'|translate} cloud_btn_link="{$PORG_ROOT}{$URL.signup}" self_hosted_btn_text={'use cases tourism host self hosted btn text'|translate}}

{include file='template/use_cases/parts/use.tpl' title={'use cases tourism use title'|translate} description1={'use cases tourism use description1'|translate} description2={'use cases tourism use description2'|translate} btn_text={'use cases tourism use btn text'|translate} btn_link="{$PORG_ROOT}{$URL.cotentin}" img_src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/02/20260702160631-a2c76169-xl.webp"}

{include file='template/use_cases/parts/comments.tpl' title={'use cases tourism comments title'|translate} comments=$tourism_testimonials btn_text={'use cases tourism comments btn'|translate} btn_link="{$PORG_ROOT}{$URL.users}{if $URL.users|strstr:'?'}&{else}?{/if}use_case=tourism"}

{include file='template/use_cases/parts/start.tpl' title={'use cases tourism start title'|translate} description={'use cases tourism start description'|translate}}