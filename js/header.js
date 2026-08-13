$(document).ready(function () {
  const MOBILE_BREAKPOINT = 991; // Standardized mobile breakpoint
  let originalLangMenuParent = null;

  // toggle submenus on click
  $(".nav-btn-wrapper .submenu_button").on("click", function (e) {
    if ($(window).width() <= MOBILE_BREAKPOINT) {
      e.preventDefault();
      e.stopPropagation();

      var $this = $(this);
      var subContent = $this.next(".mobile-sub-content");
      var arrow = $this.find(".icon-down-open");
      subContent.toggle();
      arrow.toggleClass("icon-rotate-180");

      $(".mobile-sub-content").not(subContent).hide();
      $(".icon-down-open").not(arrow).removeClass("icon-rotate-180");
    }
  });

  // language dropdown
  $(document).on("click", ".header-lang-btn", function (e) {
    if ($(window).width() <= MOBILE_BREAKPOINT) {
      e.preventDefault();
      e.stopPropagation();

      var $btn = $(this);
      var $menu = $("#header-lang-menu");
      var isOpen = $menu.hasClass("is-open");
      
      // Store original parent if not already stored
      if (!originalLangMenuParent) {
        originalLangMenuParent = $menu.parent();
      }

      if (isOpen) {
        $menu.removeClass("is-open"); // CSS will handle display: none
        $btn
          .find(".arrow-lang, .header-arrow-icon")
          .removeClass("icon-rotate-180");
        $btn.css({ background: "", color: "" });
        $btn.find("i").css({ color: "" });
        
        // Restore to original parent if it was moved
        if ($menu.parent().is("body") && originalLangMenuParent) {
          $menu.appendTo(originalLangMenuParent);
          $menu.css({ position: "", top: "", left: "", width: "", "z-index": "" }); // Clear inline styles
        }
      } else {
        // Move to body for fixed positioning on mobile
        if (!$menu.parent().is("body")) {
          $menu.appendTo("body");
        }

        // Get button position relative to viewport
        var btnRect = $btn[0].getBoundingClientRect();
        var btnWidth = $btn.outerWidth();
        var menuWidth = $menu.outerWidth(); // Get actual menu width
        var menuHeight = $menu.outerHeight();
        
        // Calculate position for the menu to appear above the button
        // Centered horizontally above the button, with some padding
        let leftPos = btnRect.left + (btnWidth / 2) - (menuWidth / 2);
        let topPos = btnRect.top - menuHeight - 10; // 10px above the button

        // Ensure menu stays within viewport bounds
        const windowWidth = $(window).width();
        const windowHeight = $(window).height();
        const padding = 10;

        leftPos = Math.max(padding, Math.min(leftPos, windowWidth - menuWidth - padding));
        topPos = Math.max(padding, Math.min(topPos, windowHeight - menuHeight - padding));

        // Apply styles
        $menu
          .css({
            position: "fixed",
            top: topPos + "px",
            left: leftPos + "px",
            width: menuWidth + "px", // Maintain its natural width or set a max-width
            display: "block", // Ensure it's visible
            "z-index": 9999,
          })
          .addClass("is-open");

        // Rotate arrow and change button style
        $btn
          .find(".arrow-lang, .header-arrow-icon")
          .addClass("icon-rotate-180");
        $btn.css({
          background: "var(--main_flash_green)",
          color: "var(--clear)",
        });
        $btn.find("i").css({ color: "var(--clear)" });
      }
    }
  });

  // close lang menu when clicking outside
  $(document).on("click", function (e) {
    if ($(window).width() <= MOBILE_BREAKPOINT) {
      if (
        !$(e.target).closest("#header-lang-menu").length &&
        !$(e.target).closest(".header-lang-btn").length
      ) {
        var $btn = $(".mobile-footer-row .header-lang-btn");
        $("#header-lang-menu").removeClass("is-open"); // CSS will handle display: none
        $btn
          .find(".arrow-lang, .header-arrow-icon")
          .removeClass("icon-rotate-180");
        $btn.css({ background: "", color: "" });
        $btn.find("i").css({ color: "" });

        // Restore to original parent if it was moved
        var $menu = $("#header-lang-menu");
        if ($menu.parent().is("body") && originalLangMenuParent) {
          $menu.appendTo(originalLangMenuParent);
          $menu.css({ position: "", top: "", left: "", width: "", "z-index": "" }); // Clear inline styles
        }
      }
    }
  });

  // Handle window resize to restore menu for desktop
  $(window).on("resize", function() {
    var $menu = $("#header-lang-menu");
    if ($(window).width() > MOBILE_BREAKPOINT) {
      // If desktop view, ensure menu is in its original place and closed
      if ($menu.parent().is("body") && originalLangMenuParent) {
        $menu.removeClass("is-open");
        $menu.appendTo(originalLangMenuParent);
        $menu.css({ position: "", top: "", left: "", width: "", "z-index": "", display: "" }); // Clear inline styles
        $(".header-lang-btn")
          .find(".arrow-lang, .header-arrow-icon")
          .removeClass("icon-rotate-180");
        $(".header-lang-btn").css({ background: "", color: "" });
        $(".header-lang-btn").find("i").css({ color: "" });
      }
    }
  });

  // Prevent body from scrolling when mobile menu is open
  var mobileMenu = document.getElementById('bs-example-navbar-collapse-1');
  if (mobileMenu) {
    $(mobileMenu).on('show.bs.collapse', function () {
      $('body').addClass('mobile-menu-open');
      $('html').addClass('mobile-menu-open');
    });
    $(mobileMenu).on('hide.bs.collapse', function () {
      $('body').removeClass('mobile-menu-open');
      $('html').removeClass('mobile-menu-open');
    });
  }
});
