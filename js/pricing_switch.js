$(document).ready(function() {
    // to handle the plan parameter in the URL
    let searchParams = new URLSearchParams(window.location.search);

    /******
    Updates the UI based on selected plan
    ******/
    function updatePricingCards(type, updateUrl = true) {
        if (type === 'cloud') {
            $('#pricing-selfhosted-content').hide();
            $('#pricing-cloud-content').fadeIn(300);
            $('#desc-selfhosted').addClass('d-none');
            $('#desc-cloud').removeClass('d-none').fadeIn(300);
            $('#card-selfhosted').addClass('d-none-card');
            $('#cloud-storage').removeClass('d-none-card');
            $('#specific-cases-section').hide();
            $('#professional-services-section').hide();
            $('#technical-support-section').hide();
            $('#technical-support-table-section').hide();

            // some function to ensure the cards have the same height for better UI
            let maxHeight = 0;
            $(".pricing-header").each(function(index){
                console.log($(this).height())
                maxHeight = $(this).height() > maxHeight ? $(this).height() : maxHeight;
            });
            $(".pricing-header").height(maxHeight);

            let maxHeightFeatures = 0;
            $(".top-features-list").each(function(index){
                console.log($(this).height())
                maxHeightFeatures = $(this).height() > maxHeightFeatures ? $(this).height() : maxHeightFeatures;
            });
            $(".top-features-list").height(maxHeightFeatures);
        } else {
            $('#pricing-cloud-content').hide();
            $('#pricing-selfhosted-content').fadeIn(300);
            $('#desc-cloud').addClass('d-none');
            $('#desc-selfhosted').removeClass('d-none').fadeIn(300);
            $('#card-selfhosted').removeClass('d-none-card');
            $('#cloud-storage').addClass('d-none-card');
            $('#specific-cases-section').fadeIn(300);
            $('#professional-services-section').fadeIn(300);
            $('#technical-support-section').fadeIn(300);
            $('#technical-support-table-section').fadeIn(300);
            
             // some function to ensure the cards have the same height for better UI
            let maxHeightProfessional = 0;
            $(".professional-services-text").each(function(index){
                console.log($(this).height())
                maxHeightProfessional = $(this).height() > maxHeightProfessional ? $(this).height() : maxHeightProfessional;
            });
            $(".professional-services-text").height(maxHeightProfessional);

            let maxHeightPrice = 0;
            $(".service-price").each(function(index){
                console.log($(this).height())
                maxHeightPrice = $(this).height() > maxHeightPrice ? $(this).height() : maxHeightPrice;
            });
            $(".service-price").height(maxHeightPrice);

        }
        if (updateUrl) {
            const urlValue = (type === 'cloud') ? 'cloud' : 'self_hosted';
            searchParams.set('plan', urlValue);
            const newUrl = window.location.pathname + '?' + searchParams.toString();
            window.history.pushState(null, '', newUrl);

            localStorage.setItem('selectedPricing', type);
        }
    }

    // Toggle switch 
    $('.btn-pricing').on('click', function() {
        var $clickedBtn = $(this);
        if ($clickedBtn.hasClass('active')) return;
        var $parent = $clickedBtn.closest('.btn-pricing-switch');

        $parent.find('.btn-pricing').toggleClass('active inactive bg-white bg-transparent shadow-sm shadow-none');
        var choice = $clickedBtn.hasClass('cloud') ? 'cloud' : 'self-hosted';
        updatePricingCards(choice);
    });

    // Initialization 
    const planParam = searchParams.get('plan');
    // const savedChoice = localStorage.getItem('selectedPricing');
    if (planParam === 'self_hosted') {
        $('.btn-pricing.cloud').removeClass('active bg-white shadow-sm').addClass('inactive bg-transparent shadow-none');
        $('.btn-pricing.self-hosted').addClass('active bg-white shadow-sm').removeClass('inactive bg-transparent shadow-none');
        updatePricingCards('self-hosted', false);
    } else {
        $('.btn-pricing.self-hosted').removeClass('active bg-white shadow-sm').addClass('inactive bg-transparent shadow-none');
        $('.btn-pricing.cloud').addClass('active bg-white shadow-sm').removeClass('inactive bg-transparent shadow-none');
        updatePricingCards('cloud', false);
    }
});