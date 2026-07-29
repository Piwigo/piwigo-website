<?php

$all_logos = get_ressources("pcomlogos");

$template->assign(
  array(
    'cloud_logos' => $all_logos,
  )
);
