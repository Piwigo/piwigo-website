document.addEventListener('DOMContentLoaded', function () {
  const contentContainer = document.getElementById('use-cases-content');
  if (!contentContainer) return;

  const sections = contentContainer.querySelectorAll('[data-use-case-section]');
  const sectionKeys = Array.from(sections).map(s => s.getAttribute('data-use-case-section'));
  const sectionKeySet = new Set(sectionKeys);

  function showSection(sectionKey) {
    let found = false;
    sections.forEach(function (section) {
      const isTarget = section.getAttribute('data-use-case-section') === sectionKey;
      section.classList.toggle('is-active', isTarget);
      if (isTarget) found = true;
    });

    if (!found && sections.length > 0) {
      sections.forEach(s => s.classList.remove('is-active'));
      sections[0].classList.add('is-active');
    }
  }

  function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  function getSectionKeyFromLink(anchor) {
    const href = anchor.getAttribute('href');
    if (!href) return null;

    let targetUrl;
    try {
      targetUrl = new URL(href, window.location.href);
    } catch (e) {
      return null;
    }

    if (targetUrl.origin !== window.location.origin || !targetUrl.hash) return null;

    const sectionKey = targetUrl.hash.replace('#', '').trim();
    return sectionKeySet.has(sectionKey) ? sectionKey : null;
  }

  function activateFromHash() {
    const sectionKey = (window.location.hash || '').replace('#', '').trim();
    if (sectionKey && sectionKeySet.has(sectionKey)) {
      showSection(sectionKey);
    } else if (sections.length > 0) {
      sections[0].classList.add('is-active');
    }
  }

  if (window.location.hash) {
    const hash = window.location.hash;
    history.replaceState(null, '', window.location.pathname + window.location.search);
    activateFromHash.call({ hash });
    setTimeout(() => history.replaceState(null, '', hash), 0);
  } else {
    activateFromHash();
  }

  window.scrollTo(0, 0);

  window.addEventListener('hashchange', function () {
    activateFromHash();
    scrollToTop();
  });

  document.addEventListener('click', function (event) {
    if (!(event.target instanceof Element)) return;

    const anchor = event.target.closest('a[href]');
    if (!anchor || event.defaultPrevented || event.button !== 0) return;
    if (event.metaKey || event.ctrlKey || event.shiftKey || event.altKey) return;

    const sectionKey = getSectionKeyFromLink(anchor);
    if (!sectionKey) return;

    event.preventDefault();
    showSection(sectionKey);
    scrollToTop();

    setTimeout(() => history.replaceState(null, '', '#' + sectionKey), 300);
  });
});