<?php
$lang['porg_issue_2600'] = '提升 uploadAsync 的稳健性';
$lang['porg_issue_2587'] = 'standard_pages：注册、密码和个人资料页面未定义 cookie_path';
$lang['porg_issue_2573'] = '使用 X-PIWIGO-API 请求头调用 pwg.images.getInfo 时出错 - Missing parameters: image_id';
$lang['porg_issue_2571'] = '[batch_manager] 删除照片提示成功，但实际未删除任何内容';
$lang['porg_issue_2536'] = 'PHP 警告/错误。';

$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = '由于分发与校验阶段请求来源不一致，API 密钥禁用方法的授权检查可被绕过';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = '通过 `method` 请求参数，在认证前注入存储型 XSS → 后台用户活动';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = '通过修改管理员个人资料密码（无需当前密码）从管理员提权为站长 ';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = '通过未认证访客评论作者字段注入存储型 XSS → 接管管理员账户';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Piwigo 扩展安装器中的 Zip Slip（路径穿越）→ 任意文件写入 → 可能的 RCE';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = '未认证篡改访客偏好设置导致认证前固定文件包含及有条件的 PHP 代码执行';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'i.php 中未认证的路径穿越，可在预期的 _data/i 缓存目录之外写入衍生图片';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = '密码重置页面中未加引号的 HTML 属性导致 XSS';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = '管理后台中通过相册名称注入存储型 XSS';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = '未认证的 Web 服务方法可使数据库持续增长（资源耗尽/DoS）';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'extend_for_templates 中的反序列化问题';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = '用户偏好设置中的 CSRF + 存储型 XSS 导致 RCE';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = '非站长管理员可通过 pwg.themes.performAction 管理主题';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = '通过 CSRF 更改、停用、启用和删除语言';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = '通过 Unicode 规范化接管账户';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'pwg.images.filteredSearch.create 中未认证的 SQL 注入';
?>
