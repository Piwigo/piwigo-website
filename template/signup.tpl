{* <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/contact.css"> *}
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/common_button.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/signup.css">

<section class="signup-header">
    <div class="container">
        <div class="row align-items-start">
            <div class="col-12 col-md-5">
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
                            <input type="email" class="form-control" id="form-email" name="email" placeholder="" required>
                            <span class="mail-placeholder p-boxed">{'signup_form_mail'|translate}</span>
                            <span class="little-mail-placeholder form-input">{'signup_form_mail'|translate}<span id="emailHelp" class="error-mail-placeholder pink-text" style="display:none;">{'signup_form_mail_error'|translate}</span></span>
                            <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true" style="display:none;"></i>
                            <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true" style="display:none;"></i>
                        </div>

                        <div class="form-group position-relative mb-3">
                            <div class="input-group piwigo-input-group">
                                <input type="text" class="form-control" id="form-user" name="username" aria-describedby="userHelp" placeholder=" ">
                                <span class="piwigo-url-placeholder p-boxed">{'signup_form_username'|translate}</span>
                                <span class="little-piwigo-url-placeholder form-input">{'signup_form_username'|translate}</span>
                                <span class="input-group-text bg-white border-start-0">{'signup_piwigo'|translate}</span>
                            </div>
                        </div>

                        <div class="form-group position-relative mb-3">
                            <input type="password" class="form-control" id="form-password" name="password" placeholder=" " required>
                            <span class="password-placeholder p-boxed">{'signup_form_password'|translate}</span>
                            <span class="little-password-placeholder form-input">{'signup_form_password'|translate}</span>
                            <i id="passWarningIcon" class="icon-rounded-warning" aria-hidden="true" style="display:none;"></i>
                            <i id="passEye" class="icon-show toggle-password" aria-hidden="true" style="display: none;"></i>
                            <div class="password-hints mt-1">
                                <div class="passHelp">
                                    <i id="passHelp" class="icon-warning" aria-hidden="true" style="display:none;"></i>
                                    <p id="passHelpLength" class="pink-text small mb-0" style="display:none;">{'signup_form_password_help1'|translate}</p>
                                </div>
                                <div class="passHelp2">
                                    <i id="passHelp2" class="icon-warning small mb-0" aria-hidden="true" style="display:none;"></i>
                                    <p id="passHelpSpecs" class="pink-text small mb-0" style="display:none;">{'signup_form_password_help2'|translate}</p>
                                </div>
                            </div>
                        </div>

                        <div class="form-check mb-2">
                            <input class="form-check-input" type="checkbox" id="form-copy" name="send_copy">
                            <label class="form-check-label small" for="form-copy">{'signup_check_mail'|translate}</label>
                        </div>

                        <div class="form-check mb-4">
                            <input class="form-check-input" type="checkbox" id="form-terms" required>
                            <label class="form-check-label small" for="form-terms">
                                {'signup_check_RPG'|translate}
                            </label>
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

            <div class="col-12 col-md-7 ps-md-5">
                <div class="illustration-container position-relative">
                    <img src="{$PORG_ROOT_URL}images/signup/image_6600df.png" class="img-fluid" alt="Piwigo Cloud Stats">
                </div>
            </div>
        </div>
    </div>
</section>

<script src="{$PORG_ROOT_URL}js/signup.js"></script>