jQuery(document).ready(function () {
  const cloudBtn = jQuery(".btn-pricing.cloud");
  const selfHostedBtn = jQuery(".btn-pricing.self-hosted");
  const url = new URL(window.location);
  const currentDisplay = url.searchParams.get("display");

  if (cloudBtn.length && selfHostedBtn.length) { // Ensure elements are found before manipulating
    if (currentDisplay === "self-hosted") {
      selfHostedBtn.addClass("active").removeClass("inactive");
      cloudBtn.removeClass("active").addClass("inactive");
    } else {
      cloudBtn.addClass("active").removeClass("inactive");
      selfHostedBtn.removeClass("active").addClass("inactive");
    }

    selfHostedBtn.on("click", function () {
      url.searchParams.set("display", "self-hosted");
      window.location.href = url.toString();
    });

    cloudBtn.on("click", function () {
      url.searchParams.delete("display");
      window.location.href = url.toString();
    });
  } else {
    // Log an error if buttons are not found, useful for debugging
    console.error("plugins_switch.js: Could not find one or both pricing buttons.");
  }
});