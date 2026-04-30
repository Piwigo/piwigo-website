<section id="specific-cases-section" class="specific-cases-container container">
    <h2 class="specific-cases-title text-center">{'specific cases title'|translate}</h2>
    {assign var="color" value="orange"}
    {assign var="t_1" value="Custom code and plugins"}
    {assign var="t_2" value="SSH access"}
    {assign var="text_1" value="Support applies as long as you have not modified Piwigo's source code. Any support requests related to modified source code or custom-built plugins will be billed separately (€150 excl. VAT per hour)."}
    {assign var="text_2" value="To provide high-quality support, we require SSH access to your server. If this is not possible, an additional fee of €300 excl. VAT per year will apply."}
    <div class="specific-cases-strip">
        <div class="specific-cases-item">
            <span class="specific-cases-icon {$color}-specific-cases-icon" aria-hidden="true"><i class="icon-dev"></i></span>
            <h3 class="specific-cases-title-text mb-0 li-centered">{$t_1}</h3>
            <p class="specific-cases-text mb-0 li-centered">{$text_1}</p>
        </div>
        <div class="specific-cases-item">
            <span class="specific-cases-icon {$color}-specific-cases-icon" aria-hidden="true"><i class="icon-key"></i></span>
            <h3 class="specific-cases-title-text mb-0 li-centered">{$t_2}</h3>
            <p class="specific-cases-text mb-0 li-centered">{$text_2}</p>
        </div>
    </div>
</section>