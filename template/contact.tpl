<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/contact.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/contact.js"></script>

<section class="contact-header">
  <div class="container justify-content-center d-flex">
    <div class="col-md-5 text-center">
      <h1 class="mb-4 text-center">{'porg_contact_title'|translate}</h1>
      <p class="text-center">{'porg_contact_desc'|translate}</p>
    </div>
  </div>
</section>

<section class="contact-project">
  <div class="container justify-content-center d-flex">
    <div class="col-md-6 justify-content-center align-items-center px-4 ps-0 d-none d-md-flex">
      <img class="contact-header-image img-fluid" src="{$PORG_ROOT_URL}images/contact/contact_hero.webp" alt="Contact us">
    </div>
    <div class="col-md-6 justify-content-center px-md-3">
      <h2 class="mb-4 h2-top-page text-center text-md-start">{'porg_contact_project_title'|translate}</h2>
      <img class="mb-4 contact-header-image img-fluid d-block d-md-none" src="{$PORG_ROOT_URL}images/contact/contact_hero.webp" alt="Contact us">
      <p class="mb-4">{'porg_contact_project_desc'|translate}</p>
      <div class="d-flex gap-3">
        {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_contact_project_btn1'|translate} href='#'}
        {include file='template/include/buttons/button.tpl' variant='cta_secondary' label={'porg_contact_project_btn2'|translate} href='#'}
      </div>
    </div>
  </div>
</section>

<section class="contact-cards justify-content-center d-flex">
  <div class="container justify-content-center d-flex row">
    <div class="col-md-6 pe-md-4 mt-4 pt-2">
      <div class="contact-card h-100 d-flex flex-column justify-content-center align-items-center">
        <span class="icon-wrapper pink-bg">
          <i class="icon-help pink-text"></i>
        </span>
        <h2 class="h2-top-page text-center mb-0">{'porg_contact_pink_title'|translate}</h2>
        <p class="text-center mb-0">{'porg_contact_pink_desc'|translate}</p>
      </div>
    </div>
    <div class="col-md-6 ps-md-4 mt-4 pt-2">
      <div class="contact-card h-100 d-flex flex-column justify-content-center align-items-center">
        <span class="icon-wrapper orange-bg">
          <i class="icon-doc orange-text"></i>
        </span>
        <h2 class="h2-top-page text-center mb-0">{'porg_contact_orange_title'|translate}</h2>
        <p class="text-center mb-0">{'porg_contact_orange_desc'|translate}</p>
        {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_contact_orange_btn'|translate} href='#'}
      </div>
    </div>
    <div class="col-md-12 mt-4 pt-2">
      <div class="contact-card d-flex flex-column justify-content-center align-items-center">
        <span class="icon-wrapper green-bg">
          <i class="icon-icon28 green-text"></i>
        </span>
        <h2 class="h2-top-page text-center mb-0">{'porg_contact_green_title'|translate}</h2>
        <p class="text-center mb-0">{'porg_contact_green_desc'|translate}</p>
        {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_contact_green_btn'|translate} href='#'}
      </div>
    </div>
  </div>
</section>



<section class="contact-cards justify-content-center d-flex">
  <div class="container justify-content-center d-flex row">
    <div class="col-12 col-md-9 col-xl-6">

      <h2 class="text-center mb-alot">{'porg_contact_form_title'|translate}</h2>

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
          <select class="form-control" id="form-topic" name="topic" required>
            <option value="" selected></option>
            <option value="Press inquiry">{'Press inquiry'|translate}</option>
            <option value="Partnership">{'Partnership'|translate}</option>
            <option value="Security report">{'Security report'|translate}</option>
            <option value="Beta testing">{'Beta testing'|translate}</option>
            <option value="Testimonials">{'Testimonials'|translate}</option>
          </select>
          <span class="topic-placeholder p-boxed">{'Topic'|translate}<span class="orange-text"> *</span></span>
          <span class="little-topic-placeholder form-input">{'Topic'|translate}<span class="orange-text"> *</span></span>
          <i class="icon-down-open topic-arrow" aria-hidden="true"></i>
        </div>

        <div class="form-group position-relative">
          <input type="email" class="form-control" id="form-email" name="email" placeholder=" " required>
          <span class="mail-placeholder p-boxed">{'Your email address'|translate}<span class="orange-text"> *</span></span>
          <span class="mail-example-placeholder p-boxed">{'email example'|translate}</span>
          <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span class="orange-text"> *</span> <span id="emailHelp" class="error-mail-placeholder pink-text">{'porg_contact_error_message_7'|translate}</span></span>
          <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
          <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
        </div>

        <div class="form-group position-relative">
          <input type="text" class="form-control" id="form-piwigo-url" aria-describedby="urlHelp" placeholder=" ">
          <span class="piwigo-url-placeholder p-boxed">{'Your Piwigo url 1'|translate}</span>
          <span class="piwigo-url-example-placeholder p-boxed">{'Piwigo url example'|translate}</span>
          <span class="little-piwigo-url-placeholder form-input">{'Your Piwigo url 2'|translate}</span>
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
</section>


<section class="contact-content">
  <div class="container-fluid px-0">
    <div class="container text-center mb-md-5 mb-3">
      <h2 class="h2-top-page text-center">{'Trusted by organizations worldwide'|translate}</h2>
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


{* 
<section class="contact-header">
  <div class="container">
    <div class="row g-4 align-items-start">
      <div class="col-12 col-md-6">
        <div class="contact-form-split-copy">
          <h1>{'porg_contact_title'|translate}</h1>
          <p>{'porg_contact_desc1'|translate}</p>
          <p>{'porg_contact_desc2'|translate}</p>
        </div>
        <img class="contact-header-image img-fluid mt-3" src="{$PORG_ROOT_URL}images/contact/contact_hero.webp"
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
            <span class="mail-example-placeholder p-boxed">{'email example'|translate}</span>
            <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span class="orange-text"> *</span> <span id="emailHelp" class="error-mail-placeholder pink-text">{'porg_contact_error_message_7'|translate}</span></span>
            <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
            <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
          </div>

          <div class="form-group position-relative">
            <input type="text" class="form-control" id="form-piwigo-url" aria-describedby="urlHelp" placeholder=" ">
            <span class="piwigo-url-placeholder p-boxed">{'Your Piwigo url 1'|translate}</span>
            <span class="piwigo-url-example-placeholder p-boxed">{'Piwigo url example'|translate}</span>
            <span class="little-piwigo-url-placeholder form-input">{'Your Piwigo url 2'|translate}</span>
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
</section> *}