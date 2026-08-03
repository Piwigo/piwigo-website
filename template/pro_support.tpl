<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/pro_support.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/get_started.css">

<section class="container container-toppage">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-6 d-flex flex-column justify-content-center users-header-text">
          <h1 class="mb-4">{'porg_pro_support_header_title'|translate}</h1>
          <p class="mb-4">{'porg_pro_support_header_description'|translate}</p>
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_pro_support_header_btn'|translate}
          href="{$PORG_ROOT}{$URL.get_piwigo}" class="px-4 align-self-start"}
        </div>
        <div class="col-md-6 responsive-image d-flex flex-column justify-content-center users-header-image">
          <img class="img-fluid mt-md-0 mt-4 pt-1"
            src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/16/20260716100025-f41a8ce1-me.webp"
            alt="Piwigo screenshot">
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
                        <span class="p">{$row.label}</span>
                      </div>
                    </td>
                    {foreach from=$row.values item=val}
                      <td>
                        {if $val == 'check'}
                          <i class="icon-rounded-check bi-check-circle-fill"></i>
                        {elseif $val == '-'}
                          <span class="value-text p">-</span>
                        {else}
                          <span class="value-text p">{$val}</span>
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
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_deploy_cloud_btn'|translate}
            href="{$PORG_ROOT}{$URL.get_piwigo}#cloud" class='mt-auto'}
          </div>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-r">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <div class="icon-wrapper orange-bg mx-auto">
              <i class="orange-text icon-self-host"></i>
            </div>
            <h3 class="text-center mb-4">Piwigo {'Self-hosted'|translate}</h3>
            <p class="text-center mb-5">{'porg_support_deploy_self_hosted_desc'|translate}</p>
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_deploy_self_hosted_btn'|translate}
            href="{$PORG_ROOT}{$URL.get_piwigo}#self-hosted " class='mt-auto'}
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

            <div class="text-md-start">
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_intro_btn'|translate}
              href="{$PORG_ROOT}{$URL.about_us}"}
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>

<section class="container comments-container mb-0">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center">

        <div class="col-md-7 text-center mb-4">
          <h2 class="text-center mb-0">{'porg_support_comment_title'|translate}</h2>
        </div>

      </div>
    </div>
  </div>
</section>


<section class="comments-container m-0">
  <div class="testi-slider-wrap px-0">
    <div class="testi-track" id="testiTrack">
      {foreach $comments as $key => $comment}
        <div class="testi-card">
          <i class="icon-quote main-green-text"></i>
          <p class="p-testimonial testi-text mb-0">{$comment.comment}</p>
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
                <a href="{$comment.url}" target="_blank" rel="noopener noreferrer"
                  class="testi-author-link sector-testimonial green-text">{$company_name}<i
                    class="icon-ext1 main-green-text ms-1"></i><i class="icon-ext2 main-green-text ms-1"></i></a>
              {else}
                <span class="sector-testimonial green-text">{$company_name}</span>
              {/if}
            {/if}
            <p class="country-testimonial mb-0 mt-1 dark-text">- {'country_'|cat:$comment.country|translate}</p>
          </div>
        </div>
      {/foreach}
    </div>
  </div>
</section>

<section class="container comments-container mt-0">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center">

        <div class="testi-dots" id="testiDots"></div>

      </div>
    </div>
  </div>
</section>

{literal}
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      function setTestimonialMargin() {
        const contentColumn = document.querySelector('.comments-container .col-md-11');
        if (contentColumn) {
          const screenWidth = window.innerWidth;
          const contentWidth = contentColumn.offsetWidth;
          const margin = (screenWidth - contentWidth) / 2;
          document.documentElement.style.setProperty('--testimonial-margin', margin + 'px');
        }
      }

      // Set on load and on resize
      setTestimonialMargin();
      window.addEventListener('resize', setTestimonialMargin);


      const track = document.getElementById('testiTrack');
      const dotsWrap = document.getElementById('testiDots');
      if (!track) return;

      const cards = Array.from(track.querySelectorAll('.testi-card'));
      const total = cards.length;
      let current = 0;

      const THRESHOLD = 250;

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

        const testimonialMargin = parseFloat(getComputedStyle(document.documentElement).getPropertyValue(
          '--testimonial-margin')) || 0;

        let cardLeft = 0;
        for (let i = 0; i < current; i++) {
          cardLeft += cards[i].offsetWidth + gap;
        }

        const isMobile = window.innerWidth <= 768;
        let offset;

        if (isMobile) {
          offset = current * cardW;
        } else {
          if (current === 0) {
            offset = 0;
          } else if (current === total - 1 || current === total - 2) {
            const testimonialMargin = parseFloat(getComputedStyle(document.documentElement).getPropertyValue(
              '--testimonial-margin')) || 0;
            offset = track.scrollWidth - wrapW + testimonialMargin;
          } else {
            offset = Math.max(0, testimonialMargin + cardLeft - (wrapW - cardW) / 2);
          }
        }

        track.style.transform = `translateX(-${offset}px)`;

        dots.forEach((d, i) => d.classList.toggle('active', i === current));
      }

      function updateLayout() {
        const isMobile = window.innerWidth <= 768;

        if (isMobile) {
          // On mobile, cards take the full width of the track
          const trackWidth = track.parentElement.offsetWidth;
          cards.forEach(card => card.style.width = trackWidth + 'px');
        } else {
          // On desktop, width is based on text length
          cards.forEach(card => {
            const text = card.querySelector('.testi-text');
            card.style.width = (text && text.textContent.trim().length > THRESHOLD) ? '700px' : '365px';
          });
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

<section class="container-desc">
  <div class="container">
    <div class="row text-center">
      <h2 class="mb-5 text-center">{'porg_support_help_title'|translate}</h2>
      <div class="px-0 orange-bar">
        <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/27/20260727095420-dabef6c9-me.webp"
          alt="">
      </div>
      <div class="glass-card-container">
        <div class="row">
          <div class="col-12 col-lg-4">
            <div class="glass-card d-flex flex-column">
              <h3 class="text-center">{'porg_support_help_card1_title'|translate}</h3>
              <p class="strong-text">{'porg_support_help_card1_desc'|translate}</p>
              <ul class="help-card-list">
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card1_li1'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card1_li2'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card1_li3'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card1_li4'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card1_li5'|translate}</span></li>
              </ul>
            </div>
          </div>
          <div class="col-12 col-lg-4">
            <div class="glass-card d-flex flex-column">
              <h3 class="text-center">{'porg_support_help_card2_title'|translate}</h3>
              <p class="strong-text">{'porg_support_help_card2_desc'|translate}</p>
              <ul class="help-card-list">
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card2_li1'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card2_li2'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card2_li3'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card2_li4'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card2_li5'|translate}</span></li>
              </ul>
            </div>
          </div>
          <div class="col-12 col-lg-4">
            <div class="glass-card d-flex flex-column">
              <h3 class="text-center">{'porg_support_help_card3_title'|translate}</h3>
              <p class="strong-text">{'porg_support_help_card3_desc'|translate}</p>
              <ul class="help-card-list">
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card3_li1'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card3_li2'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card3_li3'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card3_li4'|translate}</span></li>
                <li class="p"><i class="icon-check-1"></i><span>{'porg_support_help_card3_li5'|translate}</span></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

{literal}
  <script>
    document.addEventListener('DOMContentLoaded', function() {

      // --- Equalize card title heights ---
      function equalizeCardTitleHeights() {
        const cards = document.querySelectorAll('.container-desc .glass-card');
        if (cards.length === 0) return;

        const titles = document.querySelectorAll('.container-desc .glass-card h3');
        let maxHeight = 0;

        titles.forEach(title => {
          title.style.minHeight = '0px';
        });

        titles.forEach(title => {
          if (title.offsetHeight > maxHeight) {
            maxHeight = title.offsetHeight;
          }
        });

        titles.forEach(title => {
          title.style.minHeight = maxHeight + 'px';
        });
      }
      equalizeCardTitleHeights();
      window.addEventListener('resize', equalizeCardTitleHeights);

      // --- Adjust orange bar height on mobile ---
      const orangeBar = document.querySelector('.orange-bar');
      const glassCards = document.querySelectorAll('.container-desc .glass-card');
      const glassCardContainer = document.querySelector('.glass-card-container');

      function adjustOrangeBarHeight() {
        if (window.innerWidth <= 992) {
          let totalHeight = 0;
          glassCards.forEach(card => {
            totalHeight += card.offsetHeight;
          });
          orangeBar.style.height = (totalHeight + 170) + 'px';
          glassCardContainer.style.marginTop = '-' + (totalHeight + 120) + 'px';
        } else {
          orangeBar.style.height = '';
          glassCardContainer.style.marginTop = '-120px';
        }
      }
      adjustOrangeBarHeight();
      window.addEventListener('resize', adjustOrangeBarHeight);
    });
  </script>
{/literal}

<section class="container way-container">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-7 text-center mb-3">
          <h2 class="text-center mb-3">{'porg_support_expertise_title'|translate}</h2>
          <p class="text-center mb-5">{'porg_support_expertise_subtitle'|translate}</p>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-l">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <h3 class="text-center mb-4">{'porg_support_expertise_card1_title'|translate}</h3>
            <p class="strong-text">{'porg_support_expertise_card1_desc'|translate}</p>
            <ul class="help-card-list">
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card1_li1'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card1_li2'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card1_li3'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card1_li4'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card1_li5'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card1_li6'|translate}</span>
              </li>
            </ul>
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_expertise_card1_btn'|translate}
            href="{$PORG_ROOT}{$URL.pricing}" class='mt-auto'}
          </div>
        </div>
        <div class="col-md-6 text-center mb-4 d-flex ways-to-use-card-col-r">
          <div class="way-to-use-card w-100 d-flex flex-column">
            <h3 class="text-center mb-4">{'porg_support_expertise_card2_title'|translate}</h3>
            <p class="strong-text">{'porg_support_expertise_card2_desc'|translate}</p>
            <ul class="help-card-list">
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card2_li1'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card2_li2'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card2_li3'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card2_li4'|translate}</span>
              </li>
              <li class="p"><i
                  class="icon-check-1 main-green-bg clear-text"></i><span>{'porg_support_expertise_card2_li5'|translate}</span>
              </li>
            </ul>
            {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_support_expertise_card2_btn'|translate}
            href="{$PORG_ROOT}{$URL.contact}" class='mt-auto'}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container way-container">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">

        <div class="col-md-2">
        </div>
        <div class="col-md-6 text-center mb-3">
          <h2 class="text-center mb-3">{'porg_support_before_title'|translate}</h2>
          <p class="text-center mb-5">{'porg_support_before_subtitle'|translate}</p>
        </div>
        <div class="col-md-2">
        </div>

        <div class="col-md-4 text-center mb-4 d-flex">
          <div class="way-to-use-card w-100 d-flex flex-column px-3 py-4">
            <div class="icon-wrapper orange-bg mx-auto">
              <i class="orange-text icon-doc"></i>
            </div>
            <h4 class="text-center mb-5">{'porg_support_before_card1_title'|translate}</h4>
            {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'porg_support_before_card1_btn'|translate}
            href="{$DOCUMENTATION_URL}" class='mt-auto' target="_blank"}
          </div>
        </div>
        <div class="col-md-4 text-center mb-4 d-flex">
          <div class="way-to-use-card w-100 d-flex flex-column px-3 py-4">
            <div class="icon-wrapper orange-bg mx-auto">
              <i class="orange-text icon-dev"></i>
            </div>
            <h4 class="text-center mb-5">{'porg_support_before_card2_title'|translate}</h4>
            {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'porg_support_before_card2_btn'|translate}
            href="{$INSTALL_GUIDE_URL}" class='mt-auto' target="_blank"}
          </div>
        </div>
        <div class="col-md-4 text-center mb-4 d-flex">
          <div class="way-to-use-card w-100 d-flex flex-column px-3 py-4">
            <div class="icon-wrapper orange-bg mx-auto">
              <i class="orange-text icon-help"></i>
            </div>
            <h4 class="text-center mb-5">{'porg_support_before_card3_title'|translate}</h4>
            {include file='template/include/buttons/button.tpl' variant='cta_primary' label={'porg_support_before_card3_btn'|translate}
            href="{$FORUM_URL}" class='mt-auto' target="_blank"}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="container mb-5">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      {include file='template/include/card/get_started_cta2.tpl'}
    </div>
  </div>
</section>