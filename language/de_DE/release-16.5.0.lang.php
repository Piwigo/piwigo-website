<?php
// +-----------------------------------------------------------------------+
// | This file is part of Piwigo.                                          |
// |                                                                       |
// | For copyright and license information, please view the COPYING.txt    |
// | file that was distributed with this source code.                      |
// +-----------------------------------------------------------------------+
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS über ein nicht in Anführungszeichen gesetztes HTML-Attribut auf der Seite zum Zurücksetzen des Passworts';
$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'Umgehung der Autorisierungssperre für unzulässige Methoden des API-Schlüssels durch eine Differenz zwischen Dispatch und Enforcement-Anfragequelle';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo-Zip-Slip (Pfadüberlauf) in Erweiterungsinstallationsprogrammen → Beliebiges Schreiben in Dateien → Mögliche RCE';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Administrator → Erweiterung der Webmaster-Rechte durch Änderung des Passworts im Admin-Profil (ohne Angabe des aktuellen Passworts)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Deserialisierung in „extend_for_templates“';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Ein nicht authentifizierter Pfaddurchlauf in „i.php“ ermöglicht das Schreiben abgeleiteter Bilder außerhalb des vorgesehenen Cache-Verzeichnisses „_data/i“.';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'Gespeichertes XSS über den Albumnamen im Admin-Bereich';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'Gespeichertes XSS über das Feld „Autor“ bei nicht authentifizierten Gastkommentaren → Übernahme des Admin-Kontos';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Eine nicht authentifizierte Webservice-Methode führt zu einem anhaltenden Anstieg der Datenbankgröße (Ressourcenerschöpfung/DoS)';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'Nicht authentifizierte SQL-Injection in pwg.images.filteredSearch.create';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Kontoübernahme durch Unicode-Normalisierung';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'XSS vor der Authentifizierung → Benutzeraktivität des Administrators über den Anfrageparameter `method`';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Ändern, Deaktivieren, Aktivieren und Löschen von Sprachen über CSRF';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'Die Manipulation von Gastpräferenzen durch nicht authentifizierte Benutzer führt zur Einbindung einer festen Datei vor der Authentifizierung und zur bedingten Ausführung von PHP-Code';
$lang['porg_issue_2587'] = 'standard_pages: „cookie_path“ ist auf den Seiten „Registrieren“, „Passwort“ und „Profil“ nicht definiert.';
$lang['porg_issue_2600'] = '„uploadAsync“ robuster gestalten';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Administratoren, die keine Webmaster sind, können Designs über pwg.themes.performAction verwalten.';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + Stored XSS in den Benutzereinstellungen führt zu RCE';
$lang['porg_issue_2536'] = 'PHP-Warnungen/Fehler.';
$lang['porg_issue_2571'] = '[batch_manager] Die Löschung der Fotos wird als erfolgreich gemeldet, es wird jedoch nichts gelöscht';
$lang['porg_issue_2573'] = 'Problem bei der Verwendung von „pwg.images.getInfo“ mit dem Header „X-PIWIGO-API“ – Fehlende Parameter: image_id';