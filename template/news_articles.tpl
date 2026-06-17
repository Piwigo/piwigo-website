{foreach from=$topics item=topic}
  <div class="col-md-6 col-lg-4 mb-5">
    <div class="news-releases-card">
      {if isset($topic.img_src)}
        <img src="{$topic.img_src}" class="" alt="">
      {/if}
      <div class="news-card-body">
        <h1 class="small-text green-text mb-0">{$topic.posted}</h1>
        <h2 class="h2-mobile-top-page mb-0">{$topic.subject}</h2>
        <p class="mb-0 pricing-list news-card-description">{$topic.message}{if $topic.is_cut}...{/if}</p>
        <div class="mt-auto">
          {include file="./include/buttons/button.tpl" variant='menu_btn_blue' label=$porg_news_card_btn href="{$topic.url}" class="w-100 text-center"}
        </div>
      </div>
    </div>
  </div>
{/foreach}