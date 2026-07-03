<section class="container why-container d-none d-md-block">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-10 text-center mb-5">
          <h2 class="text-center mb-4">{$title}</h2>
        </div>
        <div class="why-items-list">
          <div class="row why-split-row">
            <div class="col-md-6 why-titles-col">
              <div class="why-titles-stack">
                {foreach $list_items as $item name=titleloop}
                  <div class="why-title-container {if $smarty.foreach.titleloop.first}h-100{/if}">
                    <div class="why-title-item" style="--item-index: {$smarty.foreach.titleloop.index};">
                      <i class="{$item.icon} orange-text"></i>
                      <h3 class="dark-text">{$item.title}</h3>
                    </div>
                  {/foreach}
                  {for $i=1 to count($list_items)}
                </div>{/for}
              </div>
            </div>
            <div class="col-md-6 why-cards-col">
              {foreach $list_items as $item}
                <div class="test-card mb-0">
                  <p class="mb-0">{$item.description}</p>
                </div>
              {/foreach}
            </div>
          </div>
        </div>
      </div>
    </div>
</section>

{literal}
  <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {

      const titleItems = document.querySelectorAll('.why-title-item');
      const cardItems = document.querySelectorAll('.why-cards-col .test-card');
      const titlesStack = document.querySelector('.why-titles-stack');
      const titlesCol = document.querySelector('.why-titles-col');

      if (!titleItems.length || !cardItems.length || !titlesStack || !titlesCol) return;

      function handlePositions() {
        const cardsCol = document.querySelector('.why-cards-col');
        const titlesCol = document.querySelector('.why-titles-col');
        const titleContainers = document.querySelectorAll('.why-titles-stack > .why-title-container, .why-title-container .why-title-container');

        if (!cardsCol || !titlesCol) return;

        titlesCol.style.height = cardsCol.offsetHeight + 'px';

        const cards = Array.from(document.querySelectorAll('.why-cards-col .test-card'));
        const cardHeights = cards.map(card => card.offsetHeight);
        const containers = document.querySelectorAll('.why-title-container');

        const container1 = containers[0];
        const container2 = containers[1];
        const container3 = containers[2];
        const container4 = containers[3];
        const container5 = containers[4];

        const container1Height = cardHeights[0] + cardHeights[1] + cardHeights[2] + cardHeights[3] + cardHeights[4] + 50 + 50 + 50 + 50;
        const container2Height = cardHeights[1] + cardHeights[2] + cardHeights[3] + cardHeights[4] + 50 + 50 + 50;
        const container3Height = cardHeights[2] + cardHeights[3] + cardHeights[4] + 50 + 50;
        const container4Height = cardHeights[3] + cardHeights[4] + 50;
        const container5Height = cardHeights[4];

        if (container1) container1.style.minHeight = container1Height + 'px';
        if (container2) container2.style.minHeight = container2Height + 'px';
        if (container3) container3.style.minHeight = container3Height + 'px';
        if (container4) container4.style.minHeight = container4Height + 'px';
        if (container5) container5.style.minHeight = container5Height + 'px';

        const gap = 10;
        let cumulativeTop = 40;
        let cumulativeBottom = 20;

        titleItems.forEach(function(item) {
          item.style.top = cumulativeTop + 'px';
          cumulativeTop += item.offsetHeight + gap;
        });

        

        let activeIndex = 0;

        titleItems.forEach((item, index) => {
          const stickyTop = parseFloat(item.style.top) || 0;

          if (item.getBoundingClientRect().top <= stickyTop + 1) {
            activeIndex = index;
          }
        });

        titleItems.forEach((item, index) => {
          const h3 = item.querySelector('h3');
          if (h3) h3.classList.toggle('dark-text', index !== activeIndex);
          const icon = item.querySelector('i');
          if (icon) icon.classList.toggle('orange-text', index === activeIndex);
          if (icon) icon.classList.toggle('dark-text', index !== activeIndex);
        });
      }

      handlePositions();
      window.addEventListener('resize', handlePositions);
      window.addEventListener('load', handlePositions);
      window.addEventListener('orientationchange', handlePositions);
      window.addEventListener('scroll', handlePositions);

      // --- Mobile Carousel Logic ---
      const carousel = document.querySelector('.model-mobile-carousel');
      const dots = document.querySelectorAll('.model-mobile-dot');

      if (carousel && dots.length) {
        // Update dots on scroll
        carousel.addEventListener('scroll', function() {
          const width = carousel.offsetWidth;
          const currentIndex = Math.round(carousel.scrollLeft / width);

          dots.forEach((dot, index) => {
            dot.classList.toggle('is-active', index === currentIndex);
          });
        });

        // Scroll to slide on dot click
        dots.forEach((dot, index) => {
          dot.addEventListener('click', function() {
            const width = carousel.offsetWidth;
            carousel.scrollTo({
              left: width * index,
              behavior: 'smooth'
            });
          });
        });
      }

    });
  </script>
{/literal}

<section class="container model-container-mobile d-md-none">
  <div class="model-mobile-header text-center mb-4">
    <h2 class="text-center mb-2">{$title}</h2>
  </div>

  <div class="model-mobile-carousel">
    {foreach $list_items as $item}
      <div class="model-mobile-slide">
        <div class="model-mobile-heading-row">
          <i class="{$item.icon} orange-text"></i>
          <h3>{$item.title}</h3>
        </div>
        <div class="test-card">
          <p class="mb-0">{$item.description}</p>
          {if isset($item.img_src)}
            <img class="img-circle w-100 mt-3" src="{$item.img_src}" alt="{$item.title}">
          {/if}
        </div>
      </div>
    {/foreach}
  </div>

  <div class="model-mobile-dots mt-3">
    {foreach $list_items as $item name=dotloop}
      <span class="model-mobile-dot {if $smarty.foreach.dotloop.first}is-active{/if}" data-dot="{$smarty.foreach.dotloop.index}"></span>
    {/foreach}
  </div>
</section>