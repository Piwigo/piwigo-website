{* Les assignations de titres et textes sont maintenant gérées directement dans la boucle via le PHP *}
{assign var="color" value="orange"}

<section id="specific-cases-section" class="specific-cases-container container">
    <h2 class="specific-cases-title text-center">{'specific cases title'|translate}</h2>
    <div class="specific-cases-strip">
        {foreach from=$SPECIFIC_CASES item=case}
            <div class="specific-cases-item">
                <span class="specific-cases-icon {$color}-specific-cases-icon" aria-hidden="true">
                    <i class="{$case.icon}"></i>
                </span>
                <h4 class="specific-cases-title-text mb-0 li-centered">{$case.title}</h4>
                <p class="specific-cases-text mb-0 li-centered">{$case.text}</p>
            </div>
        {/foreach}
    </div>
</section>

<section id="professional-services-section" class="professional-services-container container">
    <div class="professional-services-header text-center">
        <h2 class="professional-services-title text-center">{'pricing professional services title'|translate}</h2>
    </div>

    <div class="services-strip">
        {foreach from=$PROF_SERVICES item=service}
            <div class="professional-service-card">
                <span class="professional-services-icon orange-professional-services-icon">
                    {if isset($service.img)}
                        <img src="{$PORG_ROOT_URL}images/icons/{$service.img}" class="menu-svg" alt="icon">
                    {else}
                        <i class="{$service.icon}"></i>
                    {/if}
                </span>
                <h4 class="professional-services-title-text text-center">{$service.title}</h4>
                <p class="professional-services-text text-center">{$service.text}</p>
                <div class="service-action">
                    {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label=$service.btn}
                </div>
                <div class="service-price justify-content-end">
                    {if isset($service.label)}
                        <span class="price-label">{$service.label}</span>
                    {/if}
                    <span class="price-amount">{$service.price}</span> 
                    <span class="price-suffix">{$service.suffix}</span>
                </div>
            </div>
        {/foreach}
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
                    <th>{'pricing tech_table_head_install'|translate}</th>
                    <th>{'pricing tech_table_head_updates'|translate}</th>
                    <th>{'pricing tech_table_head_managed'|translate}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="row-label">{'pricing tech_table_row_pricing_support'|translate}</td>
                    <td class="value-cell">{$TECH_PRICES.install_customer}</td>
                    <td class="value-cell">{$TECH_PRICES.update_customer}</td>
                    <td class="value-cell">{$TECH_PRICES.managed_customer}</td>
                </tr>
                <tr style="background-color: var(--clear) !important;">
                    <td class="row-label">{'pricing tech_table_row_pricing_no_support'|translate}</td>
                    <td class="value-cell">{$TECH_PRICES.install_external}</td>
                    <td class="value-cell">{$TECH_PRICES.update_external}</td>
                    <td class="value-cell">{$TECH_PRICES.na}</td>
                </tr>

                <tr class="table-divider">
                    <td colspan="4">{'pricing tech_table_row_included_title'|translate}</td>
                </tr>

                <tr>
                    <td class="row-label">{'pricing tech_table_row_feat_install'|translate}</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                </tr>
                <tr>
                    <td class="row-label">{'pricing tech_table_row_feat_updates'|translate}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                    <td class="value-cell">-</td>
                </tr>
                <tr>
                    <td class="row-label">{'pricing tech_table_row_feat_server'|translate}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                </tr>
                <tr>
                    <td class="row-label">{'pricing tech_table_row_feat_monit'|translate}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                </tr>
                <tr>
                    <td class="row-label">{'pricing tech_table_row_feat_backup'|translate}</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell">-</td>
                    <td class="value-cell"><i class="icon-rounded-check bi bi-check-circle-fill"></i></td>
                </tr>
            </tbody>
        </table>
    </div>
</section>