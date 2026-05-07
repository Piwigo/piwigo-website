$(document).ready(function () {
  // Email validation
  const emailInput = jQuery("#form-email");
  const emailWarningIcon = jQuery("#emailWarningIcon");
  const emailCheckIcon = jQuery("#emailCheckIcon");
  const emailHelp = jQuery("#emailHelp");

  jQuery(emailWarningIcon).hide();
  jQuery(emailCheckIcon).hide();
  jQuery(emailHelp).hide();

  function isValidEmail(email) {
    const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
  }

  function updateEmailValidationState(value) {
    if (value === "") {
      jQuery(emailHelp).hide();
      jQuery(emailWarningIcon).hide();
      jQuery(emailCheckIcon).hide();
      jQuery(emailInput).removeClass("is-invalid");
      return;
    }

    if (!isValidEmail(value)) {
      jQuery(emailHelp).show();
      jQuery(emailWarningIcon).show();
      jQuery(emailCheckIcon).hide();
      jQuery(emailInput).addClass("is-invalid");
      return;
    }

    jQuery(emailHelp).hide();
    jQuery(emailWarningIcon).hide();
    jQuery(emailCheckIcon).show();
    jQuery(emailInput).removeClass("is-invalid");
  }

  jQuery(emailInput).on("input", function () {
    updateEmailValidationState(jQuery(this).val().trim());
  });

  updateEmailValidationState(jQuery(emailInput).val().trim());

  // RGPD checkbox validation
  jQuery("#form-submit").on("click", function (e) {
    const checkbox = jQuery("#agree_rgpd");
    if (!checkbox.is(":checked")) {
      e.preventDefault();
      checkbox.addClass("is-invalid");
      checkbox.siblings(".invalid-feedback").show();
    } else {
      checkbox.removeClass("is-invalid");
      checkbox.siblings(".invalid-feedback").hide();
    }
  });

  jQuery("#agree_rgpd").on("change", function () {
    if (jQuery(this).is(":checked")) {
      jQuery(this).removeClass("is-invalid");
      jQuery(this).siblings(".invalid-feedback").hide();
    }
  });

  jQuery(".form-newsletter-subscribe").on("submit", function (e) {
    e.preventDefault();
    var $form = jQuery(this);
    var action = $form.attr("action");
    var data = $form.serialize();
    var email = jQuery("#form-email").val().trim();
    var escapedEmail = jQuery("<div>").text(email).html();

    jQuery
      .ajax({
        url: action,
        method: "GET",
        data: data,
      })
      .always(function () {
        var successMessage = jQuery("#newsletter-success-message").data(
          "template",
        );
        if (successMessage && email) {
          jQuery("#newsletter-success-message").html(
            successMessage.replace(
              "__NEWSLETTER_EMAIL__",
              "<strong>" + escapedEmail + "</strong>",
            ),
          );
        }

        jQuery("#newsletter-form").hide();
        jQuery("#success").removeClass("d-none");
      });
  });

  // Pagination
  const itemsPerPage = 12;
  let currentPage = 1;
  const totalPages = parseInt(jQuery('.pagination-container').data('total-pages'));

  function updatePaginationUI() {
    jQuery(".fast-backward-btn, .backward-arrow-btn").toggle(currentPage > 1);
    jQuery(".fast-forward-btn, .forward-arrow-btn").toggle(
      currentPage < totalPages,
    );

    let startPage, endPage;
    if (totalPages <= 3) {
      startPage = 1;
      endPage = totalPages;
    } else if (currentPage <= 2) {
      startPage = 1;
      endPage = 3;
    } else if (currentPage >= totalPages - 1) {
      startPage = totalPages - 2;
      endPage = totalPages;
    } else {
      startPage = currentPage - 1;
      endPage = currentPage + 1;
    }

    jQuery(".page-number-wrapper").hide();
    for (let i = startPage; i <= endPage; i++) {
      const wrapper = jQuery('.page-number-wrapper[data-page="' + i + '"]');
      wrapper.show();
      const btn = wrapper.find("a");
      if (i === currentPage) {
        btn.addClass("selected_number");
      } else {
        btn.removeClass("selected_number");
      }
    }
  }

  function loadPage(pageNum) {
    const start = (pageNum - 1) * itemsPerPage;

    jQuery.ajax({
      type: "GET",
      url: "ws.php",
      dataType: "html",
      data: {
        method: "porg.newsletters.seemore",
        start: start,
        count: itemsPerPage,
      },
      success: function (html) {
        jQuery(".newsletter-cards-grid").html(html);
        currentPage = pageNum;
        updatePaginationUI();
        // optional: smooth scroll to the newsletter section
        if (jQuery(".newsletter-container").length) {
          jQuery("html, body").animate(
            { scrollTop: jQuery(".newsletter-container").offset().top - 80 },
            300,
          );
        }
      },
    });
  }

  jQuery(document).on("click", ".page-number-wrapper a", function (e) {
    e.preventDefault();
    const page = parseInt(
      jQuery(this).closest(".page-number-wrapper").data("page"),
    );
    if (page && page !== currentPage) loadPage(page);
  });

  jQuery(document).on("click", ".forward-arrow-btn", function (e) {
    e.preventDefault();
    if (currentPage < totalPages) loadPage(currentPage + 1);
  });

  jQuery(document).on("click", ".backward-arrow-btn", function (e) {
    e.preventDefault();
    if (currentPage > 1) loadPage(currentPage - 1);
  });

  jQuery(document).on("click", ".fast-forward-btn", function (e) {
    e.preventDefault();
    loadPage(totalPages);
  });

  jQuery(document).on("click", ".fast-backward-btn", function (e) {
    e.preventDefault();
    loadPage(1);
  });

  // Initialize: render pagination and load page 1 from server
  updatePaginationUI();
});
