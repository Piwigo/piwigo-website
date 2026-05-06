document.addEventListener('DOMContentLoaded', function () {
  const contentContainer = document.getElementById('use-cases-content');
  if (!contentContainer) {
    return;
  }

  const sections = contentContainer.querySelectorAll('[data-use-case-section]');

  function showSection(sectionKey) {
    let found = false;

    sections.forEach(function (section) {
      const isTarget = section.getAttribute('data-use-case-section') === sectionKey;
      section.classList.toggle('is-active', isTarget);
      if (isTarget) {
        found = true;
      }
    });

    if (!found) {
      sections.forEach(function (section) {
        section.classList.remove('is-active');
      });

      if (sections.length > 0) {
        sections[0].classList.add('is-active');
      }
    }
  }

  function activateFromHash() {
    const sectionKey = (window.location.hash || '').replace('#', '').trim();
    if (sectionKey) {
      showSection(sectionKey);
    }
  }

  activateFromHash();
  window.addEventListener('hashchange', activateFromHash);
});
