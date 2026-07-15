<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/use_cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/get_started.css">

{include file='template/use_cases/parts/top_page.tpl' title={'use cases company header title'|translate} description={'use cases company header description'|translate} img_src="{$PORG_ROOT_URL}images/use-case/tourism_header.webp"}

<section class="tourism-carousel">
  <div class="container-fluid px-0">
    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $company_logos as $logo}
          <div class="logos-marquee-item">
            <a href="{$logo.url}" target="_blank" rel="noopener noreferrer">
              <img class="logo-remove-bg" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </a>
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $company_logos as $logo}
          <div class="logos-marquee-item">
            <a href="{$logo.url}" target="_blank" rel="noopener noreferrer">
              <img class="logo-remove-bg" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
            </a>
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</section>


{assign var="company_features" value=[
  [
    'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_1.webp",
'title' => {'use cases company thumb1 title'|translate},
'description' => {'use cases company thumb1 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_2.webp",
'title' => {'use cases company thumb2 title'|translate},
'description' => {'use cases company thumb2 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_3.webp",
'title' => {'use cases company thumb3 title'|translate},
'description' => {'use cases company thumb3 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_4.webp",
'title' => {'use cases company thumb4 title'|translate},
'description' => {'use cases company thumb4 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_5.webp",
'title' => {'use cases company thumb5 title'|translate},
'description' => {'use cases company thumb5 description'|translate}
],
[
'img_src' => "{$PORG_ROOT_URL}images/use-case/tourism_thumb_6.webp",
'title' => {'use cases company thumb6 title'|translate},
'description' => {'use cases company thumb6 description'|translate}
]
]}

{include file='template/use_cases/parts/thumbs.tpl' features=$company_features title={'use cases company thumbs title'|translate} description={'use cases company thumbs description'|translate}}

{assign var="company_challenges_list" value=[
  {'use cases company challenge li1'|translate},
{'use cases company challenge li2'|translate},
{'use cases company challenge li3'|translate},
{'use cases company challenge li4'|translate},
{'use cases company challenge li5'|translate}
]}
{include file='template/use_cases/parts/challenge.tpl'
  title={'use cases company challenge title'|translate}
description={'use cases company challenge description'|translate}
title2={'use cases tourism challenge title2'|translate}
list_items=$company_challenges_list
subtext={'use cases company challenge subtext'|translate}
}

{assign var="how_cards" value=[
  [
    'icon' => "icon-cloud-oneplace",
'title' => {'use cases company how card1 title'|translate},
'description' => {'use cases company how card1 description'|translate}
],
[
'icon' => "icon-help",
'title' => {'use cases company how card2 title'|translate},
'description' => {'use cases company how card2 description'|translate}
],
[
'icon' => "icon-paint",
'title' => {'use cases company how card3 title'|translate},
'description' => {'use cases company how card3 description'|translate}
],
[
'icon' => "icon-hide",
'title' => {'use cases company how card4 title'|translate},
'description' => {'use cases company how card4 description'|translate}
],
[
'icon' => "icon-flash-1",
'title' => {'scales with your business'|translate},
'description' => {'use cases company how card5 description'|translate}
],
[
'icon' => "icon-shield",
'title' => {'built for collaboration'|translate},
'description' => {'use cases company how card6 description'|translate}
]
]}
{include file='template/use_cases/parts/how.tpl' title={'use cases company how title'|translate} list_items=$how_cards}
{include file='template/use_cases/parts/discover.tpl' title={'use cases discover title'|translate} description={'use cases discover description'|translate} btn_text={'use cases discover btn text'|translate} btn_link="{$PORG_ROOT}{$URL.signup}"}

{assign var="stacks_cards" value=[
  [
'icon' => "icon-monk",
'title' => {'easy for everyone to use'|translate},
'description' => {'use cases company stacks card1 description'|translate}
],
[
'icon' => "icon-calc",
'title' => {'scales with your business'|translate},
'description' => {'use cases company stacks card2 description'|translate}
],
[
'icon' => "icon-help",
'title' => {'built for collaboration'|translate},
'description' => {'use cases company stacks card3 description'|translate}
],
[
'icon' => "icon-arrows-cw",
'title' => {'your data stays yours'|translate},
'description' => {'use cases company stacks card4 description'|translate}
],
[
'icon' => "icon-contribute",
'title' => {'open source and sustainable'|translate},
'description' => {'use cases company stacks card5 description'|translate}
]]}
{include file='template/use_cases/parts/stacks.tpl' page='public-sector' title={'use cases company stacks title'|translate} list_items=$stacks_cards}

{include file='template/use_cases/parts/host.tpl' title={'use cases public host title'|translate} description={'use cases tourism host description'|translate} cloud_description={'use cases public host cloud'|translate} self_hosted_description={'use cases public host self'|translate}}

{include file='template/use_cases/parts/use.tpl' title={'use cases company use title'|translate} description1={'use cases company use description1'|translate} description2={'use cases company use description2'|translate} btn_text={'use cases public use btn text'|translate} btn_link="{$PORG_ROOT}{$URL.wessex}" img_src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/02/20260702160631-a2c76169-xl.webp"}

{include file='template/use_cases/parts/comments.tpl' title={'use cases company comments title'|translate} comments=$company_testimonials btn_text={'use cases public comments btn'|translate} btn_link="{$PORG_ROOT}{$URL.users}{if $URL.users|strstr:'?'}&{else}?{/if}use_case=company"}

{include file='template/use_cases/parts/start.tpl' title={'use cases company start title'|translate} description={'use cases company start description'|translate}}