<?php
global $template, $lang_info, $newsletters_nbr;

$newsletters = porg_get_newsletters($lang_info['code']);

if (isset($newsletters))
{
  $template->assign(
    array(
      'newsletters' => $newsletters,
      'newsletters_length' => count($newsletters),
      'newsletters_total_pages' => ceil(count($newsletters) / 12),
    )
  );
}
?>