<section class="container testimonials-container my-5">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <div class="row justify-content-center">
        <div class="col-md-8 text-center mb-5 pb-2">
          <h3 class="text-center mb-0">{$title}</h3>
        </div>
        <div class="testi-slider-wrap px-0">
          <div class="testi-track" id="testiTrack">
            {foreach $comments as $key => $comment}
              <div class="testi-card">
                <i class="icon-quote main-green-text"></i>
                <p class="p-testimonial testi-text mb-0">{$comment.comment}</p>
                <div class="testi-footer">
                  {if $comment.author|strpos:"," !== false}
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
                      <a href="{$comment.url}" target="_blank" rel="noopener noreferrer" class="testi-author-link sector-testimonial {if $comment.hosting == 'self-hosted'}orange-text{else}pink-text{/if}">{$company_name}<i class="icon-ext1 {if $comment.hosting == 'self-hosted'}secondary-orange-text{else}secondary-pink-text{/if}-text ms-1"></i><i class="icon-ext2 {if $comment.hosting == 'self-hosted'}secondary-orange-text{else}secondary-pink-text{/if} ms-1"></i></a>
                    {else}
                      <span class="sector-testimonial {if $comment.hosting == 'self-hosted'}orange-text{else}pink-text{/if}">{$company_name}</span>
                    {/if}
                    {if $comment.hosting == 'self-hosted'}
                      <p class="sector-testimonial mb-0 mt-1 dark-text"><i class="icon-self-host orange-text me-1"></i>{'Self-hosted'|translate}</p>
                    {else if $comment.hosting == 'cloud'}
                      <p class="sector-testimonial mb-0 mt-1 dark-text"><i class="icon-cloud-oneplace pink-text me-1"></i>Piwigo {'Cloud'|translate}</p>
                    {/if}
                  {/if}
                </div>
              </div>
            {/foreach}
          </div>
        </div>

        <div class="testi-dots" id="testiDots"></div>

        <div class="text-center mt-4">
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={$btn_text} href={$btn_link}}
        </div>
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

      const THRESHOLD = 300;

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
          // On desktop, width is based on text length
          cards.forEach(card => {
            const text = card.querySelector('.testi-text');
            card.style.width = (text && text.textContent.trim().length > THRESHOLD) ? '685px' : '365px';
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