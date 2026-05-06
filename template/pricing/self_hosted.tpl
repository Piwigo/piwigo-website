    {assign var="color" value="orange"}
    {assign var="t_1" value={'pricing specific_case_title_1'|translate}}
    {assign var="t_2" value={'pricing specific_case_title_2'|translate}}
    {assign var="t_3" value={'pricing prof_service_title_3'|translate}}
    {assign var="t_4" value={'pricing prof_service_title_4'|translate}}
    {assign var="t_5" value={'pricing prof_service_title_5'|translate}}
    {assign
        var="text_1"
        value={'pricing specific_case_text_1'|translate}
    }
    {assign
        var="text_2"
        value={'pricing specific_case_text_2'|translate}
    }
    {assign
        var="text_3"
        value={'pricing prof_service_text_3'|translate}
    }
    {assign
        var="text_4"
        value={'pricing prof_service_text_4'|translate}
    }
    {assign
        var="text_5"
        value={'pricing prof_service_text_5'|translate}
    }
    {assign var="th_1" value={'pricing tech_table_head_install'|translate}}
    {assign var="th_2" value={'pricing tech_table_head_updates'|translate}}
    {assign var="th_3" value={'pricing tech_table_head_managed'|translate}}
    {assign var="row_pricing_customer" value={'pricing tech_table_row_pricing_support'|translate}}
    {assign var="row_pricing_external" value={'pricing tech_table_row_pricing_no_support'|translate}}
    {assign var="row_included_title" value={'pricing tech_table_row_included_title'|translate}}
    {assign var="row_feat_install" value={'pricing tech_table_row_feat_install'|translate}}
    {assign var="row_feat_updates" value={'pricing tech_table_row_feat_updates'|translate}}
    {assign var="row_feat_server" value={'pricing tech_table_row_feat_server'|translate}}
    {assign var="row_feat_monit" value={'pricing tech_table_row_feat_monit'|translate}}
    {assign var="row_feat_backup" value={'pricing tech_table_row_feat_backup'|translate}}

<section id="specific-cases-section" class="specific-cases-container container">
    <h2 class="specific-cases-title text-center">{'specific cases title'|translate}</h2>
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
        <h2 class="professional-services-title text-center">{'pricing professional services title'|translate}</h2>
    </div>
    
    <div class="services-strip">
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><img src="{$PORG_ROOT_URL}images/icons/personalize_orange.svg" class="menu-svg" alt="icon"></span>
            <h4 class="professional-services-title-text text-center">{$t_3}</h4>
            <p class="professional-services-text text-center">{$text_3}</p>
            <div class="service-action" style="margin-top: 20px;">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'pricing label_see_examples'|translate}}
            </div>
            <div class="service-price" style="padding-top: 30px !important;">
                <span class="price-amount">€490</span> <span class="price-suffix">{'pricing price_excl_taxes'|translate}</span>
            </div>
        </div>
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><i class="icon-import"></i></span>
            <h4 class="professional-services-title-text text-center">{$t_4}</h4>
            <p class="professional-services-text text-center">{$text_4}</p>
            <div class="service-action">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'pricing label_learn_more'|translate}}
            </div>
            <div class="service-price">
                <span class="price-label">{'pricing professional services lil text'|translate}</span>
                <span class="price-amount">€150</span> <span class="price-suffix">{'pricing price_excl_taxes_hour'|translate}</span>
            </div>
        </div>
        <div class="professional-service-card">
            <span class="professional-services-icon orange-professional-services-icon"><i class="icon-wrench"></i></span>
            <h4 class="professional-services-title-text text-center">{$t_5}</h4>
            <p class="professional-services-text text-center">{$text_5}</p>
            <div class="service-action">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'pricing label_see_prerequisites'|translate}}
            </div>
            <div class="service-price">
                <span class="price-label">{'pricing professional services lil text'|translate}</span>
                <span class="price-amount">€150</span> <span class="price-suffix">{'pricing price_excl_taxes_hour'|translate}</span>
            </div>
        </div>
    </div>
</section>

<section id="technical-support-section" class="technical-support-container container">
    <div class="technical-support-flex">
        <div class="technical-support-header">
            <h3 class="technical-support-title">{'pricing technical title'|translate}</h3>
        </div>
        <div class="technical-support-content">
            <p class="technical-support-text">{'pricing technical description'|translate}</p>
        </div>
    </div>
</section>

<section id="technical-support-table-section" class="technical-support-table-container container">
        <div class="technical-table-wrapper">
        <table class="tech-table">
            <thead>
                <tr>
                    <th class="empty-cell"></th>
                    <th>{$th_1}</th>
                    <th>{$th_2}</th>
                    <th>{$th_3}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="row-label">{$row_pricing_customer}</td>
                    <td class="value-cell">from €200</td>
                    <td class="value-cell">€500 {'pricing price_excl_taxes_year'|translate}</td>
                    <td class="value-cell">€1500 {'pricing price_excl_taxes_year'|translate}</td>
                </tr>
                <tr style="background-color: var(--clear) !important;">
                    <td class="row-label">{$row_pricing_external}</td>
                    <td class="value-cell">from €250</td>
                    <td class="value-cell">€600 {'pricing price_excl_taxes_year'|translate}</td>
                    <td class="value-cell">N/A</td>
                </tr>

                <tr class="table-divider">
                    <td colspan="4">{$row_included_title}</td>
                </tr>

                <tr>
                    <td class="row-label">{$row_feat_install}</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                </tr>
                <tr>
                    <td class="row-label">{$row_feat_updates}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                    <td class="value-cell">-</td>
                </tr>
                <tr>
                    <td class="row-label">{$row_feat_server}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                </tr>
                <tr>
                    <td class="row-label">{$row_feat_monit}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                </tr>
                <tr>
                    <td class="row-label">{$row_feat_backup}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                </tr>
            </tbody>
        </table>
    </div>
</section>