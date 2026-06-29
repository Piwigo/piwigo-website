<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/about_us.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/triple_true.css">

<section class="about-us-header container-fluid">
  <div class="container">
    <div class="row text-center justify-content-center">
      <div class="col-lg-12 text-center justify-content-center">
        <div class="row justify-content-center align-items-stretch">
          <div class="col-lg-1">
          </div>

          <div class="col-lg-5 d-flex flex-column justify-content-center users-header-text pe-lg-5">
            <h1 class="mb-4 text-center text-lg-start">{'porg_about_us_title'|translate}</h1>
            <p class="mb-4 text-center text-lg-start">{'porg_about_us_desc'|translate}</p>
          </div>

          <div class="col-lg-6 responsive-image d-flex flex-column justify-content-center users-header-image">
            <div class="book-container">
              <img class="img-book" src="{$PORG_ROOT_URL}images/about-us/book.webp" alt="Piwigo screenshot">
              <img class="img-minia img-minia1" src="{$PORG_ROOT_URL}images/about-us/minia1.webp" alt="Piwigo screenshot">
              <img class="img-minia img-minia2" src="{$PORG_ROOT_URL}images/about-us/minia2.webp" alt="Piwigo screenshot">
              <img class="img-minia img-minia3" src="{$PORG_ROOT_URL}images/about-us/minia3.webp" alt="Piwigo screenshot">
              <img class="img-minia img-minia4" src="{$PORG_ROOT_URL}images/about-us/minia4.webp" alt="Piwigo screenshot">
              <img class="img-minia img-minia5" src="{$PORG_ROOT_URL}images/about-us/minia5.webp" alt="Piwigo screenshot">
              <img class="img-minia img-minia6" src="{$PORG_ROOT_URL}images/about-us/minia6.webp" alt="Piwigo screenshot">
            </div>
          </div>


          <div class="col-lg-1">
          </div>


          <div class="col-lg-11">
            <div class="badge-row">
              <div class="badge-item">
                <p class="badge-number mb-0 text-center">{$NB_YEARS} {'years'|translate}</p>
                <div class="p-boxed">{'porg_about_us_years'|translate}</div>
              </div>

              <div class="badge-item">
                <p class="badge-number mb-0 text-center">{$NB_INSTALLATIONS}</p>
                <div class="p-boxed">{'porg_about_us_installations'|translate}</div>
              </div>

              <div class="badge-item">
                <p class="badge-number mb-0 text-center">{$NB_DOWNLOADS}{'M (the one for millions)'|translate}</p>
                <div class="p-boxed">{'porg_about_us_downloads'|translate}</div>
              </div>

              <div class="badge-item">
                <p class="badge-number mb-0 text-center">{$NB_EXTENSIONS}</p>
                <div class="p-boxed">{'porg_about_us_extensions'|translate}</div>
              </div>

              <div class="badge-item">
                <p class="badge-number mb-0 text-center">{$NB_TRANSLATIONS}</p>
                <div class="p-boxed">{'porg_about_us_languages'|translate}</div>
              </div>

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
      // --- Parallax effect for miniatures ---
      const miniatures = document.querySelectorAll('.img-minia');
      const speeds = [0.4, 0.5, 0.65, 0.2, 0.5, 0.8];

      function applyParallax() {
        let scrollY = window.scrollY;
        miniatures.forEach((minia, index) => {
          let moveY = -scrollY * speeds[index];
          minia.style.transform = `translateY(${moveY}px)`;
        });
      }
      window.addEventListener('scroll', applyParallax);

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


<section class="container-desc">
  <div class="container">
    <div class="row text-center">
      <h2 class="mb-5 text-center">{'porg_about_us_desc_title'|translate}</h2>
      <div class="px-0 orange-bar">
        <img src="{$PORG_ROOT_URL}images/about-us/orange_bar.webp" alt="">
      </div>
      <div class="glass-card-container">
        <div class="row">
          <div class="col-12 col-lg-4">
            <div class="glass-card">
              <h3 class="text-center">{'porg_about_us_desc_title_card1'|translate}</h3>
              <p class="text-center">{'porg_about_us_desc_desc_card1'|translate}</p>
            </div>
          </div>
          <div class="col-12 col-lg-4">
            <div class="glass-card">
              <h3 class="text-center">{'porg_about_us_desc_title_card2'|translate}</h3>
              <p class="text-center">{'porg_about_us_desc_desc_card2'|translate}</p>
            </div>
          </div>
          <div class="col-12 col-lg-4">
            <div class="glass-card">
              <h3 class="text-center">{'porg_about_us_desc_title_card3'|translate}</h3>
              <p class="text-center">{'porg_about_us_desc_desc_card3'|translate}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<div class="px-4 px-md-0">
  <section class="container-beginning">
    <div class="container justify-content-center">
      <div class="row text-center justify-content-center">
        <div class="col-md-10">
          {include file="template/include/card/global_text_image.tpl" title={'porg_about_us_beginning_title'|translate} desc={'porg_about_us_beginning_desc'|translate} image="{$PORG_ROOT_URL}images/about-us/plg.webp" }
        </div>
      </div>
    </div>
  </section>


  <section class="container-open">
    <div class="container justify-content-center">
      <div class="row text-center justify-content-center">
        <div class="col-md-9">
          <div class="grey-box">
            <h2 class="mb-4 text-center">{'porg_about_us_open_title'|translate}</h2>
            {include file="template/include/card/global_text_image.tpl" desc={'porg_about_us_open_desc'|translate} image="{$PORG_ROOT_URL}images/about-us/git.webp" }
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="container-inde">
    <div class="container justify-content-center">
      <div class="row text-center justify-content-center">
        <div class="col-md-10">
          {include file="template/include/card/global_text_image.tpl" reverse=true title={'porg_about_us_inde_title'|translate} desc={'porg_about_us_inde_desc'|translate} image="{$PORG_ROOT_URL}images/about-us/{$INDE_IMAGE}" }
        </div>
      </div>
    </div>
  </section>
</div>


<section class="container-team">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-10 col-lg-8">
        <div class="triple-true-header">
          <h2 class="triple-true-title">
            {'porg_about_us_team_title'|translate}
          </h2>
          <p class="pink-text strong-text triple-true-subtitle">
            {'porg_about_us_team_subtitle'|translate}
          </p>
        </div>

        <div class="feature-benefits-strip">
          <div class="feature-benefit-item">
            <span class="feature-benefit-icon pink-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
            <p class="feature-benefit-text mb-0 li-centered">{'porg_about_us_team_text1'|translate}</p>
          </div>
          <div class="feature-benefit-item">
            <span class="feature-benefit-icon pink-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
            <p class="feature-benefit-text mb-0 li-centered">{'porg_about_us_team_text2'|translate}</p>
          </div>
          <div class="feature-benefit-item">
            <span class="feature-benefit-icon pink-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
            <p class="feature-benefit-text mb-0 li-centered">{'porg_about_us_team_text3'|translate}</p>
          </div>
        </div>
      </div>

      <h3 class="text-center mb-5">
        {'Meet our staff'|translate}
      </h3>
      <div class="col-md-10">
        <div class="row justify-content-center justify-content-md-start">
          {include file="template/include/card/person_card.tpl"
          name="Pierrick"
          role={'Founder & Lead Developer'|translate}
          image="pierrick.webp"
          buttons=[['icon' => 'icon-website', 'link' => 'https://pierrick.le-gall.net/']]
          }

          {include file="template/include/card/person_card.tpl"
          name="Damien"
          role={'Support & Plugin Developer'|translate}
          image="damien.webp"
          buttons=[['icon' => 'icon-website', 'link' => 'https://pierrick.le-gall.net/']]
          }

          {include file="template/include/card/person_card.tpl"
          name="Hannah"
          role={'Developer'|translate}
          image="hannah.webp"
          }

          {include file="template/include/card/person_card.tpl"
          name="Willy"
          role={'Developer'|translate}
          image="willy.webp"
          buttons=
          [
          ['icon' => 'icon-linkedin', 'link' => 'https://www.linkedin.com/in/linty/'],
          ['icon' => 'icon-git', 'link' => 'https://github.com/LintyDev']
          ]
          }

          {include file="template/include/card/person_card.tpl"
          name="Lana"
          role={'Developer'|translate}
          image="lana.webp"
          buttons=
          [
          ['icon' => 'icon-codeberg', 'link' => 'https://codeberg.org/Renarde-Dev'],
          ['icon' => 'icon-git', 'link' => 'https://github.com/Renarde-dev']
          ]
          }

          {include file="template/include/card/person_card.tpl"
          name="Claire"
          role={'Marketing'|translate}
          image="claire.webp"
          buttons=
          [
          ['icon' => 'icon-linkedin', 'link' => 'https://www.linkedin.com/in/clairemichard/']
          ]
          }

          {include file="template/include/card/person_card.tpl"
          name="Alice"
          role={'UX/UI Designer'|translate}
          image="alice.webp"
          buttons=
          [
          ['icon' => 'icon-linkedin', 'link' => 'https://www.linkedin.com/in/alice-bossuat-abcd-studio/'],
          ['icon' => 'icon-insta2', 'link' => 'https://www.instagram.com/abcdstudio_/'],
          ['icon' => 'icon-website', 'link' => 'https://abcd-studio.fr/']
          ]
          }

          {include file="template/include/card/person_card.tpl"
          name="Steven"
          role={'Finance'|translate}
          image="steven.webp"
          buttons=
          [
          ['icon' => 'icon-linkedin', 'link' => 'https://www.linkedin.com/in/stevenlardeux/'],
          ['icon' => 'icon-website', 'link' => 'https://www.ohmydaf.com/']
          ]
          }
        </div>
      </div>
    </div>
  </div>
</section>
{* ['icon' => 'icon-longhouse', 'link' => 'https://la-taniere-solidaire.fr/'], 
add it for lana*}

<section class="container why-container d-none d-md-block">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-10 text-center mb-5">
          <h2 class="text-center mb-4">{'porg_about_us_model_title'|translate}</h2>
          <p class="text-center">{'porg_about_us_model_desc'|translate}</p>
        </div>
        <div class="why-items-list">
          <div class="row why-split-row">
            <div class="col-md-6 why-titles-col">
              <div class="why-titles-stack">
                <div class="why-title-container h-100">
                  <div class="why-title-item" style="--item-index: 0;">
                    <i class="icon-langage orange-text"></i>
                    <h3 class="dark-text">{'porg_about_us_model_title1'|translate}</h3>
                  </div>
                  <div class="why-title-container">
                    <div class="why-title-item" style="--item-index: 1;">
                      <i class="icon-help orange-text"></i>
                      <h3 class="dark-text">{'porg_about_us_model_title2'|translate}</h3>
                    </div>
                    <div class="why-title-container">
                      <div class="why-title-item" style="--item-index: 2;">
                        <i class="icon-contribute orange-text"></i>
                        <h3 class="dark-text">{'porg_about_us_model_title3'|translate}</h3>
                      </div>
                      <div class="why-title-container">
                        <div class="why-title-item" style="--item-index: 3;">
                          <i class="icon-contribute orange-text"></i>
                          <h3 class="dark-text">{'porg_about_us_model_title4'|translate}</h3>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 why-cards-col">
              <div class="test-card mb-4">
                <p class="mb-0">{'porg_about_us_model_desc1'|translate}</p>
              </div>
              <div class="test-card mb-4">
                <p class="mb-0">{'porg_about_us_model_desc2'|translate}</p>
              </div>
              <div class="test-card mb-4">
                <p class="mb-0">{'porg_about_us_model_desc3'|translate}</p>
              </div>
              <div class="test-card mb-4">
                <p class="mb-0">{'porg_about_us_model_desc4'|translate}</p>
                <img class="img-circle w-100 mt-3" src="{$PORG_ROOT_URL}images/about-us/{$CIRCLE_IMAGE}" alt="Piwigo screenshot">
              </div>
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

        const container1Height = cardHeights[0] + cardHeights[1] + cardHeights[2] + cardHeights[3] + 104 + 104 + 104 + 24;
        const container2Height = cardHeights[1] + cardHeights[2] + cardHeights[3] + 104 + 104 + 24;
        const container3Height = cardHeights[2] + cardHeights[3] + 104 + 24;
        const container4Height = cardHeights[3] + 24;

        if (container1) container1.style.minHeight = container1Height + 'px';
        if (container2) container2.style.minHeight = container2Height + 'px';
        if (container3) container3.style.minHeight = container3Height + 'px';
        if (container4) container4.style.minHeight = container4Height + 'px';

        const gap = 10;
        let cumulativeTop = 40;
        let cumulativeBottom = 20;

        titleItems.forEach(function(item) {
          item.style.top = cumulativeTop + 'px';
          cumulativeTop += item.offsetHeight + gap;
        });

        Array.from(titleItems).reverse().forEach(function(item) {
          item.style.marginBottom = cumulativeBottom + 'px';
          cumulativeBottom += item.offsetHeight + gap;
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

      const timelineContainer = document.querySelector('.timeline-scroll-container');
      const timelineItems = document.querySelectorAll('.timeline-item');
      const paginationContainer = document.querySelector('.timeline-pagination');
      const timelineLine = document.querySelector('.timeline-line');

      if (timelineContainer && timelineItems.length > 0) {
        timelineItems.forEach((_, index) => {
          const dot = document.createElement('div');
          dot.classList.add('pagination-dot');
          dot.dataset.index = index;
          paginationContainer.appendChild(dot);
        });
        const paginationDots = document.querySelectorAll('.pagination-dot');

        let lastActiveIndex = -1;
        const updateActiveMilestone = (activeIndex) => {
          if (activeIndex === lastActiveIndex) return;
          lastActiveIndex = activeIndex;

          timelineItems.forEach((item, index) => {
            item.classList.toggle('active', index === activeIndex);
          });
          paginationDots.forEach((dot, index) => {
            dot.classList.toggle('active', index === activeIndex);
          });
        };

        const checkCenterItem = () => {
          const containerCenter = timelineContainer.getBoundingClientRect().left + (timelineContainer.offsetWidth / 2);
          let closestIndex = 0;
          let minDistance = Infinity;

          timelineItems.forEach((item, index) => {
            const itemCenter = item.getBoundingClientRect().left + (item.offsetWidth / 2);
            const distance = Math.abs(containerCenter - itemCenter);
            if (distance < minDistance) {
              minDistance = distance;
              closestIndex = index;
            }
          });
          updateActiveMilestone(closestIndex);
        };

        const adjustTimeline = () => {
          if (timelineItems.length === 0) return;
          const itemWidth = timelineItems[0].offsetWidth;
          const scrollPadding = (timelineContainer.offsetWidth / 2) - (itemWidth / 2);

          timelineContainer.style.paddingLeft = `${scrollPadding}px`;
          timelineContainer.style.paddingRight = `${scrollPadding}px`;
        };

        timelineContainer.addEventListener('scroll', checkCenterItem);

        const scrollToItem = (index) => {
          const targetItem = timelineItems[index];
          if (targetItem) {
            const scrollLeft = targetItem.offsetLeft - (timelineContainer.offsetWidth / 2) + (targetItem.offsetWidth / 2);
            timelineContainer.scrollTo({
              left: scrollLeft,
              behavior: 'smooth'
            });
          }
        };

        timelineItems.forEach((item, index) => {
          item.addEventListener('click', () => scrollToItem(index));
        });

        paginationDots.forEach((dot, index) => {
          dot.addEventListener('click', () => scrollToItem(index));
        });

        adjustTimeline();
        window.addEventListener('resize', adjustTimeline);

        const initialActiveIndex = 0;
        updateActiveMilestone(initialActiveIndex);

        setTimeout(checkCenterItem, 150);
      }
    });
  </script>
{/literal}


<section class="container model-container-mobile d-md-none">
  <div class="model-mobile-header text-center mb-4">
    <h2 class="text-center mb-2">{'porg_about_us_model_title'|translate}</h2>
    <p class="text-center">{'porg_about_us_model_desc'|translate}</p>
  </div>

  <div class="model-mobile-carousel">

    <div class="model-mobile-slide">
      <div class="model-mobile-heading-row">
        <i class="icon-langage orange-text"></i>
        <h3>{'porg_about_us_model_title1'|translate}</h3>
      </div>
      <div class="test-card">
        <p class="mb-0">{'porg_about_us_model_desc1'|translate}</p>
      </div>
    </div>

    <div class="model-mobile-slide">
      <div class="model-mobile-heading-row">
        <i class="icon-help orange-text"></i>
        <h3>{'porg_about_us_model_title2'|translate}</h3>
      </div>
      <div class="test-card">
        <p class="mb-0">{'porg_about_us_model_desc2'|translate}</p>
      </div>
    </div>

    <div class="model-mobile-slide">
      <div class="model-mobile-heading-row">
        <i class="icon-contribute orange-text"></i>
        <h3>{'porg_about_us_model_title3'|translate}</h3>
      </div>
      <div class="test-card">
        <p class="mb-0">{'porg_about_us_model_desc3'|translate}</p>
      </div>
    </div>

    <div class="model-mobile-slide">
      <div class="model-mobile-heading-row">
        <i class="icon-contribute orange-text"></i>
        <h3>{'porg_about_us_model_title4'|translate}</h3>
      </div>
      <div class="test-card">
        <p class="mb-0">{'porg_about_us_model_desc4'|translate}</p>
        <img class="img-circle w-100 mt-3" src="{$PORG_ROOT_URL}images/about-us/{$CIRCLE_IMAGE}" alt="Piwigo screenshot">
      </div>
    </div>
  </div>

  <div class="model-mobile-dots mt-3">
    <span class="model-mobile-dot is-active" data-dot="0"></span>
    <span class="model-mobile-dot" data-dot="1"></span>
    <span class="model-mobile-dot" data-dot="2"></span>
    <span class="model-mobile-dot" data-dot="3"></span>
  </div>
</section>


<section class="milestones-container">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10">
        <div class="milestones-card">
          <h2 class="milestones-title">{'A few milestones'|translate}</h2>
          <div class="timeline-wrapper">
            <div class="timeline-scroll-container">
              <div class="timeline-item" data-year="2002">
                <h4 class="timeline-year">2002</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2002'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2007">
                <h4 class="timeline-year">2007</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2007'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2009">
                <h4 class="timeline-year">2009</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2009'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2010">
                <h4 class="timeline-year">2010</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2010'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2011">
                <h4 class="timeline-year">2011</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2011'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2015">
                <h4 class="timeline-year">2015</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2015'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2017">
                <h4 class="timeline-year">2017</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2017'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2018">
                <h4 class="timeline-year">2018</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2018'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2019">
                <h4 class="timeline-year">2019</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2019'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2020">
                <h4 class="timeline-year">2020</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2020'|translate}</div>
              </div>
              <div class="timeline-item" data-year="2025">
                <h4 class="timeline-year">2025</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_2025'|translate}</div>
              </div>
              <div class="timeline-item" data-year="Today">
                <h4 class="timeline-year">{'Today'|translate}</h4>
                <div class="timeline-dot"></div>
                <div class="timeline-segment-line"></div>
                <div class="timeline-text p-boxed text-center">{'porg_about_us_milestone_today'|translate}</div>
              </div>
            </div>
          </div>
        </div>
        <div class="timeline-pagination">
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-join">
  <div class="container justify-content-center">
    <div class="row text-center justify-content-center">
      <div class="col-md-10">
        {include file="template/include/card/global_text_image.tpl" title={'porg_about_us_join_title'|translate} desc={'porg_about_us_join_desc'|translate} image="{$PORG_ROOT_URL}images/about-us/join.webp" btn_text={'Get Involved'|translate} btn_link="#" btn_orange=true}
      </div>
    </div>
  </div>
</section>