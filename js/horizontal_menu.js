document.addEventListener("DOMContentLoaded", () => {
  const container = document.querySelector(".horizontal-menu-container");
  if (!container) return;

  const track = container.querySelector(".horizontal-menu-track") || container;
  const buttons = track.querySelectorAll(".horizontal-menu-button");

  setTimeout(() => {
    track.querySelector(".selected-horizontal-menu-button")?.scrollIntoView({
      behavior: "smooth",
      inline: "center",
      block: "nearest",
    });
  }, 200);

  buttons.forEach((button) => {
    button.addEventListener("click", function (e) {
      const href = this.getAttribute("href") || "";
      if (href.startsWith("#")) e.preventDefault();

      track.querySelector(".selected-horizontal-menu-button")?.classList.remove("selected-horizontal-menu-button");
      this.classList.add("selected-horizontal-menu-button");

      this.scrollIntoView({
        behavior: "smooth",
        inline: "center",
        block: "nearest",
      });
    });
  });
});