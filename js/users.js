jQuery(document).ready(function () {
  var masonryInitialized = false;
  var $usersGrid = $('#users');

  function handleMasonry() {
    var screenWidth = $(window).width();
    if (screenWidth > 768) {
      if (!masonryInitialized) {
        $usersGrid.imagesLoaded(function () {
          $usersGrid.masonry({
            itemSelector: '.user',
            horizontalOrder: true,
          });
          masonryInitialized = true;
        });
      }
    } else {
      if (masonryInitialized && $usersGrid.data('masonry')) {
        $usersGrid.masonry('destroy');
        masonryInitialized = false;
      }
      // Ensure inline styles are removed on mobile
      $usersGrid.find('.user').css({ position: '', left: '', top: '' });
    }
  }

  // Initial check on page load
  handleMasonry();

  // Re-check on window resize (with a debounce to avoid performance issues)
  var resizeTimer;
  $(window).on('resize', function () {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function () {
      handleMasonry();
    }, 250);
  });

  // The rest of your mobile-specific filter header logic can be removed
  // as it's now handled by Bootstrap collapse and CSS.
  // I'll leave it for now in case you want to restore it, but it's likely not needed.
  if ($(document).width() < 768) {
    // This part is likely superseded by the Bootstrap collapse implementation
    // but I'm leaving it commented out for reference.
    /*
    jQuery('.filter-header').append('<i class="icon-down-open rotate"></i>');
    jQuery('.filters').hide();

    jQuery('.filter-header').click(function () {
      jQuery('.filter-header .icon-down-open').toggleClass('rotate');
      jQuery('.filter-header').css('border-bottom', '2px solid var(--main_orange);');
      jQuery('.filters').toggle();
    });
    */
  }
});


// On change for country filter
jQuery("#country").on("change", function () {
  filterExamples('country');
});

function toggleFilter(filter) {
  // This function is now handled by Bootstrap's data-bs-toggle="collapse"
  // and can likely be removed if not used elsewhere.
  // jQuery('#' + filter).toggle();
  // jQuery('#' + filter).siblings('.filter-title').children('.icon-down-open').toggleClass('rotate');
}

// Called on each click of a checkbox
function filterExamples(filter) {
  // Destroy masonry before filtering if on desktop
  if ($(window).width() > 768 && $('#users').data('masonry')) {
    $('#users').masonry('destroy');
  }

  // remove d-block class from previoulsy chanegd filters
  jQuery('#noMatches').addClass('d-none');
  jQuery('#noMatches').removeClass('d-block');

  if ($(document).width() < 768) {
    // Scroll to top of use-cases when filters changed
    jQuery('html, body').animate({
      scrollTop: $("#our-users").offset().top - 150
    }, 1000);
  }
  else {
    jQuery('html, body').animate({
      scrollTop: $("#our-users").offset().top
    }, 1000);
  }

  // Get country value
  var country = jQuery('#country').val()

  if (filter != 'country') {
    // Display button with selected filter at top of section
    jQuery('#selected-filters .' + filter).toggleClass('d-inline-block d-none');
  }

  var checkedFilters = new Array();
  var filterUsers = new Array();
  var filterDisplay = new Array();

  // Foreach filter checked add to array
  jQuery("input:checkbox:checked").each(function () {

    checkedFilters.push(jQuery(this).val());
    // 
    if (jQuery(this).closest('.collapse').attr('id') == 'filter-display') {
      filterDisplay.push(jQuery(this).val());
    }
    else if (jQuery(this).closest('.collapse').attr('id') == 'filter-users') {
      filterUsers.push(jQuery(this).val());
    }
  });


  // If nothing is in filter array then display all use-case cards 
  // The cards are moved to another div rather than hidden. This is due to masonry.
  // To avoid masonry display problems, masonry is reapplied only on the cards that are displayed
  if (checkedFilters.length === 0) {
    if (country != "all") {
      // Filter by country
      $('#users').find('.user').detach().prependTo('#usersNotVisible');
      $('#usersNotVisible').find('.user.' + country).detach().prependTo('#users');
    }
    else {
      // Here no filter is selected
      $('#users').find('.user').detach().prependTo('#usersNotVisible');
      $('#usersNotVisible').find('.user').detach().prependTo('#users');
    }
  }
  // Else for each filter in array add class to display card
  else {
    console.log(checkedFilters)

    // Hide all cards and then for each filter display card with specific class
    $('#users').find('.user').detach().prependTo('#usersNotVisible');

    // Only display filter
    if (filterDisplay.length !== 0 && filterUsers.length === 0) {
      jQuery(filterDisplay).each(function (index, display) {
        if (country != "all") {
          // Filter with country
          $('#usersNotVisible').find('.' + display + '.' + country).detach().prependTo('#users');
        }
        else {
          // Filter without country set
          $('#usersNotVisible').find('.' + display).detach().prependTo('#users');
        }
      });
    }
    // Only user filter
    else if (filterUsers.length !== 0 && filterDisplay.length === 0) {
      jQuery(filterUsers).each(function (index, user) {
        if (country != "all") {
          // Filter with country
          $('#usersNotVisible').find('.' + user + '.' + country).detach().prependTo('#users');
        }
        else {
          // Filter without country set
          $('#usersNotVisible').find('.' + user).detach().prependTo('#users');
        }
      });
    }
    else {
      jQuery(filterDisplay).each(function (index, display) {
        jQuery(filterUsers).each(function (index, user) {
          if (country != "all") {
            // Filter with country
            $('#usersNotVisible').find('.' + display + '.' + user + '.' + country).detach().prependTo('#users');
          }
          else {
            // Filter without country set
            $('#usersNotVisible').find('.' + display + '.' + user).detach().prependTo('#users');
          }
        });
      });
    }



    // if no use-case cards match filter display no match message
    if (jQuery('#users').find('.user:visible').length == 0) {
      jQuery('#noMatches').removeClass('d-none');
      jQuery('#noMatches').addClass('d-block');
    }
  }

  // Keep order set in ressources
  jQuery("#users .user")
    .sort((a, b) => $(a).data("pos") - $(b).data("pos"))
    .appendTo("#users");

  if ($(document).width() > 768) {
    // Reapply masonry to filtered cards, but let the resize handler do the init
    $('#users').imagesLoaded(function () {
      $('#users').masonry({
        itemSelector: '.user',
        horizontalOrder: true,
      });
    });
  }

}

// Called when user clicks on button at top of use-case cards
// Triggers click as is user removed filter
function removeFilter(filter) {
  jQuery('#' + filter).trigger("click");
}

function clearFilters() {
  const checkboxes = document.querySelectorAll('.filter-container input[type="checkbox"]');
  checkboxes.forEach(function (checkbox) {
    checkbox.checked = false;
  });

  const countrySelect = document.getElementById('country');
  if (countrySelect) {
    countrySelect.value = 'all';
  }

  const activeFilterButtons = document.querySelectorAll('#selected-filters button');
  activeFilterButtons.forEach(function (btn) {
    btn.classList.add('d-none');
    btn.classList.remove('d-inline-block');
  });

  filterExamples('country');
}


// Scroll function for discover user button
function scrollFunction() {
  let e = document.getElementById("our-users");
  e.scrollIntoView({
    block: 'start',
    behavior: 'smooth',
    inline: 'start'
  });
}
