<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/newsletters.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/newsletter_card.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/newsletters.js"></script>

<section class="container-fluide newsletter-header">
  <div class="container">
    <div class="row align-items-top">
      <div class="col-12 col-md-5 newsletter-header-text">
        <h1>{'porg_newsletters_header_title'|translate}</h1>
        <p>{'porg_newsletters_desc'|translate}</p>
      </div>
      <div class="col-12 col-md-1">
      </div>
      <div class="col-12 col-md-6">

        <div id="success" class="newsletter-form-success d-none">
          <div class="newsletter-form-success-inner">
            <h3 class="newsletter-form-success-title dark-green-text">{'porg_newsletter_success_title'|translate}</h3>

            <p id="newsletter-success-message" class="p-boxed green-text mb-0"
              data-template="{'porg_newsletter_success_message'|translate:'__NEWSLETTER_EMAIL__'}">
              {'porg_newsletter_success_message'|translate:'__NEWSLETTER_EMAIL__'}
            </p>
          </div>
        </div>


        <div id="newsletter-form" class="newsletter-form">
          <form action="{$PORG_ROOT}announcement/subscribe.php" method="get" data-toggle="validator" role="form"
            class="form-newsletter-subscribe">

            <div class="form-group position-relative">
              <input type="email" class="form-control" id="form-email" name="email" placeholder=" " required>
              <span class="mail-placeholder p-boxed">{'Your email address 1'|translate}<span
                  class="orange-text"> *</span></span>
              <span class="mail-example-placeholder p-boxed">{'email example'|translate}</span>
              <span class="little-mail-placeholder form-input">{'Your email address 2'|translate}<span
                  class="orange-text"> *</span> <span id="emailHelp"
                  class="error-mail-placeholder pink-text">{'porg_contact_error_message_7'|translate}</span></span>
              <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
              <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
            </div>

            <div class="form-check mb-3 position-relative">
              <input class="form-check-input" type="checkbox" id="agree_rgpd" name="agree_rgpd" required />
              <label class="form-check-label p-boxed" for="agree_rgpd" title="{'because GDPR matters!'|translate}">{'RGPD agreement'|translate} <span
                  class="orange-text">*</span></label>
              <div class="invalid-feedback form-input">{'porg_news_error_rgpd'|translate}</div>
            </div>

            <div class="text-end">
              <button type="submit" id="form-submit"
                class="btn-menu menu-btn-green ms-auto"><span>{'Sign up to newsletter'|translate}</span></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container newsletter-container" style="padding: 0;">
  <div class="container mb-md-5 mb-3 mt-5">
    <h2>{'porg_newsletters_content_title'|translate}</h2>
  </div>
  <div class="container my-5">
    <div class="row g-4 newsletter-cards-grid">
      {include file='template/newsletters_articles.tpl'}
    </div>
  </div>
</section>

<section class="container-fluide">
  <div class="container">
    <div class="text-center pagination-wrapper mt-5">
      <div class="pagination-container d-flex align-items-center justify-content-center gap-4" data-total-pages="{$newsletters_total_pages}">

        <span class="fast-backward-btn">
          {include file='template/include/buttons/forward_arrow.tpl' fast=true reversed=true}
        </span>
        <span class="backward-arrow-btn">
          {include file='template/include/buttons/forward_arrow.tpl' reversed=true}
        </span>

        {for $i=1 to $newsletters_total_pages}
          <span class="page-number-wrapper" data-page="{$i}">
            {include file='template/include/buttons/page_number.tpl' label=$i is_selected=($i==1)}
          </span>
        {/for}

        <span class="forward-arrow-btn">
          {include file='template/include/buttons/forward_arrow.tpl'}
        </span>
        <span class="fast-forward-btn">
          {include file='template/include/buttons/forward_arrow.tpl' fast=true}
        </span>

      </div>
    </div>
  </div>
</section>