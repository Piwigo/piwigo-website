<?php
// +-----------------------------------------------------------------------+
// | This file is part of Piwigo.                                          |
// |                                                                       |
// | For copyright and license information, please view the COPYING.txt    |
// | file that was distributed with this source code.                      |
// +-----------------------------------------------------------------------+
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Un accesso non autenticato al percorso in i.php consente la scrittura di immagini derivate al di fuori della directory di cache prevista.';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'Stored XSS tramite il nome dell\'album nel pannello di amministrazione';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Escalation dei privilegi da Amministratore a Webmaster tramite modifica della password del profilo amministratore (nessuna password corrente)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Deserializzazione in extend_for_templates';
$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'Bypass del meccanismo di autorizzazione dei metodi vietati per le API key, dovuto a una differenza nella valutazione della sorgente della richiesta tra il processo di dispatch e quello di enforcement.';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo Zip Slip (Path Traversal) negli Installatori di Estensioni → Scrittura di file arbitraria → Potenziale RCE';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'Vulnerabilità XSS tramite attributo HTML non racchiuso tra virgolette nella pagina di reimpostazione della password.';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Modifica, disattivazione, attivazione e cancellazione delle lingue via CSRF';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'La manomissione delle preferenze dell\'utente non autenticato porta all\'inclusione di un accesso non autenticato ad un file predefinito ed all\'esecuzione condizionale di codice PHP.';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Il metodo webservice senza autenticazione consente una crescita persistente del database (esaurimento delle risorse/DoS).';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'Iniezione SQL senza autenticazione in pwg.images.filteredSearch.create';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Appropriazione dell\'account tramite normalizzazione Unicode';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'Stored XSS mediante Guest Comment Author Field non autenticato → Appropriazione account amministratore';
$lang['porg_issue_2536'] = 'PHP avvisi/errori.';
$lang['porg_issue_2571'] = '[gestione massiva] l\'operazione di cancellazione immagini appare eseguita ma in realtà fallisce';
$lang['porg_issue_2573'] = 'Problema nell\'utilizzo di pwg.images.getInfo con l\'intestazione X-PIWIGO-API - Parametri mancanti: image_id';
$lang['porg_issue_2587'] = 'standard_pages: il percorso cookie non è definito per  registrazione, password e profilo';
$lang['porg_issue_2600'] = 'rendere uploadAsync più robusto';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Gli amministratori non-webmaster possono gestire i temi tramite pwg.themes.performAction';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + stored XSS nelle preferenze utente per RCE';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'Pre-autenticazione Stored XSS → admin Attività Utente tramite il parametro di richiesta `method`';