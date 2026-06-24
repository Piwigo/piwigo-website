{*
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/contact.css"> *}
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/signup.css">

<style>
  input:-webkit-autofill~.p-boxed {
    opacity: 0 !important;
    visibility: hidden !important;
  }

  input:-webkit-autofill~.form-input {
    opacity: 1 !important;
    visibility: visible !important;
  }
</style>

<section class="signup-header" id="signup-page">
  <div class="container">
    <div class="row align-items-center form-side-container">
      <div class="col-12 col-md-5 form-side">
        <div class="signup-text-header text-center mb-4">
          <h1 class="fw-bold text-center">{'signup_header_title'|translate}</h1>
          <p class="text-muted small text-center">{'signup_header_desc'|translate}</p>
        </div>

        <div class="signup-form-container card p-4 shadow-sm">
          <div class="signup-wait-for-install text-center" style="display:none;">
            <p class="mt-3">{'Creating your Piwigo account...'|translate}</p>
          </div>

          <form id="signupForm" class="signup-form">

            <div class="form-group position-relative mb-3">
              <input type="email" class="form-control" id="form-email" name="email" placeholder=" " required>
              <span class="mail-placeholder p-boxed">{'Your email address'|translate}<span class="orange-text"> *</span></span>
              <span class="mail-example-placeholder p-boxed">{'email example'|translate}</span>
              <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span class="orange-text"> *</span> <span id="emailHelp" class="error-mail-placeholder pink-text">{'porg_contact_error_message_7'|translate}</span></span>
              <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
              <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
            </div>

            <div class="form-group position-relative mb-3">
              <div class="input-group piwigo-input-group">
                <input type="text" class="form-control" id="form-user" name="username" aria-describedby="userHelp" placeholder=" " value="{$username|default:''}">
                <span class="piwigo-url-placeholder p-boxed">{'signup_form_username'|translate}</span>
                <span class="piwigo-url-example-placeholder p-boxed">{'Piwigo name example'|translate}</span>
                <span class="little-piwigo-url-placeholder form-input">{'signup_form_username'|translate}<span id="userError" class="error-username-placeholder pink-text" style="display:none;">{'signup_form_username_error'|translate}</span><span id="userHelp" class="help-username-placeholder pink-text" style="display:none;">{'signup_form_username_help'|translate}</span></span>
                <span class="input-group-text bg-white border-start-0">{'signup_piwigo'|translate}</span>
              </div>
            </div>

            <div class="form-group position-relative mb-3">
              <input type="password" class="form-control" id="form-password" name="password" placeholder=" " required>
              <span class="password-placeholder p-boxed">{'signup_form_password'|translate}</span>
              <span class="password-example-placeholder p-boxed d-none">{'Piwigo password example'|translate}</span>
              <span class="little-password-placeholder form-input">{'signup_form_password'|translate}</span>
              <i id="passWarningIcon" class="icon-rounded-warning" aria-hidden="true" style="display:none;"></i>
              <i id="passEye" class="icon-show toggle-password" aria-hidden="true" style="display: none;"></i>
              <div class="password-hints mt-1">
                <div class="passHelp">
                  <i id="passHelp" class="icon-warning" aria-hidden="true" style="display:none;"></i>
                  <p id="passHelpLength" class="pink-text small mb-0" style="display:none;">{'signup_form_password_help1'|translate}</p>
                </div>
              </div>
            </div>

            {* <div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" id="form-copy" name="send_copy">
							<label class="form-check-label small" for="form-copy">{'signup_check_mail'|translate}</label>
						</div> *}

            <div class="form-check mb-4">
              <input class="form-check-input" type="checkbox" id="form-terms" required>
              <div class="check-help-container">
                <label class="form-check-label small" for="form-terms">
                  {$SIGNUP_CHECK_LABEL}
                </label>
                <span class="form-check-help pink-text small" id="check-help">{'signup_check_help'|translate}</span>
              </div>

            </div>

            <div class="text-end">
              <button type="submit" id="form-submit" class="btn-menu menu-btn-green ms-auto" disabled>
                <span id="submit-text">{'signup_button'|translate}</span>
              </button>
            </div>

            <p class="text-end mt-3 small">
              {'signup_signin'|translate}
            </p>

            <div id="error" class="mt-2 text-center pink-text" style="display:none;"><span></span></div>
            <input type="hidden" id="form-key" name="key" value="{$EPHEMERAL_KEY}">
            <div style="display:none;"><input type="text" id="message" name="message"></div>
          </form>
        </div>
      </div>

      <div class="col-12 col-md-7 ps-md-5 illustration-side">
        <img src="{$PORG_ROOT_URL}images/{$SIGNUP_HOST_BADGE}" class="img-fluid badge-host" alt="Piwigo host">
        <div class="illustration-container position-relative pb-5 pt-5  rounded-3">

          <div class="doctor-container">
            <img src="{$PORG_ROOT_URL}images/signup/FreeTrial.webp" class="img-fluid doctor" alt="Piwigo Cloud Stats">
          </div>
          <img src="{$PORG_ROOT_URL}images/signup/bg_vector_green.svg" class="img-fluid bg-dot-vector" alt="Piwigo vector">

          <div class="d-flex flex-wrap justify-content-center gap-3 mb-3 stat px-2">

            <div class="stat-card size-large">
              <h3>{$STATS_GLOBAL_INSTALLS}</h3>
              <p>{'actives installations'|translate}</p>
            </div>

            <div class="stat-card size-large">
              <h3>{$STATS_GLOBAL_FILES}</h3>
              <p>{'added files'|translate}</p>
            </div>

            <div class="stat-card">
              <h3>{$STATS_GLOBAL_UPTIME}</h3>
              <p>{'availability rate observed'|translate}</p>
            </div>

            <div class="stat-card">
              <h3>{$STATS_GLOBAL_LANGS}</h3>
              <p>{'existing languages'|translate}</p>
            </div>

            <div class="stat-card">
              <h3>{$STATS_GLOBAL_CLIENTS}</h3>
              <p>{'clients'|translate}</p>
            </div>

          </div>
        </div>
      </div>
    </div>
</section>

<section class="signup-loader" id="loading-page" style="display: none;">
  <div class="loader-container container text-center d-flex  align-items-center flex-column">
    <div class="loader-title-container">
      <img src="{$PORG_ROOT_URL}images/piwigo.org.svg" class="img-fluid" alt="Piwigo icon">
    </div>
    <div class="loader-content-container">
      <img src="{$PORG_ROOT_URL}images/signup/Spinner.svg" class="img-fluid spinner-loader rotating" alt="Piwigo spinner">
      <img src="{$PORG_ROOT_URL}images/signup/loader-webp.webp" class="img-fluid loader-webp" alt="Piwigo loader">
    </div>
    <div class="loader-text-content">
      <p class="mt-3">{'average_stats_signup_loader'|translate|sprintf:$STATS_NB_LAST_ACOUNTS:$STATS_AVG_DURATION}</p>
    </div>
</section>

<script>
  window.addEventListener('DOMContentLoaded', () => {
    setTimeout(() => {
      document.querySelectorAll('#signupForm input').forEach(input => {
        if (input.value) {
          input.dispatchEvent(new Event('input', { bubbles: true }));
        }
      });
    }, 150);
  });
</script>
<script src="{$PORG_ROOT_URL}js/signup.js"></script>