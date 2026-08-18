$(document).ready(function () {
  const passwordInput = $("#form-password");
  const emailInput = $("#form-email");
  const userInput = $("#form-user");
  const passEye = $("#passEye");
  const passWarning = $("#passWarningIcon");
  const signupForm = $("#signupForm");
  const submitBtn = $("#form-submit");

  $(".form-check-help").removeClass("pink-text").addClass("clear-text");

  function isValidEmail(email) {
    const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
  }

  passEye.on("click", function (e) {
    e.preventDefault();
    const currentType = passwordInput.attr("type");
    passwordInput.attr(
      "type",
      currentType === "password" ? "text" : "password",
    );

    $(this).toggleClass("icon-show icon-hide icon-eye icon-eye-off");
    const currentText = $(this).html();
    if ($(this).data("alt-text")) {
      $(this).html($(this).data("alt-text")).data("alt-text", currentText);
    }
  });

  emailInput.on("input", function () {
    const val = $(this).val().trim();
    $(".email-error").css("visibility", "hidden");
    $(".form-group").css("margin-top", "0.25rem");
    

    if (val.length > 0) {
      if (isValidEmail(val)) {
        $("#emailHelp, #emailWarningIcon").hide();
        $("#emailCheckIcon").show();
        $(".form-group-mail").addClass("mb-3");
      } else {
        $("#emailHelp, #emailWarningIcon").show();
        $(".form-group-mail").removeClass("mb-3");
        $("#emailCheckIcon").hide();
      }
    } else {
      $("#emailHelp, #emailWarningIcon, #emailCheckIcon").hide();
      $(".form-group-mail").addClass("mb-3");
    }
  });

  userInput.on("input", function () {
    const username = $(this).val().trim();
    const userHelp = $("#userHelp");
    const userError = $("#userError");

    $(".username-error").css("visibility", "hidden");
    $(".form-group").css("margin-top", "0.25rem");

    if (username.length > 0 && username.length < 4) {
      userHelp.show();
      userError.hide();
      $(".form-group-user").removeClass("mb-3");
    } else {
      userHelp.hide();
      $(".form-group-user").addClass("mb-3");
    }

    if (username.length >= 4) {
      $.ajax({
        url: "ws.php?format=json&method=pcom.username.check",
        type: "POST",
        data: { username: username },
        success: function (response) {
          const data =
            typeof response === "string" ? JSON.parse(response) : response;

          if (data.result && data.result.error) {
            userError.show();
            userInput.addClass("is-invalid");
            $(".username-error")
              .html(data.result.error)
              .css("visibility", "visible");
          } else {
            userError.hide();
            userInput.removeClass("is-invalid");
          }
        },
        error: function () {
          userError.hide();
        },
      });
    } else {
      userError.hide();
      // $(".form-group-user").addClass("mb-3");
      // $(".form-group-user").css("margin-bottom", "1rem");
      userInput.removeClass("is-invalid");
    }
    
  });

  passwordInput.on("input keyup", function () {
    const val = $(this).val();

    if (val.length > 0) {
      $("#passHelpLength, #passHelp").show();

      // lentgh check
      const isLongEnough = val.length >= 6;
      if (isLongEnough) {
        $("#passHelpLength")
          .removeClass("pink-text")
          .addClass("main-green-text");
        $("#passHelp")
          .removeClass("icon-warning")
          .addClass("icon-check-1 main-green-text")
        $("#passWarningIcon").hide();
        $("#passCheckIcon").show();
      } else {
        $("#passHelpLength")
          .addClass("pink-text")
          .removeClass("main-green-text");
        $("#passHelp")
          .addClass("icon-warning")
          .removeClass("icon-check-1 main-green-text")
        $("#passCheckIcon").hide();
        $("#passWarningIcon").show();
      }
      if (isLongEnough) {
        passWarning.hide();
      } else {
        passWarning.show();
      }
    } else {
      $(
        "#passHelpLength, #passHelp, #passWarningIcon, #passCheckIcon",
      ).hide();
    }
  });

  signupForm.on("submit", function (e) {
    e.preventDefault();
    $(".form-check-help").removeClass("clear-text").addClass("pink-text");
    const isTermsChecked = $("#form-terms").is(":checked");
    if (!isTermsChecked) {
      $(".form-check-help").removeClass("clear-text").addClass("pink-text");
      return false;
    }

    if (signupForm.data("running") === "yes") {
      console.log("double submit, aborted");
      return false;
    }

    signupForm.data("running", "yes");
    submitBtn.prop("disabled", true).addClass("disabled");

    $("#signup-page").hide();
    $("#loading-page").show();
    $(".signup-form, .pcom-signup").hide();
    $(".signup-wait-for-install, .pcom-signup-wait-for-install").show();
    $("#error, .username-error, .password-error, .email-error")
      .hide()
      .css("visibility", "hidden");

    let dataToSend = {
      email: $("#form-email").val(),
      username: $("#form-user").val(),
      password: $("#form-password").val(),
    }
    console.log("dataToSend", dataToSend);

    $.ajax({
      url: "ws.php?format=json&method=pcom.accounts.register",
      type: "POST",
      data: dataToSend,
      success: function (response) {
        const data =
          typeof response === "string" ? JSON.parse(response) : response;

        signupForm.data("running", "no");

        if (data.result && data.result.username_error) {
          $(".username-error")
            .html(data.result.username_error)
            .show()
            .css("visibility", "visible");
          restoreForm();
          return false;
        }
        if (data.result && data.result.password_error) {
          $(".password-error")
            .html(data.result.password_error)
            .show()
            .css("visibility", "visible");
          restoreForm();
          return false;
        }
        if (data.result && data.result.email_error) {
          $(".email-error")
            .html(data.result.email_error)
            .show()
            .css("visibility", "visible");
          restoreForm();
          return false;
        }

        if (data.result && data.result.uuid) {
          if (typeof _paq !== "undefined") {
            _paq.push(["trackEvent", "Signup", "Individual", data.result.uuid]);
          }
          setInterval(function () {
            checkAccountInstalled(data.result.uuid);
          }, 1000);
        } else {
          let msg =
            data.result && data.result.error
              ? data.result.error
              : "Registration failed";
          showFormError(msg);
        }
      },
      error: function () {
        signupForm.data("running", "no");
        showFormError("A server error occurred. Please try again.");
      },
    });
    return false;
  });

  function restoreForm() {
    $("#signup-page").show();
    $("#loading-page").hide();
    $(".signup-wait-for-install, .pcom-signup-wait-for-install").hide();
    $(".signup-form, .pcom-signup").show();
    submitBtn.prop("disabled", false).removeClass("disabled");
  }

  function showFormError(message) {
    restoreForm();
    $("#error").show().find("span").html(message);
  }

  function checkAccountInstalled(uuid) {
    $.ajax({
      url: "ws.php?format=json&method=pcom.accounts.isInstalled",
      type: "POST",
      data: { uuid: uuid },
      success: function (response) {
        const data =
          typeof response === "string" ? JSON.parse(response) : response;
        if (data.result && data.result.redirect_url) {
          window.location.href = data.result.redirect_url;
        }
      },
    });
  }

  $("#form-terms").on("change", function () {
    const isChecked = $(this).is(":checked");
    if (isChecked) {
      $(".form-check-help").removeClass("pink-text").addClass("clear-text");
    } else {
      $(".form-check-help").addClass("pink-text").removeClass("clear-text");
    }
  });
});
