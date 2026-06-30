$(document).ready(function () {

  const urlInput = jQuery('#form-piwigo-url');
  const urlHelp = jQuery('#urlHelp');

  const emailInput = jQuery('#form-email');
  const emailHelp = jQuery('#emailHelp');
  const emailWarningIcon = jQuery('#emailWarningIcon');
  const emailCheckIcon = jQuery('#emailCheckIcon');

  const messageInput = jQuery('#form-message');
  const topicInput = jQuery('#form-topic-value');
  const errorContainer = jQuery('#error');
  const errorMessage = jQuery('.error_message');
  let errorTimeoutId = null;

  // hide input help texts
  jQuery(urlHelp).hide();
  jQuery(emailHelp).hide();
  jQuery(emailWarningIcon).hide();
  jQuery(emailCheckIcon).hide();
  jQuery(errorContainer).hide();

  // --- Custom Select Logic ---
  const customSelectWrapper = $('.custom-select-wrapper');
  if (customSelectWrapper.length) {
    const header = customSelectWrapper.find('.custom-select-header');
    const optionsContainer = customSelectWrapper.find('.custom-select-options');
    const options = customSelectWrapper.find('.custom-option');
    const hiddenInput = $('#form-topic-value');
    const selectedValueSpan = customSelectWrapper.find('.selected-value');

    header.on('click', function () {
      customSelectWrapper.toggleClass('open');
      optionsContainer.toggle(customSelectWrapper.hasClass('open'));
    });

    options.on('click', function () {
      const $this = $(this);
      const value = $this.data('value');
      const text = $this.find('.custom-option-label').text();

      hiddenInput.val(value);
      selectedValueSpan.text(text);

      options.removeClass('selected');
      $this.addClass('selected');

      customSelectWrapper.addClass('has-value');
      customSelectWrapper.removeClass('open');
      optionsContainer.hide();

      hiddenInput.trigger('change');
    });

    $(document).on('click', function (e) {
      if (!customSelectWrapper.is(e.target) && customSelectWrapper.has(e.target).length === 0) {
        customSelectWrapper.removeClass('open');
        optionsContainer.hide();
      }
    });

    // --- Pre-select topic from URL ---
    const urlParams = new URLSearchParams(window.location.search);
    const topicIdFromUrl = urlParams.get('topic_id');
    if (topicIdFromUrl) {
      let dataValueToSelect;
      if (topicIdFromUrl === 'testimonial') {
        dataValueToSelect = 'Send a testimonial';
      }
      // add more 'else if' for other topic_ids here

      if (dataValueToSelect) {
        const optionToSelect = options.filter(`[data-value="${dataValueToSelect}"]`);
        optionToSelect.trigger('click');
        checkFormValidity();
      }
    }
  }

  function showTemporaryError(message) {
    if (errorTimeoutId) {
      clearTimeout(errorTimeoutId);
    }

    jQuery(errorMessage).html(message);
    jQuery(errorContainer).show();

    errorTimeoutId = setTimeout(function () {
      jQuery(errorContainer).hide();
      errorTimeoutId = null;
    }, 5000);
  }

  function updateEmailValidationState(value) {
    if (value === '') {
      jQuery(emailHelp).hide();
      jQuery(emailWarningIcon).hide();
      jQuery(emailCheckIcon).hide();
      jQuery(emailInput).removeClass('is-invalid');
      return;
    }

    if (!isValidEmail(value)) {
      jQuery(emailHelp).show();
      jQuery(emailWarningIcon).show();
      jQuery(emailCheckIcon).hide();
      jQuery(emailInput).addClass('is-invalid');
      return;
    }

    jQuery(emailHelp).hide();
    jQuery(emailWarningIcon).hide();
    jQuery(emailCheckIcon).show();
    jQuery(emailInput).removeClass('is-invalid');
  }

  // URL input handler, make sure url is valid and it can be without https:://
  jQuery(urlInput).on('input', function () {
    const value = $(this).val().trim();

    if (value === '') {
      jQuery(urlHelp).hide();
      jQuery(this).removeClass('is-invalid');
      checkFormValidity();
      return;
    }

    if (!isValidDomain(value)) {
      jQuery(urlHelp).show();
      jQuery(this).addClass('is-invalid');
    } else {
      jQuery(urlHelp).hide();
      jQuery(this).removeClass('is-invalid');
    }

    checkFormValidity();
  });

  // Email input handler
  jQuery(emailInput).on('input', function () {
    const value = jQuery(this).val().trim();

    updateEmailValidationState(value);

    checkFormValidity();
  });

  jQuery(messageInput).on('input', function () {
    checkFormValidity();
  });

  jQuery(topicInput).on('change', function () {
    checkFormValidity();
  });

  // URL validator
  function isValidDomain(url) {
    const pattern = /^(https?:\/\/)?([a-z0-9-]+\.)+[a-z]{2,}(\/.*)?$/i;
    return pattern.test(url);
  }

  // Email validator
  function isValidEmail(email) {
    const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
  }

  // Enable/disable submit button based on input validation
  function checkFormValidity() {
    const emailValid = isValidEmail(jQuery(emailInput).val().trim());
    const urlValid = jQuery(urlInput).val().trim() === '' || isValidDomain(jQuery(urlInput).val()
      .trim()); // optional URL
    const messageValid = jQuery('#form-message').val().trim() !== '';
    const topicValid = jQuery(topicInput).val() !== null && jQuery(topicInput).val().trim() !== '';

    const submitBtn = jQuery('#form-submit');

    if (emailValid && urlValid && messageValid && topicValid) {
      submitBtn.prop('disabled', false).removeClass('disabled');
    } else {
      submitBtn.prop('disabled', true).addClass('disabled');
    }
  }

  // Initialize button state
  updateEmailValidationState(jQuery(emailInput).val().trim());
  checkFormValidity();

  jQuery('#form-submit').click(function (e) {
    e.preventDefault();

    if (jQuery("#form-submit").hasClass('disabled') || jQuery(this).data("state") == "push") {
      console.log("oula");
      return false;
    }

    jQuery(this).data("state", "push");

    let email = jQuery("#form-email").val();
    let message = jQuery("#form-message").val();
    let piwigoUrl = jQuery("#form-piwigo-url").val();
    let topic = jQuery("#form-topic-value").val();
    let key = jQuery("#form-key").val();

    //If the honeyMessage has something in it then its a bot and we don't want it to send
    var honeyMessage = jQuery("#message").val();

    if (!honeyMessage) {
      jQuery.ajax({
        type: "POST",
        url: "ws.php?format=json",
        dataType: "json",
        data: {
          method: 'porg.contact.send',
          email: email,
          message: message,
          topic: topic,
          key: key,
          piwigo_url: piwigoUrl
        },
        success: function (data) {
          if (data.code == "200") {
            // Hide the form and display success message temporarily
            jQuery(errorContainer).hide();
            jQuery('.contact-form').hide();
            jQuery('#success').show();

            jQuery('#form-email, #form-message, #form-piwigo-url, #email').val('');

            // Hide help texts
            jQuery('#urlHelp, #emailHelp').hide();
            jQuery('#emailWarningIcon, #emailCheckIcon').hide();

            // Remove validation classes
            jQuery('#form-email, #form-piwigo-url').removeClass('is-invalid');

            // Disable submit button until fields are valid again
            jQuery('#form-submit').prop('disabled', true).addClass('disabled');


          } else {
            showTemporaryError(data.msg);
            jQuery("#form-submit").data("state", "not-push");
          }
        },
        error: function (data) {
          console.log("[error] data.code=" + data.code);
          showTemporaryError("Oopps! Something went wrong.");
        },
        complete: function () {
          jQuery("#form-submit").data("state", "not-push");
        }
      });
    }
  });
});