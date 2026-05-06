{foreach from=$newsletters item=news}
  {include file=$newsletter_card_template image="{$news.image}" title="{$news.title}"
  date="{$news.date_label}"
  desc="{$news.summary}" href="{$news.url}" id="{$news.id}"}
{/foreach}