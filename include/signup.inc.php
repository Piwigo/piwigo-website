<?php
$query = '
SELECT
    MAX(account_id)
  FROM ' . PCOM_ACCOUNTS_DB_PREFIX . 'accounts
;';
list($max_account_id) = pwg_db_fetch_row(pwg_query($query));

$nb_accounts = 10;
$median_duration = 9.6;

if (!empty($max_account_id)) {
    $sample_size = 100;

    $query = '
SELECT
    TIMESTAMPDIFF(SECOND,registered_on,installed_on) AS duration
  FROM ' . PCOM_ACCOUNTS_DB_PREFIX . 'accounts
  WHERE account_id > ' . ($max_account_id - $sample_size) . '
    AND installed_on IS NOT NULL
  ORDER BY duration ASC
;';
    $durations = query2array($query, null, 'duration');
    if (count($durations) == $sample_size) {
        $nb_accounts = $sample_size;
        $median_duration = $durations[floor($sample_size / 2)];
    }
}

$template->assign(
    array(
        'STATS_NB_LAST_ACOUNTS' => $nb_accounts,
        'STATS_AVG_DURATION' => sprintf('%.1f', $median_duration),
        'registration_enabled' => conf_get_param('registration_enabled', true),
    )
);

if (isset($_GET['username'])) {
    $template->assign('username', $_GET['username']);
}