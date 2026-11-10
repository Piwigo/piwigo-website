<?php
// +-----------------------------------------------------------------------+
// | This file is part of Piwigo.                                          |
// |                                                                       |
// | For copyright and license information, please view the COPYING.txt    |
// | file that was distributed with this source code.                      |
// +-----------------------------------------------------------------------+
$lang['porg_issue_2536'] = 'Errores y avisos de PHP.';
$lang['porg_issue_2571'] = '[gestor por lotes] La eliminación de fotos indica éxito, pero no elimina nada';
$lang['porg_issue_2573'] = 'Problema al usar pwg.images.getInfo con la cabecera X-PIWIGO-API: faltan parámetros: image_id';
$lang['porg_issue_2587'] = 'standard_pages: cookie_path no está definido en las páginas de registro, contraseña y perfil';
$lang['porg_issue_2600'] = 'Mejora de la robustez de uploadAsync';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Un administrador sin privilegios de webmaster puede gestionar temas mediante pwg.themes.performAction';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRC y XSS almacenado en las preferencias de usuario para RCE';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'XSS almacenado previo a la autenticación → actividad de usuario administrador a través del parámetro de solicitud `method`';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Modificación, desactivación, activación y eliminación de idiomas mediante CSRF';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'Manipulación de preferencias por parte de un usuario invitado no autenticado, lo que permite la inclusión de archivos fijos y la ejecución condicional de código PHP antes de la autenticación';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Un método de servicio web accesible sin autenticación permite el crecimiento persistente de la base de datos (ataque de denegación de servicio por agotamiento de recursos)';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'Inyección de SQL sin autenticación en pwg.images.filteredSearch.create';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Toma de control de cuentas mediante normalización Unicode';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'XSS almacenado a través del campo de autor en comentarios realizados por usuarios no autenticados → toma de control de una cuenta de administrador';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Recorrido transversal de directorios (Path traversal) sin autenticación en i.php, que permite escribir imágenes derivadas fuera del directorio de caché previsto (_data/i)';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'XSS almacenado a través del nombre de álbum en el panel de administración';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Escalada de privilegios de administrador a webmaster mediante cambio de contraseña en perfil de administrador (sin contraseña actual)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Deserialización en extend_for_templates';
$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'El control de acceso mediante clave API puede eludirse para métodos prohibidos debido a una discrepancia en el origen de la solicitud durante el proceso de despacho/aplicación';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Vulnerabilidad `Zip Slip` (recorrido de directorios) en los instaladores de extensiones de Piwigo, que permite la escritura arbitraria de archivos y, potencialmente, la ejecución remota de código (RCE)';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS a través de un atributo HTML sin comillas en la página de restablecimiento de contraseña';