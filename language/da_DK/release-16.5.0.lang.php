<?php
// +-----------------------------------------------------------------------+
// | This file is part of Piwigo.                                          |
// |                                                                       |
// | For copyright and license information, please view the COPYING.txt    |
// | file that was distributed with this source code.                      |
// +-----------------------------------------------------------------------+
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + gemt XSS i brugerindstillinger kunne føre til RCE';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo Zip Slip (mappegennemløb) i installering af udvidelser kunne føre til vilkårlig filskrivning, hvilket igen kunne potentielt føre til RCE';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS via HTML-attribut uden citationstegn på side til nulstilling af adgangskode';
$lang['porg_issue_2536'] = 'PHP-advarsler/-fejl.';
$lang['porg_issue_2571'] = '[batch_manager] sletning af fotografi rapporteres som gennemført, men intet slettes';
$lang['porg_issue_2573'] = 'Problem ved anvendelse af pwg.images.getInfo med headeren X-PIWIGO-API - Manglende parametre: image_id';
$lang['porg_issue_2587'] = 'standard_pages: cookie_path er ikke defineret ved registrering, adgangskode og profil';
$lang['porg_issue_2600'] = 'Gør uploadAsync mere robust';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Administrator, som ikke er webmaster, kan håndtere temaer via pwg.themes.performAction';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'Præ-autentificeret gemt XSS kunne føre til administrator-brugeraktivitet via requestparameteret `method`';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Ændring, deaktivering, aktivering og sletning af sprog via CSRF';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'Manipulation med uautentificeret gæsts indstillinger kunne føre til præ-autentificeret permanent indlæsning af fil og udførelse af PHP-kode under visse betingelser';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Uautentificeret webservicemetode gjorde det muligt at få databasen til at vokse (udmattelse af ressourcer/overbelastningsangreb)';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'Uautentificeret SQL-indsprøjtning i pwg.images.filteredSearch.create';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Overtagelse af konto via unicode-normalisering';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'Gemt XSS via uautentificeret gæsts kommentarforfatterfelt kunne føre til overtagelse af administratorkonto';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Uautentificeret mappegennemløb i i.php muliggjorde skrivning af afledte billeder undenfor den tilsigtede cachemappe _data/i';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'Gemt XSS via albumnavn i administrationspanel';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Rettighedsforøgelse fra administrator til webmaster via administatorprofilens adgangskodeændring (ingen aktuel adgangskode)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Deserialisering i extend_for_templates';
$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'API-nøgles forbudte metoders autorisationsadgang omgået af en afsendelses-/håndhævelsesforespørgsel-kildeforskel';