<?php
$lang['porg_issue_2600'] = 'uploadAsync robuuster maken';
$lang['porg_issue_2587'] = 'standard_pages: cookie_path is niet gedefinieerd bij registratie, wachtwoord en profiel';
$lang['porg_issue_2573'] = 'Probleem met pwg.images.getInfo met de header X-PIWIGO-API - Ontbrekende parameters: image_id';
$lang['porg_issue_2571'] = '[batch_manager] het verwijderen van foto\'s meldt succes maar verwijdert niets';
$lang['porg_issue_2536'] = 'PHP-waarschuwingen/fouten.';

$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'De autorisatiecontrole op voor API-sleutels verboden methoden wordt omzeild door een verschil in verzoekbron tussen dispatching en controle';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'Opgeslagen XSS vóór authenticatie → gebruikersactiviteit in het beheer via de verzoekparameter `method`';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Escalatie van rechten van beheerder naar webmaster via het wijzigen van het wachtwoord in het beheerdersprofiel (zonder huidig wachtwoord) ';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'Opgeslagen XSS via het auteursveld van reacties van niet-ingelogde gasten → overname van het beheerdersaccount';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo Zip Slip (path traversal) in de installatieprogramma\'s van extensies → willekeurig schrijven van bestanden → mogelijke RCE';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'Manipulatie van gastvoorkeuren zonder authenticatie leidt tot het insluiten van een vast bestand vóór authenticatie en voorwaardelijke uitvoering van PHP-code';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Path traversal zonder authenticatie in i.php maakt het schrijven van afgeleide afbeeldingen buiten de bedoelde cachemap _data/i mogelijk';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS via een HTML-attribuut zonder aanhalingstekens op de pagina voor wachtwoordherstel';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'Opgeslagen XSS via de albumnaam in het beheerpaneel';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Een webservicemethode zonder authenticatie laat de database blijvend groeien (uitputting van middelen/DoS)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Deserialisatie in extend_for_templates';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + opgeslagen XSS in gebruikersvoorkeuren leidend tot RCE';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Een beheerder die geen webmaster is, kan thema\'s beheren via pwg.themes.performAction';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Wijzigen, uitschakelen, inschakelen en verwijderen van talen via CSRF';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Accountovername via Unicode-normalisatie';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'SQL-injectie zonder authenticatie in pwg.images.filteredSearch.create';
?>
