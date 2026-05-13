$(document).ready(function() {
  // Scrollable cards navigation
  const container = $('#cardsContainer');
  const prevBtn = $('#prevBtn');
  const nextBtn = $('#nextBtn');
  const cardWidth = 290 + 20; // Card width + gap
  const scrollDistance = cardWidth * 2; // 2 cards

  prevBtn.on('click', function() {
    container.stop(true).animate({
      scrollLeft: container.scrollLeft() - scrollDistance
    }, 500);
  });

  nextBtn.on('click', function() {
    container.stop(true).animate({
      scrollLeft: container.scrollLeft() + scrollDistance
    }, 500);
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

  
});
