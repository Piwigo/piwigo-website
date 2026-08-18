<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/use_cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/get_started.css">

<div class="use-cases-content">
  {include file='template/use_cases/parts/top_page.tpl' title={'use cases association header title'|translate} description={'use cases association header description'|translate} img_src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/27/20260727160506-83c9409f-xl.webp"}

  <section class="tourism-carousel">
    <div class="container-fluid px-0">
      <div class="logos-marquee-wrapper">
        <div class="logos-marquee-track">
          {foreach $association_logos as $logo}
            <div class="logos-marquee-item">
              <a>
                <img class="logo-remove-bg d-block" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
              </a>
            </div>
          {/foreach}
          {* duplicate so it doesn't end *}
          {foreach $association_logos as $logo}
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


  {assign var="association_features" value=[
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/28/20260728110448-4bd818cc-me.webp",
  'title' => {'use cases association thumb1 title'|translate},
  'description' => {'use cases association thumb1 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/28/20260728110445-fd3b0f16-me.webp",
  'title' => {'use cases association thumb2 title'|translate},
  'description' => {'use cases association thumb2 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/28/20260728110440-6cbad6ef-me.webp",
  'title' => {'use cases association thumb3 title'|translate},
  'description' => {'use cases association thumb3 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/28/20260728110502-3ec53e10-me.webp",
  'title' => {'use cases association thumb4 title'|translate},
  'description' => {'use cases association thumb4 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/28/20260728110443-215e6b6b-me.webp",
  'title' => {'use cases association thumb5 title'|translate},
  'description' => {'use cases association thumb5 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/28/20260728110438-e4b34640-me.webp",
  'title' => {'use cases association thumb6 title'|translate},
  'description' => {'use cases association thumb6 description'|translate}
  ]
  ]}

  {include file='template/use_cases/parts/thumbs.tpl' features=$association_features title={'use cases association thumbs title'|translate} description={'use cases association thumbs description'|translate}}

  {assign var="association_challenges_list" value=[
  {'use cases association challenge li1'|translate},
  {'use cases association challenge li2'|translate},
  {'use cases association challenge li3'|translate},
  {'use cases association challenge li4'|translate},
  {'use cases association challenge li5'|translate},
  {'use cases association challenge li6'|translate}
  ]}
  {include file='template/use_cases/parts/challenge.tpl'
  title={'use cases association challenge title'|translate}
  description={'use cases association challenge description'|translate}
  title2={'use cases tourism challenge title2'|translate}
  list_items=$association_challenges_list
  subtext={'use cases association challenge subtext'|translate}
  }

  {assign var="how_cards" value=[
  [
    'icon' => "icon-pics",
'title' => {'use cases association how card1 title'|translate},
  'description' => {'use cases association how card1 description'|translate}
  ],
  [
  'icon' => "icon-help",
  'title' => {'use cases association how card2 title'|translate},
  'description' => {'use cases association how card2 description'|translate}
  ],
  [
  'icon' => "icon-share",
  'title' => {'use cases association how card3 title'|translate},
  'description' => {'use cases association how card3 description'|translate}
  ],
  [
  'icon' => "icon-contribute",
  'title' => {'use cases association how card4 title'|translate},
  'description' => {'use cases association how card4 description'|translate}
  ],
  [
  'icon' => "icon-photographers",
  'title' => {'use cases association how card5 title'|translate},
  'description' => {'use cases association how card5 description'|translate}
  ],
  [
  'icon' => "icon-doc",
  'title' => {'use cases association how card6 title'|translate},
  'description' => {'use cases association how card6 description'|translate}
  ]
  ]}
  {include file='template/use_cases/parts/how.tpl' title={'use cases association how title'|translate} list_items=$how_cards}

  {include file='template/use_cases/parts/discover.tpl' title={'use cases discover title'|translate} description={'use cases discover description'|translate} btn_text={'use cases discover btn text'|translate}}

  {assign var="stacks_cards" value=[
  [
'icon' => "icon-monk",
'title' => {'easy for everyone to use'|translate},
  'description' => {'use cases association stacks card1 description'|translate}
  ],
  [
  'icon' => "icon-stonks",
  'title' => {'scales with your organization'|translate},
  'description' => {'use cases association stacks card2 description'|translate}
  ],
  [
  'icon' => "icon-help",
  'title' => {'built for collaboration'|translate},
  'description' => {'use cases association stacks card3 description'|translate}
  ],
  [
  'icon' => "icon-secu",
  'title' => {'your data stays yours'|translate},
  'description' => {'use cases association stacks card4 description'|translate}
  ],
  [
  'icon' => "icon-contribute",
  'title' => {'open source and sustainable'|translate},
  'description' => {'use cases association stacks card5 description'|translate}
  ]]}
  {include file='template/use_cases/parts/stacks.tpl' page='public-sector' title={'use cases association stacks title'|translate} list_items=$stacks_cards}

  {include file='template/use_cases/parts/host.tpl' title={'use cases public host title'|translate} description={'use cases association host description'|translate} cloud_description={'use cases public host cloud'|translate} self_hosted_description={'use cases public host self'|translate}}

  {include file='template/use_cases/parts/comments.tpl' title={'use cases association comments title'|translate} comments=$association_testimonials btn_text={'use cases public comments btn'|translate} btn_link="{$PORG_ROOT}{$URL.users}{$URL_PARAM_SEPARATOR}use_case=association" no_use=true}

  {include file='template/use_cases/parts/start.tpl' title={'use cases association start title'|translate} description={'use cases association start description'|translate}}
</div>