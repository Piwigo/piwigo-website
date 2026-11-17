<?php
$lang['porg_issue_2600'] = 'tornar o uploadAsync mais robusto';
$lang['porg_issue_2587'] = 'standard_pages: cookie_path não está definido no cadastro, na senha e no perfil';
$lang['porg_issue_2573'] = 'Problema ao usar pwg.images.getInfo com o cabeçalho X-PIWIGO-API - Parâmetros ausentes: image_id';
$lang['porg_issue_2571'] = '[batch_manager] a exclusão de fotos indica sucesso, mas não exclui nada';
$lang['porg_issue_2536'] = 'Avisos/erros de PHP.';

$lang['porg_issue_GHSA-r87j-qfq4-r6qq'] = 'Contorno da barreira de autorização dos métodos proibidos às chaves de API por uma diferença de origem da requisição entre despacho e verificação';
$lang['porg_issue_GHSA-66w8-xvvr-rp5x'] = 'XSS armazenado antes da autenticação → Atividade dos usuários na administração via o parâmetro de requisição `method`';
$lang['porg_issue_GHSA-pm6r-7f83-29wq'] = 'Escalonamento de privilégios Administrador → Webmaster pela troca de senha no perfil do administrador (sem a senha atual) ';
$lang['porg_issue_GHSA-jx3p-88mg-57gg'] = 'XSS armazenado pelo campo de autor de comentário de visitante não autenticado → Tomada da conta de administrador';
$lang['porg_issue_GHSA-r8qq-xjcv-2xvc'] = 'Zip Slip (Path Traversal) do Piwigo nos instaladores de extensões → Escrita arbitrária de arquivos → Possível RCE';
$lang['porg_issue_GHSA-8mgx-p7m3-7j5g'] = 'A adulteração das preferências de visitante não autenticado leva à inclusão de um arquivo fixo antes da autenticação e à execução condicional de código PHP';
$lang['porg_issue_GHSA-m243-275g-jcr4'] = 'Path traversal não autenticado em i.php permite gravar imagens derivadas fora do diretório de cache _data/i previsto';
$lang['porg_issue_GHSA-rv39-2j2c-rvc6'] = 'XSS por atributo HTML sem aspas na página de redefinição de senha';
$lang['porg_issue_GHSA-pcf4-gj83-6775'] = 'XSS armazenado pelo nome do álbum no painel de administração';
$lang['porg_issue_GHSA-c2gx-f66f-99gh'] = 'Um método de webservice não autenticado permite o crescimento persistente do banco de dados (esgotamento de recursos/DoS)';
$lang['porg_issue_GHSA-prxr-gc4p-mhf3'] = 'Desserialização em extend_for_templates';
$lang['porg_issue_GHSA-4v5h-4rpm-6hvg'] = 'CSRF + XSS armazenado nas preferências do usuário levando a RCE';
$lang['porg_issue_GHSA-3524-8x2q-ccv6'] = 'Um administrador não webmaster pode gerenciar os temas via pwg.themes.performAction';
$lang['porg_issue_GHSA-86gq-mhmc-mjxc'] = 'Alteração, desativação, ativação e exclusão de idiomas via CSRF';
$lang['porg_issue_GHSA-hxf4-pc6v-4gg2'] = 'Tomada de conta via normalização Unicode';
$lang['porg_issue_GHSA-hq29-8hhx-5jwc'] = 'Injeção de SQL não autenticada em pwg.images.filteredSearch.create';
?>
