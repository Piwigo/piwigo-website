{if $meta|lower == 'translation'}
  {assign var=icon value='icon-langage'}
{elseif $meta|lower == 'core' || $meta|lower == 'version release'}
  {assign var=icon value='icon-pwg'}
{elseif $meta|lower == 'plugin' || $meta|lower == 'plugin release'}
  {assign var=icon value='icon-extension'}
{elseif $meta|lower == 'android app'}
  {assign var=icon value='icon-android'}
{elseif $meta|lower == 'ios app'}
  {assign var=icon value='icon-ios'}
{elseif $meta|lower == 'theme' || $meta|lower == 'theme release'}
  {assign var=icon value='icon-paint'}
{elseif $meta|lower == 'tools' || $meta|lower == 'tool release'}
  {assign var=icon value='icon-support'}
{/if}

{if $type == 'release'}

  <div class="product-update-card release-card">
    <span class="dot"></span>
    <div class="release-content">
      <div class="release-meta-row">
        <div>
          <p class="card-meta pink-text sector-testimonial mb-2">
            <span class="card-icon">
              <i class="{$icon} mx-0"></i>
            </span>
            {$meta}
            <span class="release-date">• {$date}</span>
          </p>
        </div>
      </div>
      <div class="release-body">
        <h4 class="mb-0">{$title}</h4>
        <p style="margin-bottom: 25px;">{$desc}</p>
        {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'See details'|translate}
        href=$btn_link}
      </div>
    </div>
    <img src="{$image}" alt="{$title|escape}" class="version-image">
  </div>

{else}

  <div class="product-update-card commits-card" role="button" tabindex="0">
    <span class="dot"></span>

    {assign var=commits_count value=$commits|@count}

    <div class="card-body d-flex align-items-start justify-content-between">
      <div>
        <p class="card-meta orange-text sector-testimonial mb-2">
          <span class="card-icon">
            <i class="{$icon} mx-0"></i>
          </span>
          {$meta}
          <span class="commit-date">• {$date}</span>
        </p>
        <p class="commit-number mb-0 p-boxed">{$commits_count} commits</p>
      </div>
      {assign var=collapse_id value="collapse-"|cat:$meta|cat:"-"|cat:$date|escape:'url'}
      <a class="collapsed" data-bs-toggle="collapse" href="#{$collapse_id}" role="button" aria-expanded="false"
        aria-controls="{$collapse_id}">
        <span class="collapse-toggle" aria-hidden="true">
          <i class="icon-down-open submenu_button_icon" aria-hidden="true"></i>
        </span>
      </a>
    </div>

    <div class="collapse" id="{$collapse_id}">
      <div class="card-body commit-list">
        <ul class="list-unstyled mb-0">
          {foreach from=$commits item=commit}
            <li class="commit-item mb-3">
              <div class="d-flex align-items-start">
                <span class="dot"></span>
                <div>
                  <p class="footer-title mb-1">{$commit.message}<span style="font-weight: 400; color: var(--dark_text);"> •
                      {$commit.date}</span></p>
                  <p class="mb-0 mobile-test-sub-h3">{$commit.repo} <a href="{$commit.url}">{$commit.hash}</a>
                    {$commit.author}
                  </p>
                </div>
              </div>
            </li>
          {/foreach}
        </ul>
      </div>
    </div>
  </div>
{/if}