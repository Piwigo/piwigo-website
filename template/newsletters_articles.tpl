{foreach from=$newsletters item=news}
  {include file="template/include/card/newsletter_card.tpl" image="{$news.image}" title="{$news.title}"
  date="{$news.date_label}"
  desc="{$news.summary}" href="{$news.url}" id="{$news.id}"}
{/foreach}