<div class="triple-true-header">
    <h2 class="h2-top-page triple-true-title d-none d-md-block">
        {$title}
    </h2>
    <h2 class="h2-mobile-top-page triple-true-title d-block d-md-none">
        {$title}
    </h2>
    {if isset($subtitle) && $subtitle != false}
        <p class="sub-h2-top-page triple-true-subtitle d-none d-md-block">
            {$subtitle}
        </p>
        <p class="h2-mobile-sub-top-page triple-true-subtitle d-block d-md-none">
            {$subtitle}
        </p>
    {/if}
</div>

{* color need to be green, orange, or pink *}
<div class="feature-benefits-strip">
    <div class="feature-benefit-item">
        <span class="feature-benefit-icon {$color}-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
        <p class="feature-benefit-text mb-0 li-centered">{$text_1}</p>
        {if isset($text_desc) && $text_desc == true}
            <p class="feature-benefit-text-desc  mb-0 li-centered">{$text_1_desc}</p>
        {/if}
    </div>
    <div class="feature-benefit-item">
        <span class="feature-benefit-icon {$color}-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
        <p class="feature-benefit-text mb-0 li-centered">{$text_2}</p>
        {if isset($text_desc) && $text_desc == true}
            <p class="feature-benefit-text-desc  mb-0 li-centered">{$text_2_desc}</p>
        {/if}
    </div>
    <div class="feature-benefit-item">
        <span class="feature-benefit-icon {$color}-feature-benefit-icon" aria-hidden="true"><i class="icon-check-1"></i></span>
        <p class="feature-benefit-text mb-0 li-centered">{$text_3}</p>
        {if isset($text_desc) && $text_desc == true}
            <p class="feature-benefit-text-desc  mb-0 li-centered">{$text_3_desc}</p>
        {/if}
    </div>
</div>