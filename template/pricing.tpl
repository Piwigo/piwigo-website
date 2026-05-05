<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/pricing.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/buttons/pricing_switch.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_option.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/compare_plan_table.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/faq_item.css">
{* <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_plugin_card.css"> *}
{* <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_custom_card.css"> *}
{* <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/pricing_global_card.css"> *}
{* <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/storage_card.css"> *}
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/card/global_text_image.css">


<section class="pricing-header-main container-fluid">
    <div class="row align-items-center text-center">
        <div class="col-12 pricing-header-text">
            <h1 class="pricing-title">
                {'pricing main title part 1'|translate}
                <span class="highlight-wrap">
                    <img class="highlight-circle" src="{$PORG_ROOT_URL}images/pricing/greencircle.svg" alt="">
                    <span class="highlight">{'pricing main title part 2'|translate}</span>
                </span>
            </h1>
            <p class="pricing-subtitle">
                {'pricing main description'|translate}
            </p>
        </div>

        <div class="col-12 pricing-toggle-container">
            {include file="template/include/buttons/pricing_switch.tpl"}
        </div>

        <div class="col-12 pricing-toggle-description">
            <p id="desc-cloud" class="toggle-desc">
                {'pricing toggle description 1'|translate}
            </p>
            <p id="desc-selfhosted" class="toggle-desc d-none">
                {'pricing toggle description 2'|translate}
            </p>
        </div>
    </div>
</section>

<div id="card-selfhosted" class="selfhosted-card-container d-none-card">
    {include file="template/include/card/global_text_image.tpl" title={'pricing title selfhosted card'|translate} desc={'pricing selfhosted description card'|translate} image="{$PORG_ROOT_URL}images/pricing/selfhosted_deploy.png" }
</div>

<div id="pricing-content-cloud" class="pricing-content">
    {include file="template/include/card/pricing_opt_display.tpl"}
    <div id="cloud-storage" class="pricing-storage-content d-none-card">
        {include file="template/pricing/cloud.tpl" }
    </div>
</div>

<div id="pricing-content-selfhosted" class="pricing-content">
    {include file="template/pricing/self_hosted.tpl"}
</div>


<section class="faq_pricing_container container">
    <div class="faq_pricing_header">
        <h3 class="faq_pricing_title text-center">{'pricing faq pricing title'|translate}</h2>
    </div>
    <div class="row faq_pricing_grid g-0">
        {include file="template/include/card/faq_item.tpl" faq_id="1" 
            faq_question="Is there a free version of Piwigo ?" 
            faq_answer="After the trial period, all piwigo.com plans are subject to a fee. However, you can download Piwigo for free from piwigo.org and install it on the server of your choice."}

        {include file="template/include/card/faq_item.tpl" faq_id="2" 
            faq_question="Are there any setup fees for Piwigo?" 
            faq_answer="No, there are no hidden costs or setup fees on any of our plans."}

        {include file="template/include/card/faq_item.tpl" faq_id="3" 
            faq_question="What happens if I run out of storage space?" 
            faq_answer="You can upgrade your storage space at any time directly from your account. If you exceed your limit, you will be notified to upgrade your plan."}

        {include file="template/include/card/faq_item.tpl" faq_id="4" 
            faq_question="Can we have several Piwigo under the same subscription?" 
            faq_answer="Each subscription is linked to one Piwigo instance. For multiple instances, you will need multiple subscriptions, but they can be managed under the same billing account."}

        {include file="template/include/card/faq_item.tpl" faq_id="5" 
            faq_question="What is the web address of my Piwigo?" 
            faq_answer="By default, your address will be 'example.piwigo.com'. You can also use your own custom domain name with all our plans."}

        {include file="template/include/card/faq_item.tpl" faq_id="6" 
            faq_question="I already have a Piwigo on my server, can I transfer it to Piwigo.com?" 
            faq_answer="Yes, we can help you migrate your data (photos and database) from a self-hosted installation to our cloud service."}
        {include file="template/include/card/faq_item.tpl" faq_id="7" 
            faq_question="What level of service is included in the subscriptions?" 
            faq_answer="All plans include high-availability hosting, automatic backups, regular updates, and professional support via our ticketing system."}

        {include file="template/include/card/faq_item.tpl" faq_id="8" 
            faq_question="Which payment methods do you accept?" 
            faq_answer="We accept major credit cards (Visa, Mastercard, Amex), PayPal, and bank transfers for annual subscriptions."}

        {include file="template/include/card/faq_item.tpl" faq_id="9" 
            faq_question="Is subscription renewal automatic?" 
            faq_answer="Yes, subscriptions renew automatically to ensure service continuity, but you can disable this option at any time from your administration panel."}

        {include file="template/include/card/faq_item.tpl" faq_id="10" 
            faq_question="What is the difference between an administrator, a user and a contributor?" 
            faq_answer="Administrators manage the configuration; Users can view private albums; Contributors can upload and manage their own photos."}

        {include file="template/include/card/faq_item.tpl" faq_id="11" 
            faq_question="What is a plugin? Which plugins are available in each plan?" 
            faq_answer="Plugins are extensions that add features to Piwigo. Most community plugins are available on all plans to customize your gallery."}

        {include file="template/include/card/faq_item.tpl" faq_id="12" 
            faq_question="How do I get my data back if I decide to stop using Piwigo?" 
            faq_answer="Your data belongs to you. You can export your photos via FTP and your database at any time if you wish to leave our service."}
    </div>
</section>

<script src="{$PORG_ROOT_URL}js/pricing_switch.js"></script>
<script src="{$PORG_ROOT_URL}js/compare_toggle.js"></script>