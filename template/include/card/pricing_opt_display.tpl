<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_option.css">

<section class="pricing-global-wrapper">

    <div id="pricing-cloud-content" class="pricing-content-wrapper">
        <div class="pricing-main-grid">
            {foreach from=$PLANS item=plan}
                <div class="pricing-grid-item">
                    {include
                        file="template/include/card/pricing_option.tpl"
                        type="cloud"
                        is_best_deal=$plan.is_best_deal|default:false
                        title=$plan.title
                        price=$plan.price
                        subtitle=$plan.subtitle
                        features=$plan.features
                        services=$plan.services
                        link_try="#"
                        link_trial="#"
                    }
                </div>
            {/foreach}
        </div>
    </div>

    <div id="pricing-selfhosted-content" class="pricing-content-wrapper" style="display: none;">
        <div class="pricing-main-grid">
            {foreach from=$SUPPORT_PLANS key=plan_id item=plan}
                <div class="pricing-grid-item">
                    {if $plan_id == 'free'}
                        {include
                            file="template/include/card/pricing_option.tpl"
                            type="selfhosted"
                            title=$plan.title
                            price=$plan.price
                            subtitle=$plan.subtitle
                            features=$plan.features
                            services=[]
                            link_try=$DOC_LINK
                            label_try={'View Documentation'|translate}
                            link_trial=$FORUM_LINK
                            label_trial={'Visit Community Forum'|translate}
                            btn_try={'Download Piwigo'|translate}
                            btn_trial={'Download Piwigo'|translate}
                            btn_link_try=$DOWNLOAD_LINK
                            btn_link_trial=$DOWNLOAD_LINK
                            target="_blank"
                        }
                    {else}
                        {include
                            file="template/include/card/pricing_option.tpl"
                            type="selfhosted"
                            title=$plan.title
                            price=$plan.price
                            subtitle=$plan.subtitle
                            features=$plan.features
                            services=[]
                            link_try=$CONTACT_URL
                            label_try={'Contact us'|translate}
                            link_trial=$CONTACT_URL
                            label_trial={'Contact us'|translate}
                            btn_try={'Contact us'|translate}
                            btn_trial={'Contact us'|translate}
                            btn_link_try=$CONTACT_URL
                            btn_link_trial=$CONTACT_URL
                            target="_blank"
                        }
                    {/if}
                </div>
            {/foreach}
        </div>
    </div>
</section>

<script src="{$PORG_ROOT_URL_PLUGINS}js/pricing_tooltip.js"></script>