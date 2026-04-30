<section id="specific-cases-section" class="specific-cases-container container">
    <h2 class="specific-cases-title text-center">{'specific cases title'|translate}</h2>
    {assign var="color" value="orange"}
    {assign var="t_1" value="Custom code and plugins"}
    {assign var="t_2" value="SSH access"}
    {assign var="t_3" value="Custom graphic personalization"}
    {assign var="t_4" value="Custom data import"}
    {assign var="t_5" value="Custom feature development"}
    {assign
        var="text_1"
        value="Support applies as long as you have not modified Piwigo's source code. Any support requests related to modified source code or custom-built plugins will be billed separately (€150 excl. VAT per hour)."
    }
    {assign
        var="text_2"
        value="To provide high-quality support, we require SSH access to your server. If this is not possible, an additional fee of €300 excl. VAT per year will apply."
    }
    {assign
        var="text_3"
        value="Our team will customize your Piwigo gallery to your colors and use."
    }
    {assign
        var="text_4"
        value="Our team imports your existing data from any source (shared server, photo library software, etc.)."
    }
    {assign
        var="text_5"
        value="Based on your specifications, our team can develop custom features (plugins, connectors, etc.)."
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
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'See examples'|translate}}
            </div>
            <div class="service-price" style="padding-top: 30px !important;">
                <span class="price-amount">€490</span> <span class="price-suffix">excl. taxes</span>
            </div>
        </div>
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><i class="icon-import"></i></span>
            <h4 class="professional-services-title-text text-center">{$t_4}</h4>
            <p class="professional-services-text text-center">{$text_4}</p>
            <div class="service-action">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Learn more'|translate}}
            </div>
            <div class="service-price">
                <span class="price-label">{'professional services lil text'|translate}</span>
                <span class="price-amount">€150</span> <span class="price-suffix">excl. taxes/hour</span>
            </div>
        </div>
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><i class="icon-wrench"></i></span>
            <h4 class="professional-services-title-text text-center">{$t_5}</h4>
            <p class="professional-services-text text-center">{$text_5}</p>
            <div class="service-action">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'See prerequisites'|translate}}
            </div>
            <div class="service-price">
                <span class="price-label">{'professional services lil text'|translate}</span>
                <span class="price-amount">€150</span> <span class="price-suffix">excl. taxes/hour</span>
            </div>
        </div>
    </div>
</section>