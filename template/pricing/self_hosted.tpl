<section id="specific-cases-section" class="specific-cases-container container">
    <h2 class="specific-cases-title text-center">{'specific cases title'|translate}</h2>
    {assign var="color" value="orange"}
    {assign var="t_1" value={'specific_case_title_1'|translate}}
    {assign var="t_2" value={'specific_case_title_2'|translate}}
    {assign var="t_3" value={'prof_service_title_3'|translate}}
    {assign var="t_4" value={'prof_service_title_4'|translate}}
    {assign var="t_5" value={'prof_service_title_5'|translate}}
    {assign
        var="text_1"
        value={'specific_case_text_1'|translate}
    }
    {assign
        var="text_2"
        value={'specific_case_text_2'|translate}
    }
    {assign
        var="text_3"
        value={'prof_service_text_3'|translate}
    }
    {assign
        var="text_4"
        value={'prof_service_text_4'|translate}
    }
    {assign
        var="text_5"
        value={'prof_service_text_5'|translate}
    }
    <div class="specific-cases-strip">
        <div class="specific-cases-item">
            <span class="specific-cases-icon {$color}-specific-cases-icon" aria-hidden="true"><i class="icon-dev"></i></span>
            <h4 class="specific-cases-title-text mb-0 li-centered">{$t_1}</h3>
                <p class="specific-cases-text mb-0 li-centered">{$text_1}</p>
        </div>
        <div class="specific-cases-item">
            <span class="specific-cases-icon {$color}-specific-cases-icon" aria-hidden="true"><i class="icon-key"></i></span>
            <h4 class="specific-cases-title-text mb-0 li-centered">{$t_2}</h3>
                <p class="specific-cases-text mb-0 li-centered">{$text_2}</p>
        </div>
    </div>
</section>

<section id="professional-services-section" class="professional-services-container container">
    <div class="professional-services-header text-center">
        <h2 class="professional-services-title text-center">{'professional services title'|translate}</h2>
    </div>
    
    <div class="services-strip">
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><img src="{$PORG_ROOT_URL}images/icons/personalize_orange.svg" class="menu-svg" alt="icon"></span>
            <h4 class="professional-services-title-text text-center">{$t_3}</h4>
            <p class="professional-services-text text-center">{$text_3}</p>
            <div class="service-action" style="margin-top: 20px;">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'label_see_examples'|translate}}
            </div>
            <div class="service-price" style="padding-top: 30px !important;">
                <span class="price-amount">€490</span> <span class="price-suffix">{'price_excl_taxes'|translate}</span>
            </div>
        </div>
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><i class="icon-import"></i></span>
            <h4 class="professional-services-title-text text-center">{$t_4}</h4>
            <p class="professional-services-text text-center">{$text_4}</p>
            <div class="service-action">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'label_learn_more'|translate}}
            </div>
            <div class="service-price">
                <span class="price-label">{'professional services lil text'|translate}</span>
                <span class="price-amount">€150</span> <span class="price-suffix">{'price_excl_taxes_hour'|translate}</span>
            </div>
        </div>
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><i class="icon-wrench"></i></span>
            <h4 class="professional-services-title-text text-center">{$t_5}</h4>
            <p class="professional-services-text text-center">{$text_5}</p>
            <div class="service-action">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'label_see_prerequisites'|translate}}
            </div>
            <div class="service-price">
                <span class="price-label">{'professional services lil text'|translate}</span>
                <span class="price-amount">€150</span> <span class="price-suffix">{'price_excl_taxes_hour'|translate}</span>
            </div>
        </div>
    </div>
</section>

<section id="technical-support-section" class="technical-support-container container">
    <div class="technical-support-flex">
        <div class="technical-support-header">
            <h3 class="technical-support-title">{'technical title'|translate}</h2>
        </div>
        <div class="technical-support-content">
            <p class="technical-support-text">{'technical description'|translate}</p>
        </div>
    </div>
</section>