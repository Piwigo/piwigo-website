<?php
// +-----------------------------------------------------------------------+
// | This file is part of Piwigo.                                          |
// |                                                                       |
// | For copyright and license information, please view the COPYING.txt    |
// | file that was distributed with this source code.                      |
// +-----------------------------------------------------------------------+
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'i.php dosyasındaki kimlik doğrulaması yapılmamış yol geçişi, amaçlanan _data/i önbellek dizini dışına türetilmiş görüntü yazma işlemlerine olanak tanır';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'Yönetim panelinde albüm adı üzerinden depolanmış (stored) XSS';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Yönetici → Web yöneticisi (webmaster) ayrıcalık yükseltme: yönetici profili şifre değişikliği (mevcut şifre gerektirmez)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'extend_for_templates içinde seri durumdan çıkarma (deserialization)';
$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'API-key forbidden-methods authorization gate bypassed by a dispatch/enforcement request-source differential';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo Eklenti Yükleyicilerinde Zip Slip (Yol Gezinimi/Path Traversal) → İsteğe Bağlı Dosya Yazma → Potansiyel Uzaktan Kod Yürütme (RCE)';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'Parola sıfırlama sayfasında tırnak içine alınmamış HTML özniteliği aracılığıyla XSS';
$lang['porg_issue_2536'] = 'PHP uyarıları/hataları.';
$lang['porg_issue_2571'] = '[batch_manager] fotoğraf silme işlemi başarılı raporu veriyor ancak hiçbir şeyi silmiyor';
$lang['porg_issue_2573'] = 'X-PIWIGO-API başlığı ile pwg.images.getInfo kullanılırken sorun yaşanıyor - Eksik parametre: image_id';
$lang['porg_issue_2587'] = 'standard_pages: kayıt, şifre ve profil sayfalarında cookie_path tanımlanmamış';
$lang['porg_issue_2600'] = 'uploadAsync\'i daha dayanıklı hale getir';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Web yöneticisi (webmaster) olmayan bir yönetici, pwg.themes.performAction aracılığıyla temaları yönetebilir';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'Kullanıcı tercihlerinde CSRF + Depolanmış XSS (Stored XSS) yoluyla RCE';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'Kimlik doğrulama öncesi depolanmış XSS → `method` istek parametresi aracılığıyla yönetici Kullanıcı Etkinliği';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'CSRF aracılığıyla dillerin değiştirilmesi, devre dışı bırakılması, etkinleştirilmesi ve silinmesi';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'Kimlik doğrulaması yapılmamış misafir tercihlerinin değiştirilmesi, ön kimlik doğrulaması gerektiren sabit dosya dahil edilmesine ve koşullu PHP kod yürütülmesine yol açar';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Kimlik doğrulaması gerektirmeyen web servisi metodu, veritabanının sürekli büyümesine (kaynak tükenmesi/DoS) yol açar';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'pwg.images.filteredSearch.create içinde kimliksiz SQL enjeksiyonu';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Unicode normalizasyonu yoluyla Hesap Ele Geçirme';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'Kimliksiz konuk yorumcu alanı üzerinden depolanmış XSS (Stored XSS) → Yönetici hesabının ele geçirilmesi';