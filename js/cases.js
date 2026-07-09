document.addEventListener('DOMContentLoaded', function() {
  // prevent horizontal overflow
  document.body.style.overflowX = 'clip';
  document.documentElement.style.overflowX = 'clip';

  var releaseMenu = document.getElementById('release_menu');
  if (!releaseMenu) return;

  var menuPosY = jQuery('#release_menu').position().top;

  var backBtn = document.querySelector('.btn-back-to-menu');
  if (backBtn) backBtn.style.display = 'none';

  jQuery(window).on('scroll', function () {
    if (window.scrollY > menuPosY) {
      if (backBtn) jQuery(backBtn).show();
    } else {
      if (backBtn) jQuery(backBtn).hide();
    }
  });

  const navLinks = Array.from(document.querySelectorAll('.version-16-nav-list a[href^="#"]'));
  const targets = navLinks
    .map((link) => {
      const targetId = decodeURIComponent(link.getAttribute('href').slice(1));
      const targetElement = document.getElementById(targetId);
      return targetElement ? { link, targetElement } : null;
    })
    .filter(Boolean);

  if (targets.length === 0) {
    return;
  }

  const clearActiveLinks = () => {
    navLinks.forEach((link) => link.classList.remove('actual-nav-link'));
  };

  const setActiveLink = (activeTarget) => {
    clearActiveLinks();
    if (activeTarget && activeTarget.link) activeTarget.link.classList.add('actual-nav-link');
  };

  const updateActiveLink = () => {
    const activationLine = window.innerHeight * 0.35;
    let activeTarget = targets[0];

    for (const target of targets) {
      const rect = target.targetElement.getBoundingClientRect();

      if (rect.top <= activationLine) {
        activeTarget = target;
      } else {
        break;
      }
    }

    setActiveLink(activeTarget);
  };

  let ticking = false;
  const onScroll = () => {
    if (ticking) return;
    ticking = true;
    window.requestAnimationFrame(() => {
      updateActiveLink();
      ticking = false;
    });
  };

  window.addEventListener('scroll', onScroll, { passive: true });
  window.addEventListener('resize', updateActiveLink);
  window.addEventListener('hashchange', updateActiveLink);

  navLinks.forEach((link) => {
    link.addEventListener('click', () => {
      window.setTimeout(updateActiveLink, 0);
    });
  });

  // initialize
  updateActiveLink();
});
