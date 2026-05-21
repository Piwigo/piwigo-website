$(document).ready(function () {
  // Scrollable cards navigation
  const container = $('#cardsContainer');
  const prevBtn = $('#prevBtn');
  const nextBtn = $('#nextBtn');
  const cardWidth = 290 + 20; // Card width + gap
  let isScrolling = false;

  function getScrollDistance() {
    return window.matchMedia('(max-width: 768px)').matches ? cardWidth : cardWidth * 2;
  }

  prevBtn.on('click', function () {
    if (isScrolling) {
      return;
    }

    isScrolling = true;
    prevBtn.prop('disabled', true);
    nextBtn.prop('disabled', true);

    container.animate({
      scrollLeft: container.scrollLeft() - getScrollDistance()
    }, 500, function () {
      isScrolling = false;
      updateButtonState();
    });
  });

  nextBtn.on('click', function () {
    if (isScrolling) {
      return;
    }

    isScrolling = true;
    prevBtn.prop('disabled', true);
    nextBtn.prop('disabled', true);

    container.animate({
      scrollLeft: container.scrollLeft() + getScrollDistance()
    }, 500, function () {
      isScrolling = false;
      updateButtonState();
    });
  });

  function updateButtonState() {
    const scrollLeft = container.scrollLeft();
    const maxScroll = container[0].scrollWidth - container.outerWidth();

    prevBtn.prop('disabled', scrollLeft === 0);
    nextBtn.prop('disabled', scrollLeft >= maxScroll - 10);
  }

  updateButtonState();
  container.on('scroll', updateButtonState);
  $(window).on('resize', updateButtonState);

  // Sync commits card state with collapse
  function syncCommitCardState(collapseElement) {
    const card = $(collapseElement).closest('.commits-card');
    if (!card.length) {
      return;
    }

    card.toggleClass('is-open', $(collapseElement).hasClass('show'));
  }

  $(document)
    .on('shown.bs.collapse', '.commits-card .collapse', function () {
      syncCommitCardState(this);
    })
    .on('hidden.bs.collapse', '.commits-card .collapse', function () {
      syncCommitCardState(this);
    })
    .on('click', '.commits-card', function (event) {
      if ($(event.target).closest('a, button, input, textarea, select, label').length) {
        return;
      }

      const collapseElement = $(this).find('.collapse').get(0);
      if (!collapseElement || !window.bootstrap || !bootstrap.Collapse) {
        return;
      }

      bootstrap.Collapse.getOrCreateInstance(collapseElement, { toggle: false }).toggle();
    })
    .on('keydown', '.commits-card', function (event) {
      if (event.key !== 'Enter' && event.key !== ' ') {
        return;
      }

      const collapseElement = $(this).find('.collapse').get(0);
      if (!collapseElement || !window.bootstrap || !bootstrap.Collapse) {
        return;
      }

      event.preventDefault();
      bootstrap.Collapse.getOrCreateInstance(collapseElement, { toggle: false }).toggle();
    });

});
