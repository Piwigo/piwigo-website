<?php
global $template, $lang_info, $newsletters_nbr;

$all_newsletters = porg_get_newsletters($lang_info['code']);

if (isset($all_newsletters))
{
  $total_count = count($all_newsletters);
  $per_page = 12;
  $newsletter_card_template = realpath(PORG_PATH . 'template/include/card/newsletter_card.tpl');

  // Only pass the first page (12 items) to the template to avoid loading all items
  $newsletters = array_slice($all_newsletters, 0, $per_page, true);

  $template->assign(
    array(
      'newsletters' => $newsletters,
      'newsletters_length' => $total_count,
      'newsletters_total_pages' => ceil($total_count / $per_page),
      'newsletter_card_template' => $newsletter_card_template,
    )
  );
}
?>