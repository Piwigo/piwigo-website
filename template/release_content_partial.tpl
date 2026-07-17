<section class="container release-content">
  {if $bugs != null}
    <div class="row release-sub-section">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-wrench"></i>{'Bugs fixed'|translate}</h1>
      </div>
      {foreach from=$bugs key=key item=bug}
        <div class="col-md-3">
          <p class="release-type-sub-title"><i class="icon-check-1" {if $bug.is_security} title="{'Security'|translate}" {/if}></i> <a href="{$bug.url}" class="dark-green-text">{$bug.id} {$bug.section}</a></p>
          <p class="pricing-list">{'porg_issue_'|cat:$bug.id|translate}</p>
        </div>
      {/foreach}
    </div>
  {/if}

  {if $news_languages != null || $updated_languages != null}
    <div class="row mt-5">
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

  {if $known_issues != null}
    <div class="row release-sub-section release-sub-section-issue mt-5">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-attention"></i>{'Known issues'|translate}</h1>
      </div>
      {foreach from=$known_issues key=key item=known_issue}
        <div class="col-md-3">
          <p class="release-type-sub-title"><i class="icon-cross"></i> <a href="{$known_issue.url}" class="dark-green-text">{$known_issue.id} {$known_issue.section}</a></p>
          <p class="pricing-list">{'porg_issue_'|cat:$known_issue.id|translate}</p>
        </div>
      {/foreach}
    </div>
  {/if}

  {if $features != null}
    <div class="row release-sub-section mt-5">
      <div class="col-md-12">
        <h1 class="releases-menu-item mb-4"><i class="icon-plus-circled"></i>{'Features added'|translate}</h1>
      </div>
      {foreach from=$features key=key item=feature}
        <div class="col-md-3">
          <p class="release-type-sub-title"><i class="icon-check-1"></i><a href="{$feature.url}" class="dark-green-text">{$feature.id} {$feature.section}</a></p>
          <p class="pricing-list">{'porg_issue_'|cat:$feature.id|translate}</p>
        </div>
      {/foreach}
    </div>
  {/if}

  <div class="row release-sub-section mt-5 justify-content-center">
    <div class="col-12 d-flex justify-content-center">
      {include file='template/include/buttons/button.tpl' variant='menu_btn_green' class='release-note-cta' label={'See the full page of Release note %s'|translate:$version} href="{$URL.release}-{$version}"}
    </div>
  </div>
</section>