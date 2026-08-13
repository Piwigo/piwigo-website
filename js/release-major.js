jQuery(document).ready(function() {
  var menuPosY = jQuery('#release_menu').position().top;
  jQuery(window).scroll(function () {
    if (this.scrollY > menuPosY) {
      jQuery(".btn-back-to-menu").show();
    } else {
      jQuery(".btn-back-to-menu").hide();
    }
  });
});