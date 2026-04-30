<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/contact.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">

{literal}
  <script type="text/javascript">
    $(document).ready(function() {

      const urlInput = jQuery('#form-piwigo-url');
      const urlHelp = jQuery('#urlHelp');

      const emailInput = jQuery('#form-email');
      const emailHelp = jQuery('#emailHelp');
      const emailWarningIcon = jQuery('#emailWarningIcon');
      const emailCheckIcon = jQuery('#emailCheckIcon');

      const messageInput = jQuery('#form-message');

      // hide input help texts
      jQuery(urlHelp).hide();
      jQuery(emailHelp).hide();
      jQuery(emailWarningIcon).hide();
      jQuery(emailCheckIcon).hide();

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
      jQuery(urlInput).on('input', function() {
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
      jQuery(emailInput).on('input', function() {
        const value = jQuery(this).val().trim();

        updateEmailValidationState(value);

        checkFormValidity();
      });

      jQuery(messageInput).on('input', function() {
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

        const submitBtn = jQuery('#form-submit');

        if (emailValid && urlValid && messageValid) {
          submitBtn.prop('disabled', false).removeClass('disabled');
        } else {
          submitBtn.prop('disabled', true).addClass('disabled');
        }
      }

      // Initialize button state
      updateEmailValidationState(jQuery(emailInput).val().trim());
      checkFormValidity();

      jQuery('#form-submit').click(function(e) {
        e.preventDefault();

        if (jQuery("#form-submit").hasClass('disabled') || jQuery(this).data("state") == "push") {
          console.log("oula");
          return false;
        }

        jQuery(this).data("state", "push");

        let email = jQuery("#form-email").val();
        let message = jQuery("#form-message").val();
        let piwigoUrl = jQuery("#form-piwigo-url").val();
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
            key: key,
            piwigo_url: piwigoUrl
          },
          success: function(data) {
            if (data.code == "200") {
              // Hide the form and display success message
              jQuery('.contact_form').hide();
              jQuery('#success').show();

              // Clear all form fields
              jQuery('#form-email, #form-message, #form-piwigo-url, #email').val('');

              // Hide help texts
              jQuery('#urlHelp, #emailHelp').hide();
              jQuery('#emailWarningIcon, #emailCheckIcon').hide();

              // Remove validation classes
              jQuery('#form-email, #form-piwigo-url').removeClass('is-invalid');

              // Disable submit button until fields are valid again
              jQuery('#form-submit').prop('disabled', true).addClass('disabled');


            } else {
              jQuery('#error').show();
              jQuery(".error_message span").html(
                "<ul class='list-unstyled' style='color:#a94442'><li>" + data.msg + "</li></ul>"
              );
              jQuery("#form-submit").data("state", "not-push");
            }
          },
          error: function(data) {
            console.log("[error] data.code=" + data.code);
            jQuery(".email-error").html("<ul class='list-unstyled' style='color: #a94442;'><li>" + data
              .message + "<li></ul>");
            jQuery("#form-submit").data("state", "not-push");
          }
        });
      }
    });
  });

  document.addEventListener('DOMContentLoaded', function() {
    var carouselEl = document.getElementById('contact-logos-carousel');
    if (carouselEl) {
      new bootstrap.Carousel(carouselEl, {
        interval: 3500,
        pause: 'hover',
        wrap: true
      });
    }
  });
</script>
{/literal}

<section class="contact-header">
  <div class="container">
    <div class="row g-4 align-items-start">
      <div class="col-12 col-md-6">
        <div class="contact-form-split-copy">
          <h1>{'porg_contact_title'|translate}</h1>
          <p>{'porg_contact_desc1'|translate}</p>
          <p>{'porg_contact_desc2'|translate}</p>
        </div>
        <img class="contact-header-image img-fluid mt-3" src="{$PORG_ROOT_URL}images/contact/contact_hero.png"
          alt="Contact us">
      </div>

      <div class="col-12 col-md-6">
        <div id="success" style="display:none;">
          <p class="success_message d-flex align-items-center gap-2">
            <i class="icon-ok-circled"></i>
            <span>{'porg_contact_success_message'|translate}</span>
          </p>
        </div>

        <div data-toggle="validator" role="form" class="col-xs-12 col-md-8 contact_form">

          <div class="form-group position-relative">
            <input type="email" class="form-control" id="form-email" placeholder=" " required>
            <span class="mail-placeholder p-boxed">{'Your email address'|translate}<span
                class="orange-text">*</span></span>
            <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span
                class="orange-text">*</span> <span id="emailHelp"
                class="pink-text">{'porg_contact_error_message_7'|translate}</span></span>
            <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
            <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
          </div>

          <div class="form-group position-relative">
            <input type="text" class="form-control" id="form-piwigo-url" aria-describedby="urlHelp" placeholder=" ">
            <span
              class="piwigo-url-placeholder p-boxed">{'Your Piwigo url (if you are already a Piwigo user)'|translate}</span>
            <span
              class="little-piwigo-url-placeholder form-input">{'Your Piwigo url (if you are already a Piwigo user)'|translate}
              {* <span id="urlHelp" class="pink-text">{'porg_contact_error_message_9'|translate}</span> *}</span>
          </div>

          <div class="form-group">
            <textarea class="form-control" id="form-message" rows="8" placeholder="{'Your message*'|translate}"
              required></textarea>
          </div>

          <div>
            <input type="hidden" id="form-key" name="key" value="{$EPHEMERAL_KEY}">
          </div>

          <div>
            <label class="ohnohoney" for="email"></label>
            <input class="ohnohoney" autocomplete="off" type="email" id="email" name="email">
          </div>

          <div class="text-end d-flex justify-content-between gap-3">
            <div id="error" style="display:none;">
              <p class="error_message d-flex align-items-center gap-2 pink-text mb-0">
                {'porg_contact_error_message_1'|translate}
              </p>
            </div>

            <button type="submit" id="form-submit"
              class="btn-menu menu-btn-green ms-auto"><span>{'Send message'|translate}</span></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="contact-content">
  <div class="container-fluid px-0">
    <div class="container text-center">
      <h2 class="h2-top-page text-center">{'Satisfyed users across the world'|translate}</h2>
    </div>

    <div id="contact-logos-carousel" class="carousel slide contact-logos-carousel" data-bs-ride="carousel"
      data-bs-interval="3500" data-bs-pause="hover" data-bs-touch="true" data-bs-wrap="true">
      <div class="carousel-inner">
        {assign var=chunk_size value=6}
        {assign var=total value=$home_logos|count}
        {assign var=index value=0}

        {foreach $home_logos as $logo}
          {if $index % $chunk_size == 0}
            <div class="carousel-item{if $index == 0} active{/if}">
              <div
                class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-xl-6 g-3 align-items-center contact-logos-grid">
              {/if}

              <div class="col">
                <div class="contact-logo-card">
                  <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
                </div>
              </div>

              {assign var=index value=$index+1}

              {if $index % $chunk_size == 0 || $index == $total}
              </div>
            </div>
          {/if}
        {/foreach}
      </div>
    </div>
  </div>
</section>