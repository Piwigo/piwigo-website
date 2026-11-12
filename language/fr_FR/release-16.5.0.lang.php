<?php
// +-----------------------------------------------------------------------+
// | This file is part of Piwigo.                                          |
// |                                                                       |
// | For copyright and license information, please view the COPYING.txt    |
// | file that was distributed with this source code.                      |
// +-----------------------------------------------------------------------+
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + XSS stocké dans les préférences utilisateur permettant une exécution de code à distance (RCE)';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Un administrateur qui n\'est pas webmaster peut gérer les thèmes via pwg.themes.performAction';
$lang['porg_issue_2600'] = 'renforcer la fiabilité de la fonction `uploadAsync`';
$lang['porg_issue_2587'] = 'cookie_path de standard_pages n\'est pas défini dans les pages d\'inscription, de mot de passe et de profil';
$lang['porg_issue_2573'] = 'Problème lors de l\'utilisation de pwg.images.getInfo avec l\'en-tête X-PIWIGO-API - Paramètres manquants : image_id';
$lang['porg_issue_2571'] = '[gestion par lot] La suppression des photos indique que l\'opération a réussi, mais ne supprime rien';
$lang['porg_issue_2536'] = 'Avertissements/erreurs PHP';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS via un attribut HTML non mis entre guillemets sur la page de réinitialisation du mot de passe';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Faille « Zip Slip » (traversée de chemin) dans Piwigo au niveau des programmes d\'installation d\'extensions → Écriture arbitraire dans un fichier → Risque d\'exécution de code à distance (RCE)';
$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'Contournement du contrôle d\'autorisation des méthodes interdites de la clé API grâce à une différence entre la source de la requête de répartition et celle de l\'application';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Désérialisation dans `extend_for_templates`';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Administrateur → Élévation aux privilèges de webmaster via la modification du mot de passe du profil administrateur (sans le mot de passe en cours) ';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'XSS stocké via le nom d\'un album dans le panneau d\'administration';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Une faille de traversée de chemin non authentifiée dans le fichier i.php permet l\'écriture d\'images dérivées en dehors du répertoire de cache prévu _data/i.';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'XSS stocké via le champ « Auteur » des commentaires des invités non authentifiés → Prise de contrôle du compte administrateur';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Prise de contrôle de compte via la normalisation Unicode';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'Injection SQL sans authentification dans pwg.images.filteredSearch.create';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Une méthode de service Web non authentifiée entraîne une croissance continue de la base de données (épuisement des ressources/DoS)';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'La manipulation non authentifiée des préférences d\'un visiteur entraîne l\'inclusion d\'un fichier fixe avant l\'authentification et l\'exécution de code PHP conditionnel';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Modification, désactivation, activation et suppression de langues via CSRF';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'XSS stocké avant authentification → activité de l\'utilisateur « admin » via le paramètre de requête `method`';