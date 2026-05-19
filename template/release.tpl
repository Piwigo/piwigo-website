<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/release.css">

{include file="template/release_top_sections.tpl"}

<section class="badges-section">
  <div class="text-center">
    <div class="release-badges-row justify-content-center">
      {if $bugs != null}
        <div class="release-badge">
          <p class="minimenus-item"><i class="icon-wrench"></i>{'Bugs fixed'|translate}</p>
        </div>
      {/if}

      {if $known_issues != null}
        <div class="release-badge">
          <p class="minimenus-item"><i class="icon-attention"></i>{'Known issues'|translate}</p>
        </div>
      {/if}

      {if $news_languages != null || $updated_languages != null}
        <div class="release-badge">
          <p class="minimenus-item"><i class="icon-langage"></i>{'Languages'|translate}</p>
        </div>
      {/if}

      {if $features != null}
        <div class="release-badge">
          <p class="minimenus-item"><i class="icon-plus-circled"></i>{'Featured added'|translate}</p>
        </div>
      {/if}

      <div class="release-badge">
        <p class="minimenus-item"><i class="icon-flash-1"></i>{'Upgrade'|translate}</p>
      </div>

    </div>
  </div>
</section>

<section class="container release-content">
  {if $bugs != null}
    <div class="row release-sub-section">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-wrench"></i>{'Bugs fixed'|translate}</h1>
      </div>
      {foreach from=$bugs key=key item=bug}
        <div class="col-md-3">
          <p class="release-type-sub-title"><i class="icon-check-1" {if $bug.is_security} title="{'Security'|translate}" {/if}></i> <a href="{$bug.url}" class="dark-green-text">{$bug.id} {$bug.section}</a></p>
          <p class="pricing-list">{$bug.label}</p>
        </div>
      {/foreach}
    </div>
  {/if}

  {if $known_issues != null}
    <div class="row release-sub-section release-sub-section-issue">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-attention"></i>{'Known issues'|translate}</h1>
      </div>
      {foreach from=$known_issues key=key item=known_issue}
        <div class="col-md-3">
          <p class="release-type-sub-title"><i class="icon-cross"></i> <a href="{$known_issue.url}" class="dark-green-text">{$known_issue.id} {$known_issue.section}</a></p>
          <p class="pricing-list">{$known_issue.label}</p>
        </div>
      {/foreach}
    </div>
  {/if}

  {if $news_languages != null || $updated_languages != null}
    <div class="row">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-langage"></i>{'Languages'|translate}</h1>
      </div>
      {if $news_languages != null}
        <div class="col-md-12 d-flex flex-wrap align-items-start mb-3">
          <p class="release-type-sub-title mb-0 me-3"><i class="icon-plus-circled main-green-text"></i> {'New language:'|translate}</p>
          <p class="pricing-list mb-0">{$news_languages}</p>
        </div>
      {/if}
    </div>
    <div class="row release-sub-section">
      {if $updated_languages != null}
        <p class="release-type-sub-title mb-3"><i class="icon-check-1"></i> <a class="non-decorated-text dark-green-text">{'Updated languages'|translate}</a></p>
        {foreach from=$updated_languages key=key item=language}
          <div class="col-md-4">
            <p class="pricing-list mb-3">{$language.lang} {if $language.lang != $language.nativ_lang} ({$language.nativ_lang}) {/if}</p>
          </div>
        {/foreach}
      {/if}
    </div>
  {/if}

  {if $features != null}
    <div class="row release-sub-section">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-plus-circled"></i>{'Features added'|translate}</h1>
      </div>
      {foreach from=$features key=key item=feature}
        <div class="col-md-3">
          <p class="release-type-sub-title"><i class="icon-check-1"></i><a href="{$feature.url}" class="dark-green-text">{$feature.id} {$feature.section}</a></p>
          <p class="pricing-list">{$feature.label}</p>
        </div>
      {/foreach}
    </div>
  {/if}

  <div class="row release-sub-section">
    <h1 class="releases-menu-item mb-4"><i class="icon-flash-1"></i>{'Upgrade'|translate}</h1>
    <div class="automatic-upgrade row align-items-center">
      <div class="col-md-6">
        <p class="pricing-list threec-text">
          {'We recommend the <b>automatic upgrade</b>.'|translate}
          {'If you\'re running <b>version 2.2+</b>, Piwigo will tell you which plugins may be not compatible with Piwigo %s before upgrade.'|translate:$branch}
        </p>
      </div>
      <div class="col-md-3">
      </div>
      <div class="col-md-3 mb-5 mb-md-0 d-flex align-items-center">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label={'Automatic upgrade'|translate} href="{$URL.automatic_update}"}
      </div>
    </div>
    <div class="transfer-upgrade row">
      <div class="col-md-6">
        <p class="pricing-list threec-text">
          {'If you\'re running <b>Piwigo %s</b> you can also download the <b>%s_to_%s.zip</b> archive that contains all new and modified files.'|translate:$upgrade_from:$upgrade_from:$version}
          {'Once you have extracted the files, transfer them onto your web server with a FTP client over your Piwigo %s installation.'|translate:$upgrade_from}
          {'No database upgrade is required.'|translate}
        </p>
      </div>
      <div class="col-md-3">
      </div>
      <div class="col-md-3 mb-5 mb-md-0 d-flex align-items-center">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label="{$upgrade_from}_to_{$version}.zip" href="//piwigo.org/download/dlcounter.php?code={$upgrade_code}"}
      </div>
    </div>
    <div class="manual-upgrade row">
      <div class="col-md-6">
        <p class="pricing-list threec-text">{'If you are running a version older than %s and do not want to use the automatic upgrade, then follow the <b>manual upgrade</b>.'|translate:$branch}</p>
      </div>
      <div class="col-md-3">
      </div>
      <div class="col-md-3 mb-5 mb-md-0 d-flex align-items-center">
        {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Manual Upgrade'|translate} href="{$URL.manual_update}"}
      </div>
    </div>
  </div>
</section>