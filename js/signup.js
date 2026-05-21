$(document).ready(function () {
  const passwordInput = $("#form-password");
  const emailInput = $("#form-email");
  const userInput = $("#form-user");
  const passEye = $("#passEye");
  const passWarning = $("#passWarningIcon");
  const signupForm = $("#signupForm");
  const submitBtn = $("#form-submit");

  // validation format email
  function isValidEmail(email) {
    const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
  }

  // toggle password visibility
  passEye.on("click", function () {
    const currentType = passwordInput.attr("type");
    passwordInput.attr(
      "type",
      currentType === "password" ? "text" : "password",
    );
    $(this).toggleClass("icon-show icon-hide");
  });

  // validation email
  emailInput.on("input", function () {
    const val = $(this).val().trim();
    if (val.length > 0) {
      if (isValidEmail(val)) {
        $("#emailHelp, #emailWarningIcon").hide();
        $("#emailCheckIcon").show();
      } else {
        $("#emailHelp, #emailWarningIcon").show();
        $("#emailCheckIcon").hide();
      }
    } else {
      $("#emailHelp, #emailWarningIcon, #emailCheckIcon").hide();
    }
  });

  // verification disponnibility username
  userInput.on("input", function () {
    const username = $(this).val().trim();
    const userHelp = $("#userHelp");
    const userError = $("#userError");

    if (username.length > 0 && username.length < 4) {
      userHelp.show();
      userError.hide();
    } else {
      userHelp.hide();
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
      userInput.removeClass("is-invalid");
    }
  });

  // helps visibility paswword
  passwordInput.on("input", function () {
    const val = $(this).val();

    if (val.length > 0) {
      $("#passHelpLength, #passHelpSpecs, #passHelp, #passHelp2").show();

      // lentgh check
      const isLongEnough = val.length >= 6;
      if (isLongEnough) {
        $("#passHelpLength")
          .removeClass("pink-text")
          .addClass("main-green-text");
        $("#passHelp")
          .removeClass("icon-warning")
          .addClass("icon-check-1")
          .css("color", "var(--main_flash_green) !important");
      } else {
        $("#passHelpLength")
          .addClass("pink-text")
          .removeClass("main-green-text");
        $("#passHelp")
          .addClass("icon-warning")
          .removeClass("icon-check-1")
          .css("color", "var(--main_pink) !important");
      }

      // check password content (number and symbol)
      const hasSpecs = /[0-9]/.test(val) && /[^A-Za-z0-9]/.test(val);
      if (hasSpecs) {
        $("#passHelpSpecs")
          .removeClass("pink-text")
          .addClass("main-green-text");
        $("#passHelp2")
          .removeClass("icon-warning")
          .addClass("icon-check-1")
          .css("color", "var(--main_flash_green) !important");
      } else {
        $("#passHelpSpecs")
          .addClass("pink-text")
          .removeClass("main-green-text");
        $("#passHelp2")
          .addClass("icon-warning")
          .removeClass("icon-check-1")
          .css("color", "var(--main_pink) !important");
      }

      if (isLongEnough && hasSpecs) {
        passWarning.hide();
      } else {
        passWarning.show();
      }
    } else {
      $(
        "#passHelpLength, #passHelpSpecs, #passHelp, #passHelp2, #passWarningIcon",
      ).hide();
    }
  });

  // form submission
  signupForm.on("submit", function (e) {
    e.preventDefault();
    if (signupForm.data("running") === "yes") return false;

    signupForm.data("running", "yes");
    submitBtn.prop("disabled", true).addClass("disabled");
    $(".signup-form").hide();
    $(".signup-wait-for-install").show();
    $("#error").hide();

    $.ajax({
      url: "ws.php?format=json&method=pcom.accounts.register",
      type: "POST",
      data: signupForm.serialize(),
      success: function (response) {
        const data =
          typeof response === "string" ? JSON.parse(response) : response;
        if (data.result && data.result.uuid) {
          if (typeof _paq !== "undefined")
            _paq.push(["trackEvent", "Signup", "Individual", data.result.uuid]);
          setInterval(function () {
            checkAccountInstalled(data.result.uuid);
          }, 2000);
        } else {
          let msg =
            data.result && data.result.error
              ? data.result.error
              : "Registration failed";
          showFormError(msg);
        }
      },
      error: function () {
        showFormError("A server error occurred. Please try again.");
      },
    });
    return false;
  });

  function showFormError(message) {
    signupForm.data("running", "no");
    $(".signup-wait-for-install").hide();
    $(".signup-form").show();
    submitBtn.prop("disabled", false).removeClass("disabled");
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
    submitBtn.prop("disabled", !isChecked).toggleClass("disabled", !isChecked);
    if (isChecked) {
      $(".form-check-help")
        .toggleClass("pink-text", false)
        .toggleClass("clear-text", true);
    } else {
      $(".form-check-help")
        .toggleClass("pink-text", true)
        .toggleClass("clear-text", false);
    }
  });
});
