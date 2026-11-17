<?php
$lang['porg_issue_2600'] = 'более надёжная работа uploadAsync';
$lang['porg_issue_2587'] = 'standard_pages: cookie_path не определён на страницах регистрации, пароля и профиля';
$lang['porg_issue_2573'] = 'Проблема при вызове pwg.images.getInfo с заголовком X-PIWIGO-API - Missing parameters: image_id';
$lang['porg_issue_2571'] = '[batch_manager] удаление фото сообщает об успехе, но ничего не удаляет';
$lang['porg_issue_2536'] = 'Предупреждения/ошибки PHP.';

$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'Обход проверки запрещённых для API-ключа методов из-за расхождения в источнике запроса между диспетчеризацией и проверкой';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'Хранимый XSS до аутентификации → журнал активности пользователей в админке через параметр запроса `method`';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Повышение привилегий администратора до вебмастера через смену пароля в профиле администратора (без текущего пароля) ';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'Хранимый XSS через поле автора комментария неаутентифицированного гостя → захват аккаунта администратора';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo Zip Slip (обход пути) в установщиках расширений → запись произвольных файлов → возможный RCE';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'Изменение настроек гостя без аутентификации приводит к включению фиксированного файла до аутентификации и условному выполнению PHP-кода';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Обход пути без аутентификации в i.php позволяет записывать производные изображения за пределами каталога кэша _data/i';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS через HTML-атрибут без кавычек на странице сброса пароля';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'Хранимый XSS через название альбома в панели администрирования';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Метод веб-сервиса без аутентификации позволяет неограниченно увеличивать базу данных (исчерпание ресурсов/DoS)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Десериализация в extend_for_templates';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + хранимый XSS в настройках пользователя, ведущие к RCE';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Администратор, не являющийся вебмастером, может управлять темами через pwg.themes.performAction';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Изменение, отключение, включение и удаление языков через CSRF';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Захват аккаунта через нормализацию Unicode';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'SQL-инъекция без аутентификации в pwg.images.filteredSearch.create';
?>
