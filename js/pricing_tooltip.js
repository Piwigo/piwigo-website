$(document).ready(function () {
    /******
    Manages the tooltip state 
    ******/
    function updateTooltipState(triggerClass, bodyClass) {
        const hasOpenTooltip = $(triggerClass + ".is-active").length > 0;
        $("body").toggleClass(bodyClass, hasOpenTooltip);
    }

    // Targets both types of triggers 
    $(".js-custom-tooltip-trigger, .js-plugin-tooltip-trigger").on(
        "click",
        function (e) {
        e.stopPropagation();

        const $this = $(this);
        const isCustom = $this.hasClass("js-custom-tooltip-trigger");
        const triggerClass = isCustom
            ? ".js-custom-tooltip-trigger"
            : ".js-plugin-tooltip-trigger";
        const bodyClass = isCustom
            ? "custom-tooltip-open"
            : "plugin-tooltip-open";

        const shouldOpen = !$this.hasClass("is-active");

        // close all triggers of the same type
        $(triggerClass).removeClass("is-active");

        if (shouldOpen) {
            $this.addClass("is-active");
        }

        updateTooltipState(triggerClass, bodyClass);
        },
    );

    // prevent closing 
    $(".custom-hover-popover, .pricing-plugin-popover").on("click", function (e) {
        e.stopPropagation();
    });

    // close tooltips when clicking outside
    $(document).on("click", function () {
        $(".js-custom-tooltip-trigger").removeClass("is-active");
        updateTooltipState(".js-custom-tooltip-trigger", "custom-tooltip-open");

        $(".js-plugin-tooltip-trigger").removeClass("is-active");
        updateTooltipState(".js-plugin-tooltip-trigger", "plugin-tooltip-open");
    });

    updateTooltipState(".js-custom-tooltip-trigger", "custom-tooltip-open");
    updateTooltipState(".js-plugin-tooltip-trigger", "plugin-tooltip-open");
    });
