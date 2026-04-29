<section class="storage-section container">
    <div class="storage-header text-center">
        <h2 class="storage-title text-center">{'storage big title'|translate}</h2>
        <p class="storage-subtitle text-center">
            {'storage big description'|translate}
        </p>
    </div>

    <div class="row row-cols-1 row-cols-md-3 row-cols-lg-5 g-0 storage-grid">
        {assign
            var="storage_options_big"
            value=[
                ['gb' => '50', 'price' => '5'],
                ['gb' => '100', 'price' => '10'],
                ['gb' => '250', 'price' => '25'],
                ['gb' => '500', 'price' => '50'],
                ['gb' => '1000', 'price' => '100']
            ]
        }

        {foreach from=$storage_options_big item=option name=storage_loop}
            <div class="col storage-divider">
                <div class="storage-item-container">
                    {include file="template/include/card/storage_card.tpl" storage_gb=$option.gb price=$option.price}
                </div>
            </div>
        {/foreach}
    </div>
</section>

<div class="storage-download-container text-center">
    {include
        file='template/include/buttons/button.tpl'
        variant='menu_btn_white'
        label={'Download our prices as a PDF'|translate} 
    }
</div>

<section class="compare_table_container container">
    <div class="compare_table_toggle text-center" ">
        <button class=" compare_table_btn" id="compareTableBtn">
        {'compare table toggle'|translate}
        <i class="icon-down-open" id="compareIcon"></i>
        </button>
    </div>

    <div class="compare_table_display" id="compareTableDisplay">
        {include file='template/include/card/compare_plan_table.tpl'}
    </div>
</section>

<section class="faq_pricing_container container">
    <div class="faq_pricing_header">
        <h3 class="faq_pricing_title text-center">{'faq pricing title'|translate}</h2>
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