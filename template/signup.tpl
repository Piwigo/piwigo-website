<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/contact.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/signup.css">
{literal}
    <script type="text/javascript">
        $(document).ready(function() {

            const emailInput = jQuery('#form-email');
            const emailHelp = jQuery('#emailHelp');
            const emailWarningIcon = jQuery('#emailWarningIcon');
            const emailCheckIcon = jQuery('#emailCheckIcon');

            const userInput = jQuery('#form-user');
            const userHelp = jQuery('#userHelp');

            const passwordInput = jQuery('#form-password');
            const passWarningIcon = jQuery('#passWarningIcon');
            const passEye = jQuery('#passEye');
            const passHelpLength = jQuery('#passHelpLength');
            const passHelpSpecs = jQuery('#passHelpSpecs');
            const passHelp = jQuery('#passHelp');
            const passHelp2 = jQuery('#passHelp2');

            const termsCheck = jQuery('#form-terms');
            const termsHelp = jQuery('#termsHelp');
            const newsletterCheck = jQuery('#form-copy');
            const newsletterHelp = jQuery('#newsletterHelp');

            // hide input help texts
            jQuery(emailHelp).hide();
            jQuery(emailWarningIcon).hide();
            jQuery(emailCheckIcon).hide();
            jQuery(userHelp).hide();

            jQuery(passWarningIcon).hide();
            jQuery(passEye).hide();
            jQuery(passHelpLength).hide();
            jQuery(passHelpSpecs).hide();
            jQuery(passHelp).hide();
            jQuery(passHelp2).hide();

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

            function updatePasswordValidationState(value) {
                if (value === '') {
                    jQuery(passHelpLength).hide();
                    jQuery(passHelpSpecs).hide();
                    jQuery(passWarningIcon).hide();
                    jQuery(passEye).hide();
                    jQuery(passHelp).hide();
                    jQuery(passHelp2).hide();
                    jQuery(passwordInput).removeClass('is-invalid');
                    return;
                }

                if (!isValidPassword(value)) {
                    jQuery(passHelpLength).show();
                    jQuery(passHelpSpecs).show();
                    jQuery(passWarningIcon).show();
                    jQuery(passEye).show();
                    jQuery(passHelp).show();
                    jQuery(passHelp2).show();
                    jQuery(passwordInput).addClass('is-invalid');
                    return;
                }

                const isLongEnough = value.length >= 8;
                const hasRequirements = /[0-9]/.test(value) && /[^A-Za-z0-9]/.test(value);

                if (!isLongEnough) {
                    passHelpLength.show();
                } else {
                    passHelpLength.removeClass('pink-text').addClass('main-green-text');
                    passHelp.removeClass('icon-warning').addClass('icon-check-1').css('color', 'var(--main_flash_green) !important');
                }
                if (!hasRequirements) {
                    passHelpSpecs.show();
                } else {
                    passHelpSpecs.removeClass('pink-text').addClass('main-green-text');
                    passHelp2.removeClass('icon-warning').addClass('icon-check-1').css('color', 'var(--main_flash_green) !important');
                }

                if (!isLongEnough || !hasRequirements) {
                    passWarningIcon.show();
                    passwordInput.addClass('is-invalid');
                } else {
                    passWarningIcon.hide();
                    passwordInput.removeClass('is-invalid');
                }

                // jQuery(passHelpSpecs).hide();
                // jQuery(passHelpLength).hide();
                // jQuery(passWarningIcon).hide();
                // jQuery(passwordInput).removeClass('is-invalid');
            }
            jQuery(passEye).on('click', function() {
                const currentType = jQuery(passwordInput).attr('type');
                if (currentType === 'password') {
                    jQuery(passwordInput).attr('type', 'text');
                } else {
                    jQuery(passwordInput).attr('type', 'password');
                }
            });
            // Email input handler
            jQuery(emailInput).on('input', function() {
                const value = jQuery(this).val().trim();
                updateEmailValidationState(value);
                checkFormValidity();
            });

            // password input handler
            jQuery(passwordInput).on('input', function() {
                const value = jQuery(this).val().trim();
                updatePasswordValidationState(value);
                checkFormValidity();
            });

            // username input handler
            jQuery(userInput).on('input', function() {
                const value = jQuery(this).val().trim();
                if (value === "") {
                    jQuery(userHelp).hide();
                    jQuery(userInput).removeClass('is-invalid');
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

            // Email validator
            function isValidEmail(email) {
                const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return pattern.test(email);
            }

            //password validator
            function isValidPassword(password) {
                const isLongEnough = password.length >= 8;
                const hasRequirements = /[0-9]/.test(password) && /[^A-Za-z0-9]/.test(password);
                return isLongEnough && hasRequirements;
            }

            // Enable/disable submit button based on input validation
            function checkFormValidity() {
                const emailValid = isValidEmail(jQuery(emailInput).val().trim());
                const userValid = jQuery(userInput).val().trim().length >= 2;
                const passValid = isValidPassword(jQuery(passwordInput).val().trim());
                const submitBtn = jQuery('#form-submit');
                const termsValid = termsCheck.is(':checked');
                if (emailValid && userValid && passValid && termsValid) {
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
                let username = jQuery("#form-user").val();
                let password = jQuery("#form-password").val();
                // let piwigoUrl = jQuery("#form-piwigo-url").val();
                let key = jQuery("#form-key").val();

                //If the honeyMessage has something in it then its a bot and we don't want it to send
                var honeyMessage = jQuery("#message").val();

                if (!honeyMessage) {
                    jQuery.ajax({
                        type: "POST",
                        url: "ws.php?format=json",
                        dataType: "json",
                        data: {
                            method: 'porg.signup.send',
                            email: email,
                            username: username,
                            password: password,
                            key: key,
                        },
                        success: function(data) {
                            if (data.code == "200") {
                                // Hide the form and display success message temporarily
                                jQuery('.signup-form').hide();
                                // jQuery('#success').show();
                                jQuery('.signup-wait-for-install').show();

                                // Clear all form fields
                                jQuery('#form-email, #form-user, #form-password, #email').val('');

                                // Hide help texts
                                jQuery('#passHelpLength, #passHelpSpecs, #emailHelp, #userHelp, #passHelp, #passHelp2').hide();
                                jQuery('#passWarningIcon, #emailWarningIcon, #emailCheckIcon, #passEye').hide();

                                // Remove validation classes
                                jQuery('#form-email, #form-password, #form-user').removeClass('is-invalid');

                                // Disable submit button until fields are valid again
                                jQuery('#form-submit').prop('disabled', true).addClass('disabled');

                                setTimeout(function() {
                                    jQuery('#success').hide();
                                    jQuery('.signup-wait-for-install').hide();
                                    jQuery('.signup-form').show();
                                }, 10000);
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
    </script>
{/literal}
<section class="signup-header">
    <div class="container">
        <div class="row align-items-start">

            <div class="col-12 col-md-5">
                <div class="signup-text-header text-center mb-4">
                    <h1 class="fw-bold">Get your <span class="orange-text">Piwigo cloud</span> account</h1>
                    <p class="text-muted small">Sign up and get your one month free trial with all the features you want!</p>
                </div>

                <div class="signup-form-container card p-4 shadow-sm">
                    <div class="signup-wait-for-install text-center" style="display:none;">
                        {* <img src="{$PCOM_ROOT_URL_PLUGINS}images/signup/loader.gif" width="50"> *}
                        <p class="mt-3">{'Creating your Piwigo account...'|translate}</p>
                    </div>

                    <form id="signupForm" class="signup-form">
                        <div class="form-group position-relative mb-3">
                            <input type="email" class="form-control" id="form-email" name="email" placeholder="" required>
                            <span class="mail-placeholder p-boxed">{'Your email address'|translate}<span class="orange-text">*</span></span>
                            <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span class="orange-text">*</span> <span id="emailHelp" class="error-mail-placeholder pink-text">{'it must be a valid email adress'|translate}</span></span>
                            <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
                            <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
                        </div>

                        <div class="form-group position-relative mb-3">
                            <div class="input-group piwigo-input-group">
                                <input type="text" class="form-control" id="form-user" aria-describedby="userHelp" placeholder=" ">
                                <span class="piwigo-url-placeholder p-boxed">{'Your username'|translate}<span class="orange-text">*</span></span>
                                <span class="little-piwigo-url-placeholder form-input">{'Your username'|translate}<span class="orange-text">*</span></span>
                                <span class="input-group-text bg-white border-start-0">{'.piwigo.com'|translate}</span>
                            </div>
                        </div>

                        <div class="form-group position-relative mb-3">
                            <input type="password" class="form-control" id="form-password" name="password" placeholder=" " required>
                            <span class="password-placeholder p-boxed">{'Password'|translate}<span class="orange-text">*</span></span>
                            <span class="little-password-placeholder form-input">{'Password'|translate} <span class="orange-text">*</span></span>
                            <i id="passWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
                            <i id="passEye" class="icon-show toggle-password" aria-hidden="true""></i>
                            <div class=" password-hints mt-1">
                                <div class="passHelp">
                                    <i id="passHelp" class="icon-warning" aria-hidden="true"></i>
                                    <p id="passHelpLength" class="pink-text small mb-0">{'8 characters min'|translate}</p>
                                </div>
                                <div class="passHelp2">
                                    <i id="passHelp2" class="icon-warning small mb-0" aria-hidden="true"></i>
                                    <p id="passHelpSpecs" class="pink-text small mb-0">{'Number & symbol'|translate}</p>
                                </div>
                        </div>
                </div>

                <div class="form-check mb-2">
                    <input class="form-check-input" type="checkbox" id="form-copy">
                    <label class="form-check-label small" for="form-copy">Receive a copy by email</label>
                </div>

                <div class="form-check mb-4">
                    <input class="form-check-input" type="checkbox" id="form-terms">
                    <label class="form-check-label small" for="form-terms">
                        I agree to the <a href="#" class="orange-text">Terms of Use</a> and <a href="#" class="orange-text">Privacy Policy</a>*
                    </label>
                </div>

                <div class="text-end">
                    <button type="submit" id="form-submit" class="btn-menu menu-btn-green ms-auto" disabled>
                        Sign up for a one month free trial
                    </button>
                </div>

                <p class="text-center mt-3 small">
                    Already have a Piwigo Cloud account? <a href="#" class="orange-text fw-bold">Sign In</a>
                </p>

                <div id="error" class="mt-2 text-center pink-text" style="display:none;"><span></span></div>
                <input type="hidden" id="form-key" value="{$EPHEMERAL_KEY}">
                <div style="display:none;"><input type="text" id="message" name="message"></div>
                </form>
            </div>
        </div>

        <div class="col-12 col-md-7 ps-md-5">
            <div class="illustration-container position-relative">
                <img src="{$PORG_ROOT_URL}images/signup/image_6600df.png" class="img-fluid" alt="Piwigo Cloud Stats">
            </div>
        </div>

    </div>
    </div>
    </section>