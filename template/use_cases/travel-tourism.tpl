{include file='template/use_cases/parts/top_page.tpl' title={'use cases tourism header title'|translate} description={'use cases tourism header description'|translate} img_src="{$PORG_ROOT_URL}images/use-case/tourism_header.webp"}

<section class="tourism-carousel">
  <div class="container-fluid px-0">
    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <img class="logo-remove-bg" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <img class="logo-remove-bg" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
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
'title' => {'use cases tourism how card5 title'|translate},
'description' => {'use cases tourism how card5 description'|translate}
],
[
'icon' => "icon-shield",
'title' => {'use cases tourism how card6 title'|translate},
'description' => {'use cases tourism how card6 description'|translate}
]
]}
{include file='template/use_cases/parts/how.tpl' title={'use cases tourism how title'|translate} list_items=$how_cards}