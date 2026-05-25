document.addEventListener('DOMContentLoaded', function() {
  document.body.style.overflowX = 'clip';
  document.documentElement.style.overflowX = 'clip';

  var menuPosY = jQuery('#release_menu').position().top;
  console.log("menu posY = "+menuPosY);
  jQuery(window).scroll(function () {
    console.log(this.scrollY);
    if (this.scrollY > menuPosY) {
      jQuery(".btn-back-to-menu").show();
    } else {
      jQuery(".btn-back-to-menu").hide();
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
    activeTarget.link.classList.add('actual-nav-link');
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
    if (ticking) {
      return;
    }

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

  updateActiveLink();
});