document.addEventListener('DOMContentLoaded', function () {
  const sections = document.querySelectorAll('[data-use-case-section]');
  if (!sections.length) return;

  function showSection(key) {
    sections.forEach(function (section) {
      section.classList.toggle('is-active', section.getAttribute('data-use-case-section') === key);
    });
  }

  function activate() {
    const key = window.location.hash.replace('#', '').trim();
    const keys = Array.from(sections).map(s => s.getAttribute('data-use-case-section'));
    showSection(keys.includes(key) ? key : keys[0]);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  activate();

  window.addEventListener('hashchange', activate);
});