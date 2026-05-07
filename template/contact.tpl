<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/contact.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/contact.js"></script>

<section class="contact-header">
  <div class="container">
    <div class="row g-4 align-items-start">
      <div class="col-12 col-md-6">
        <div class="contact-form-split-copy">
          <h1>{'porg_contact_title'|translate}</h1>
          <p>{'porg_contact_desc1'|translate}</p>
          <p>{'porg_contact_desc2'|translate}</p>
        </div>
        <img class="contact-header-image img-fluid mt-3" src="{$PORG_ROOT_URL}images/contact/contact_hero.png"
          alt="Contact us">
      </div>

      <div class="col-12 col-md-6">

        <div id="success" class="contact-form-success">
          <div class="contact-form-success-inner">
            <div class="success-message d-flex align-items-center gap-md-3 gap-2">
              <i class="icon-ok-circled success-icon"></i>
              <span class="p-boxed">{'porg_contact_success_message'|translate}</span>
            </div>

            <p class="success-follow-label features-menu-item">{'porg_contact_success_follow'|translate}</p>

            <div class="success-buttons d-flex gap-md-4 gap-2">
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Discover our blog'|translate} href='#'}
              {include file='template/include/buttons/button.tpl' variant='cta_secondary' label={'Follow us on LinkedIn'|translate} href='#'}
            </div>
          </div>
        </div>

        <div data-toggle="validator" role="form" class="contact-form">

          <div class="form-group position-relative">
            <input type="email" class="form-control" id="form-email" name="email" placeholder=" " required>
            <span class="mail-placeholder p-boxed">{'Your email address'|translate}<span class="orange-text"> *</span></span>
            <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span class="orange-text"> *</span> <span id="emailHelp" class="error-mail-placeholder pink-text">{'porg_contact_error_message_7'|translate}</span></span>
            <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
            <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
          </div>

          <div class="form-group position-relative">
            <input type="text" class="form-control" id="form-piwigo-url" aria-describedby="urlHelp" placeholder=" ">
            <span class="piwigo-url-placeholder p-boxed">{'Your Piwigo url 1'|translate}</span>
            <span class="little-piwigo-url-placeholder form-input">{'Your Piwigo url 2'|translate}
              {* <span id="urlHelp" class="pink-text">{'porg_contact_error_message_9'|translate}</span> *}</span>
          </div>

          <div class="form-group position-relative">
            <textarea class="form-control" id="form-message" rows="8" placeholder=" " required></textarea>
            <span class="your-message-placeholder p-boxed">{'Your message 1'|translate}<span class="orange-text"> *</span></span>
            <span class="little-your-message-placeholder form-input">{'Your message 2'|translate}<span class="orange-text"> *</span></span>
          </div>

          <div>
            <input type="hidden" id="form-key" name="key" value="{$EPHEMERAL_KEY}">
          </div>

          <div>
            <label class="ohnohoney" for="email"></label>
            <input class="ohnohoney" autocomplete="off" type="email" id="email" name="email">
          </div>

          <div class="text-end d-flex justify-content-between gap-3">
            <div id="error" style="display:none;">
              <p class="error_message d-flex align-items-center gap-2 pink-text mb-0">
                {'porg_contact_error_message_1'|translate}
              </p>
            </div>

            <button type="submit" id="form-submit"
              class="btn-menu menu-btn-green ms-auto"><span>{'Send message'|translate}</span></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="contact-content">
  <div class="container-fluid px-0">
    <div class="container text-center mb-md-5 mb-3">
      <h2 class="h2-top-page text-center">{'Satisfyed users across the world'|translate}</h2>
    </div>

    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $home_logos as $logo}
          <div class="logos-marquee-item">
            <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $home_logos as $logo}
          <div class="logos-marquee-item">
            <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</section>