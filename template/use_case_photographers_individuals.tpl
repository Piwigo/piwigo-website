<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/use_cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/get_started.css">

<div class="use-cases-content">
  {include file='template/use_cases/parts/top_page.tpl' title={'use cases perso header title'|translate}
  description={'use cases perso header description'|translate}
  img_src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151050-81f4b0ec-xl.webp"}

  {assign var="perso_features" value=[
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151057-1c547e44-me.webp",
  'title' => {'use cases perso thumb1 title'|translate},
  'description' => {'use cases perso thumb1 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151112-b9177eb8-me.webp",
  'title' => {'use cases perso thumb2 title'|translate},
  'description' => {'use cases perso thumb2 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151101-07083713-me.webp",
  'title' => {'use cases perso thumb3 title'|translate},
  'description' => {'use cases perso thumb3 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151104-227e42e1-me.webp",
  'title' => {'use cases perso thumb4 title'|translate},
  'description' => {'use cases perso thumb4 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151052-a88c1c74-me.webp",
  'title' => {'use cases perso thumb5 title'|translate},
  'description' => {'use cases perso thumb5 description'|translate}
  ],
  [
  'img_src' => "https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/30/20260730151103-924be4cc-me.webp",
  'title' => {'use cases perso thumb6 title'|translate},
  'description' => {'use cases perso thumb6 description'|translate}
  ]
  ]}

  {include file='template/use_cases/parts/thumbs.tpl' features=$perso_features title={'use cases perso thumbs title'|translate}
  description={'use cases perso thumbs description'|translate}}


  {assign var="how_cards" value=[
  [
  'icon' => "icon-organize",
  'title' => {'use cases perso how card1 title'|translate},
  'description' => {'use cases perso how card1 description'|translate}
  ],
  [
  'icon' => "icon-cellphone",
  'title' => {'use cases perso how card2 title'|translate},
  'description' => {'use cases perso how card2 description'|translate}
  ],
  [
  'icon' => "icon-shield",
  'title' => {'use cases perso how card3 title'|translate},
  'description' => {'use cases perso how card3 description'|translate}
  ],
  [
  'icon' => "icon-star-1",
  'title' => {'use cases perso how card4 title'|translate},
  'description' => {'use cases perso how card4 description'|translate}
  ],
  [
  'icon' => "icon-icon28",
  'title' => {'use cases perso how card5 title'|translate},
  'description' => {'use cases perso how card5 description'|translate}
  ],
  [
  'icon' => "icon-search",
  'title' => {'use cases perso how card6 title'|translate},
  'description' => {'use cases perso how card6 description'|translate}
  ]
  ]}
  {include file='template/use_cases/parts/how.tpl' title={'use cases perso how title'|translate} list_items=$how_cards}

  {include file='template/use_cases/parts/discover.tpl' title={'use cases discover title'|translate}
  description={'use cases discover description'|translate} btn_text={'use cases discover btn text'|translate}}

  {assign var="stacks_cards" value=[
  [
  'icon' => "icon-pics",
  'title' => {'built for growing photo libraries'|translate},
  'description' => {'use cases perso stacks card1 description'|translate}
  ],
  [
  'icon' => "icon-monk",
  'title' => {'powerful, yet easy to use'|translate},
  'description' => {'use cases perso stacks card2 description'|translate}
  ],
  [
  'icon' => "icon-paint",
  'title' => {'highly customizable'|translate},
  'description' => {'use cases perso stacks card3 description'|translate}
  ],
  [
  'icon' => "icon-secu",
  'title' => {'your photos stay yours'|translate},
  'description' => {'use cases perso stacks card4 description'|translate}
  ],
  [
  'icon' => "icon-contribute",
  'title' => {'open source and built to last'|translate},
  'description' => {'use cases perso stacks card5 description'|translate}
  ]]}
  {include file='template/use_cases/parts/stacks.tpl' page='public-sector' title={'use cases perso stacks title'|translate}
  list_items=$stacks_cards}

  {include file='template/use_cases/parts/host.tpl' title={'use cases public host title'|translate}
  description={'use cases perso host description'|translate} cloud_description={'use cases public host cloud'|translate}
  self_hosted_description={'use cases public host self'|translate}}

  <section class="container container-features">
    <div class="row text-center features-content justify-content-center">
      <div class="col-md-9 text-center justify-content-center row">
        <h2 class="text-center mb-5">{'use cases perso use title'|translate}</h2>
        {assign var="col_count" value=0}
        {foreach $users_examples as $user}
          {if $col_count % 2 == 0}
            <div class="col-12 col-md-4 {if $col_count >= 4}d-none d-md-block{/if}">
            {/if}
            <div class="card">
              <img class="card-img-top"
                src="{$user.derivatives.medium.url|replace:'_datas/c/v/7/cv7jpz6hf8/i/':'i.php?/'}">
              <div class="">
                <div class="col-12">
                  <p class="sector-testimonial d-inline-block pe-2 mb-0">{"Photographers & individuals"|translate}</p>
                  {if isset($user.country)}<p class="d-inline-block country-testimonial"><span
                        class="flag-icon flag-icon-{$user.country|lower} me-2"></span>{"country_{$user.country}"|translate}
                  </p>{/if}
                </div>
                {if isset($user.page_url)}
                  <a href="{$user.page_url}" target='blank' class="non-decorated-text">
                    <p class="author name-testimonial">{$user.name}<i class="icon-ext1"></i></p>
                  </a>
                {else}
                  <p class="author name-testimonial">{$user.name}</p>
                {/if}
                {if isset($user.comment)}<p class="p-testimonial">{$user.comment}</p>{/if}
              </div>
            </div>
            {assign var="col_count" value=$col_count+1}
            {if $col_count % 2 == 0}
            </div>
          {/if}
        {/foreach}
        <div class="col-12 d-md-block d-none">
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'use cases perso use title'|translate}
          href="{$PORG_ROOT}{$URL.users}{$URL_PARAM_SEPARATOR}use_case=perso&category=example" class="mt-5"}
        </div>
        <div class="col-12 d-md-none">
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Show more'|translate}
          href="{$PORG_ROOT}{$URL.users}{$URL_PARAM_SEPARATOR}use_case=perso&category=example" class="mt-5"}
        </div>
      </div>
    </div>
  </section>

  {include file='template/use_cases/parts/comments.tpl' title={'use cases perso comments title'|translate}
  comments=$perso_testimonials btn_text={'use cases public comments btn'|translate}
  btn_link="{$PORG_ROOT}{$URL.users}{$URL_PARAM_SEPARATOR}use_case=perso&category=testimonial"}

  {include file='template/use_cases/parts/start.tpl' title={'use cases perso start title'|translate}
  description={'use cases perso start description'|translate}}
</div>