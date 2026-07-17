<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/pro_support.css">

<section class="container container-toppage">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-6 d-flex flex-column justify-content-center users-header-text">
          <h1 class="mb-4">{'porg_pro_support_header_title'|translate}</h1>
          <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/16/20260716100025-f41a8ce1-me.webp" alt="Piwigo screenshot" class="img-fluid d-md-none">
          <p class="mb-4">{'porg_pro_support_header_description'|translate}</p>
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_pro_support_header_btn'|translate} href="{$PORG_ROOT}{$URL.product}" class="px-4 align-self-start"}
        </div>
        <div class="col-md-6 responsive-image d-flex flex-column justify-content-center users-header-image">
          <img class="img-fluid d-none d-md-block" src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/16/20260716100025-f41a8ce1-me.webp" alt="Piwigo screenshot">
        </div>
      </div>
    </div>
  </div>
</section>

{assign
  var='support_headers'
  value=[
    'porg_support_community_resources'|translate,
    'porg_support_professional_support'|translate
  ]
}

{assign
  var='support_sections'
  value=[
    [ 
      'title' => '', 
      'rows' => [ 
        [
          'label' => 'porg_support_row_available_to'|translate, 
          'values' => [
            'porg_support_val_everyone'|translate, 
            'porg_support_val_pro_plans'|translate
          ], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_documentation'|translate, 
          'values' => ['check', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_install_guides'|translate, 
          'values' => ['check', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_dev_resources'|translate, 
          'values' => ['check', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_email_support'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_personalized_assist'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_tailored_advice'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_migration_pwg'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_graphic_branding'|translate, 
          'values' => ['-', 'porg_support_val_optional_plans'|translate], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_migration_other'|translate, 
          'values' => ['-', 'porg_support_val_optional_plans'|translate], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_onboarding_coaching'|translate, 
          'values' => ['-', 'porg_support_val_optional_plans'|translate], 
          'help' => false
        ]
      ] 
    ]
  ]
}

<section class="container container-how">
  <div class="row text-center justify-content-center">
    <div class="col-md-9 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <h2 class="text-center">{'porg_pro_support_how_title'|translate}</h2>
        <p class="text-center mb-4">{'porg_pro_support_how_description'|translate}</p>

        <div class="compare-plans-container">
          <table class="compare-plans-table">
            <tbody>
              {foreach from=$support_sections item=section}
                <tr class="section-header">
                  <td class="section-title">{$section.title}</td>
                  {foreach from=$support_headers item=header}
                    <td class="section-plan-name">
                      <h4 class="text-center">{$header}</h4>
                    </td>
                  {/foreach}
                </tr>

                {foreach from=$section.rows item=row}
                  <tr class="feature-row">
                    <td class="feature-label">
                      <div class="label-content">
                        <span>{$row.label}</span>
                        {if $row.help}
                          <div class="pwg-tooltip" tabindex="0">
                            <i class="icon-rounded-warning bi-info-circle-fill"></i>
                            <span class="tooltip-text">{$row.help}</span>
                          </div>
                        {/if}
                      </div>
                    </td>
                    {foreach from=$row.values item=val}
                      <td>
                        {if $val == 'check'}
                          <i class="icon-rounded-check bi-check-circle-fill"></i>
                        {elseif $val == '-'}
                          <span class="value-text">-</span>
                        {else}
                          <span class="value-text">{$val}</span>
                        {/if}
                      </td>
                    {/foreach}
                  </tr>
                {/foreach}
              {/foreach}
            </tbody>
          </table>
        </div>

        <div class="support-tip-box">
          <div class="tip-header">
            <i class="icon-idea tip-icon"></i>
            <p class="tip-title orange-text strong-text mb-0">{'porg_support_tip_title'|translate}</p>
          </div>
          <p class="tip-text mb-0">
            {'porg_support_tip_description'|translate}
          </p>
        </div>

      </div>
    </div>
  </div>
</section>

<section class="container way-container">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-7 text-center mb-3">
          <h2 class="text-center mb-5">{'porg_support_deploy_title'|translate}</h2>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-l">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <div class="icon-wrapper pink-bg mx-auto">
              <i class="pink-text icon-cloud-oneplace"></i>
            </div>
            <h3 class="text-center mb-4">Piwigo {'Cloud'|translate}</h3>
            <p class="text-center mb-5">{'porg_support_deploy_cloud_desc'|translate}</p>
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_deploy_cloud_btn'|translate} href="{$PORG_ROOT}{$URL.product}#cloud" class='mt-auto'}
          </div>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-r">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <div class="icon-wrapper orange-bg mx-auto">
              <i class="orange-text icon-self-host"></i>
            </div>
            <h3 class="text-center mb-4">Piwigo {'Self-hosted'|translate}</h3>
            <p class="text-center mb-5">{'porg_support_deploy_self_hosted_desc'|translate}</p>
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_deploy_self_hosted_btn'|translate} href="{$PORG_ROOT}{$URL.product}#self-hosted " class='mt-auto'}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container real-container">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">

      <div class="support-intro-header">
        <div class="row align-items-stretch">
          <div class="col-md-6">
            <h2 class="header-left pe-2 mb-0">{'porg_support_intro_title_left'|translate}</h2>
          </div>
          <div class="col-md-6 d-flex align-items-start h-100">
            <p class="header-right pink-text p-strong mb-0">
              {'porg_support_intro_title_right_1'|translate}<br>
              {'porg_support_intro_title_right_2'|translate}
            </p>
          </div>
        </div>
      </div>

      <div class="support-intro-content">
        <div class="row">
          <div class="col-md-6 intro-text-col">
            <p>{'porg_support_intro_p1'|translate}<br><br>
              {'porg_support_intro_p2'|translate}<br><br>
              {'porg_support_intro_p3'|translate}</p>
          </div>

          <div class="col-md-6 intro-features-col">
            <ul class="intro-features-list">
              <li>
                <span class="icon-cube">
                  <i class="icon-check-1"></i>
                </span>
                <span class="p">{'porg_support_intro_feat1'|translate}</span>
              </li>
              <li>
                <span class="icon-cube">
                  <i class="icon-check-1"></i>
                </span>
                <span class="p">{'porg_support_intro_feat2'|translate}</span>
              </li>
              <li>
                <span class="icon-cube">
                  <i class="icon-check-1"></i>
                </span>
                <span class="p">{'porg_support_intro_feat3'|translate}</span>
              </li>
              <li>
                <span class="icon-cube">
                  <i class="icon-check-1"></i>
                </span>
                <span class="p">{'porg_support_intro_feat4'|translate}</span>
              </li>
              <li>
                <span class="icon-cube">
                  <i class="icon-check-1"></i>
                </span>
                <span class="p">{'porg_support_intro_feat5'|translate}</span>
              </li>
              <li>
                <span class="icon-cube">
                  <i class="icon-check-1"></i>
                </span>
                <span class="p">{'porg_support_intro_feat6'|translate}</span>
              </li>
            </ul>

            <div class="text-start">
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_intro_btn'|translate} href="{$PORG_ROOT}{$URL.about_us}"}
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>

<section class="container comments-container">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center">
        <div class="col-md-7 text-center mb-4">
          <h2 class="text-center mb-0">{'porg_support_comment_title'|translate}</h2>
        </div>
        <div class="testi-slider-wrap px-0">
          <div class="testi-track" id="testiTrack">
            {foreach $comments as $key => $comment}
              <div class="testi-card">
                <i class="icon-quote main-green-text"></i>
                <p class="p-testimonial testi-text mb-0">{'porg_support_comment_text_'|cat:$comment.id|translate}</p>
                <div class="testi-footer">
                  {if $comment.author|substr:0:10 == 'Webmaster '}
                    {assign var="author_name" value='Webmaster'}
                    {assign var="company_name" value=$comment.author|substr:10|trim}
                  {elseif $comment.author|strpos:"," !== false}
                    {assign var="author_parts" value=$comment.author|split:","}
                    {assign var="author_name" value=$author_parts[0]|trim}
                    {assign var="company_name" value=$author_parts[1]|default:''|trim}
                  {else}
                    {assign var="author_name" value=''}
                    {assign var="company_name" value=$comment.author|trim}
                  {/if}

                  {if $author_name}<p class="name-testimonial mb-0">{$author_name}</p>{/if}
                  {if $company_name}
                    {if isset($comment.url) && $comment.url}
                      <a href="{$comment.url}" target="_blank" rel="noopener noreferrer" class="testi-author-link sector-testimonial green-text">{$company_name}<i class="icon-ext1 main-green-text ms-1"></i><i class="icon-ext2 main-green-text ms-1"></i></a>
                    {else}
                      <span class="sector-testimonial green-text">{$company_name}</span>
                    {/if}
                  {/if}
                </div>
              </div>
            {/foreach}
          </div>
        </div>

        <div class="testi-dots" id="testiDots"></div>

      </div>
    </div>
  </div>
</section>

{literal}
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const track = document.getElementById('testiTrack');
      const dotsWrap = document.getElementById('testiDots');
      if (!track) return;

      const cards = Array.from(track.querySelectorAll('.testi-card'));
      const total = cards.length;
      let current = 0;

      const dots = cards.map((_, i) => {
        const d = document.createElement('button');
        d.className = 'testi-dot' + (i === 0 ? ' active' : '');
        d.setAttribute('aria-label', 'Slide ' + (i + 1));
        d.onclick = () => goTo(i);
        dotsWrap.appendChild(d);
        return d;
      });

      function goTo(index) {
        current = Math.max(0, Math.min(total - 1, index));

        const gap = window.innerWidth <= 768 ? 0 : 30;
        const wrapW = track.parentElement.offsetWidth;
        const card = cards[current];
        const cardW = card.offsetWidth;

        let cardLeft = 0;
        for (let i = 0; i < current; i++) {
          cardLeft += cards[i].offsetWidth + gap;
        }

        const offset = Math.max(0, cardLeft - (wrapW - cardW) / 2);
        const maxOffset = track.scrollWidth - wrapW;
        track.style.transform = `translateX(-${Math.min(offset, maxOffset)}px)`;

        dots.forEach((d, i) => d.classList.toggle('active', i === current));
      }

      function updateLayout() {
        const isMobile = window.innerWidth <= 768;

        if (isMobile) {
          // On mobile, cards take the full width of the track
          const trackWidth = track.parentElement.offsetWidth;
          cards.forEach(card => card.style.width = trackWidth + 'px');
        } else {
          // On desktop, width is fixed
          cards.forEach(card => card.style.width = '315px');
        }
        // Recalculate position after width change
        goTo(current);
      }

      // Debounce resize event
      let resizeTimeout;
      window.addEventListener('resize', () => {
        clearTimeout(resizeTimeout);
        resizeTimeout = setTimeout(updateLayout, 150);
      });


      const sliderWrap = track.parentElement;

      let isWheeling = false;
      const wheelDebounceTime = 400;

      sliderWrap.addEventListener('wheel', function(e) {
        if (Math.abs(e.deltaX) > Math.abs(e.deltaY) || e.shiftKey) {
          e.preventDefault();

          if (isWheeling) return;

          const direction = (e.deltaX || e.deltaY) > 0 ? 1 : -1;
          goTo(current + direction);

          isWheeling = true;
          setTimeout(() => { isWheeling = false; }, wheelDebounceTime);
        }
      }, { passive: false });

      let touchStartX = 0;
      let touchEndX = 0;
      const swipeThreshold = 50;

      sliderWrap.addEventListener('touchstart', function(e) {
        touchStartX = e.changedTouches[0].screenX;
      }, { passive: true });

      sliderWrap.addEventListener('touchend', function(e) {
        touchEndX = e.changedTouches[0].screenX;
        handleSwipe();
      }, { passive: true });

      function handleSwipe() {
        if (touchEndX < touchStartX - swipeThreshold) {
          goTo(current + 1);
        } else if (touchEndX > touchStartX + swipeThreshold) {
          goTo(current - 1);
        }
      }

      // Initial layout setup
      updateLayout();
    });
  </script>
{/literal}