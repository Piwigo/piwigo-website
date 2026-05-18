<?php
/*$query = '
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
} */


$db_prefix = defined('PCOM_ACCOUNTS_DB_PREFIX') ? PCOM_ACCOUNTS_DB_PREFIX : 'pcom_';

$nb_accounts = 10;
$median_duration = 9.6;
$max_account_id = null;


try {
	$query = 'SELECT MAX(account_id) FROM ' . $db_prefix . 'accounts;';
	$result = pwg_query($query);
	if ($result) {
		list($max_account_id) = pwg_db_fetch_row($result);
	}
} catch (Exception $e) {
}

if (!empty($max_account_id)) {
	$sample_size = 100;

	$query = '
SELECT
    TIMESTAMPDIFF(SECOND,registered_on,installed_on) AS duration
  FROM ' . $db_prefix . 'accounts
  WHERE account_id > ' . ($max_account_id - $sample_size) . '
    AND installed_on IS NOT NULL
  ORDER BY duration ASC
;';

	$durations = query2array($query, null, 'duration');

	if (count($durations) >= 1) {
		$nb_accounts = count($durations);
		$median_duration = $durations[floor($nb_accounts / 2)];
	}
}

$porg_urls = porg_get_page_urls();

$template->assign(
	array(
		'STATS_NB_LAST_ACOUNTS' => $nb_accounts,
		'STATS_AVG_DURATION' => sprintf('%.1f', $median_duration),
		'registration_enabled' => conf_get_param('registration_enabled', true),
		'SIGNUP_CHECK_LABEL' => sprintf(
			l10n('signup_check_RPG'),
			$porg_urls['terms_of_service'],
			$porg_urls['privacy']
		),
		'STATS_GLOBAL_INSTALLS' => l10n('+%s', '100.000'),
    'STATS_GLOBAL_FILES'    => l10n('+%s millions', '67'),
    'STATS_GLOBAL_UPTIME'   => l10n('+%s', '99,98%'),
    'STATS_GLOBAL_LANGS'    => l10n('+%d', 59),
    'STATS_GLOBAL_CLIENTS'  => l10n('+%s', '5.800'),
	)

	
);