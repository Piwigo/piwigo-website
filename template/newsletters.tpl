<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/newsletters.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/newsletter_card.css">

{literal}
  <script type="text/javascript">
    $(document).ready(function() {

      // See more newsletters (legacy)
      $('.btn-news-see-more .btn').click(function() {
        var $start = $(".newsletter-content").length;
        $.ajax({
          type: "GET",
          url: "ws.php",
          dataType: "html",
          data: {
            method: "porg.newsletters.seemore",
            start: $start,
            count: 6,
          },
          success: function(html) {
            $(".row-newsletters").append(html);
            if (($start + 6) >= $(".btn-news-see-more .btn").data("length")) {
              $(".btn-news-see-more .btn").css("display", "none");
            }
          },
        });
      });

      // Email validation
      const emailInput = jQuery('#form-email');
      const emailWarningIcon = jQuery('#emailWarningIcon');
      const emailCheckIcon = jQuery('#emailCheckIcon');
      const emailHelp = jQuery('#emailHelp');

      jQuery(emailWarningIcon).hide();
      jQuery(emailCheckIcon).hide();
      jQuery(emailHelp).hide();

      function isValidEmail(email) {
        const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return pattern.test(email);
      }

      function updateEmailValidationState(value) {
        if (value === '') {
          jQuery(emailHelp).hide();
          jQuery(emailWarningIcon).hide();
          jQuery(emailCheckIcon).hide();
          jQuery(emailInput).removeClass('is-invalid');
          return;
        }

        if (!isValidEmail(value)) {
          jQuery(emailHelp).show();
          jQuery(emailWarningIcon).show();
          jQuery(emailCheckIcon).hide();
          jQuery(emailInput).addClass('is-invalid');
          return;
        }

        jQuery(emailHelp).hide();
        jQuery(emailWarningIcon).hide();
        jQuery(emailCheckIcon).show();
        jQuery(emailInput).removeClass('is-invalid');
      }

      jQuery(emailInput).on('input', function() {
        updateEmailValidationState(jQuery(this).val().trim());
      });

      updateEmailValidationState(jQuery(emailInput).val().trim());

      // RGPD checkbox validation
      jQuery('#form-submit').on('click', function(e) {
        const checkbox = jQuery('#agree_rgpd');
        if (!checkbox.is(':checked')) {
          e.preventDefault();
          checkbox.addClass('is-invalid');
          checkbox.siblings('.invalid-feedback').show();
        } else {
          checkbox.removeClass('is-invalid');
          checkbox.siblings('.invalid-feedback').hide();
        }
      });

      jQuery('#agree_rgpd').on('change', function() {
        if (jQuery(this).is(':checked')) {
          jQuery(this).removeClass('is-invalid');
          jQuery(this).siblings('.invalid-feedback').hide();
        }
      });

      jQuery('.form-newsletter-subscribe').on('submit', function(e) {
        e.preventDefault();
        var $form = jQuery(this);
        var action = $form.attr('action');
        var data = $form.serialize();

        jQuery.ajax({
          url: action,
          method: 'GET',
          data: data,
        }).always(function() {
          jQuery('#newsletter-form').hide();
          jQuery('#success').removeClass('d-none');
        });
      });

      // Pagination
      const itemsPerPage = 12;
      const allCards = jQuery('.newsletter-card-col');
      const totalPages = Math.ceil(allCards.length / itemsPerPage);
      let currentPage = 1;

      function showPage(pageNum) {
        const start = (pageNum - 1) * itemsPerPage;
        const end = start + itemsPerPage;

        allCards.hide();
        allCards.slice(start, end).show();

        currentPage = pageNum;
        generatePagination();
      }

      function generatePagination() {
        // Show/hide arrows based on current page
        jQuery('.fast-backward-btn, .backward-arrow-btn').toggle(currentPage > 1);
        jQuery('.fast-forward-btn, .forward-arrow-btn').toggle(currentPage < totalPages);

        // Determine which 3 page numbers to show
        let startPage, endPage;
        if (totalPages <= 3) {
          startPage = 1;
          endPage = totalPages;
        } else if (currentPage <= 2) {
          startPage = 1;
          endPage = 3;
        } else if (currentPage >= totalPages - 1) {
          startPage = totalPages - 2;
          endPage = totalPages;
        } else {
          startPage = currentPage - 1;
          endPage = currentPage + 1;
        }

        // Hide all page numbers then show the relevant ones
        jQuery('.page-number-wrapper').hide();

        for (let i = startPage; i <= endPage; i++) {
          const wrapper = jQuery('.page-number-wrapper[data-page="' + i + '"]');
          wrapper.show();

          const btn = wrapper.find('a');
          if (i === currentPage) {
            btn.addClass('selected_number');
          } else {
            btn.removeClass('selected_number');
          }
        }
      }

      jQuery(document).on('click', '.page-number-wrapper a', function(e) {
        e.preventDefault();
        const page = parseInt(jQuery(this).closest('.page-number-wrapper').data('page'));
        showPage(page);
      });

      jQuery(document).on('click', '.forward-arrow-btn', function(e) {
        e.preventDefault();
        if (currentPage < totalPages) showPage(currentPage + 1);
      });

      jQuery(document).on('click', '.backward-arrow-btn', function(e) {
        e.preventDefault();
        if (currentPage > 1) showPage(currentPage - 1);
      });

      jQuery(document).on('click', '.fast-forward-btn', function(e) {
        e.preventDefault();
        showPage(totalPages);
      });

      jQuery(document).on('click', '.fast-backward-btn', function(e) {
        e.preventDefault();
        showPage(1);
      });

      // Initialize
      generatePagination();
      showPage(1);

    });
  </script>
{/literal}

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

        <div id="success" class="newsletter-form-success d-none" >
          <div class="newsletter-form-success-inner">
            <h3 class="newsletter-form-success-title dark-green-text">{'porg_newsletter_success_title'|translate}</h3>

            <p class="p-boxed green-text mb-0">{'porg_newsletter_success_message'|translate}</p>
          </div>
        </div>


        <div id="newsletter-form" class="newsletter-form">
          <form action="{$PORG_ROOT}announcement/subscribe.php" method="get" data-toggle="validator" role="form"
            class="form-newsletter-subscribe">

            <div class="form-group position-relative">
              <input type="email" class="form-control" id="form-email" name="email" placeholder=" " required>
              <span class="mail-placeholder p-boxed">{'Your email address'|translate}<span
                  class="orange-text">*</span></span>
              <span class="little-mail-placeholder form-input">{'Your email address'|translate}<span
                  class="orange-text">*</span> <span id="emailHelp"
                  class="error-mail-placeholder pink-text">{'porg_contact_error_message_7'|translate}</span></span>
              <i id="emailWarningIcon" class="icon-rounded-warning" aria-hidden="true"></i>
              <i id="emailCheckIcon" class="icon-rounded-check" aria-hidden="true"></i>
            </div>

            <div class="form-check mb-3 position-relative">
              <input class="form-check-input" type="checkbox" id="agree_rgpd" name="agree_rgpd" required />
              <label class="form-check-label p-boxed" for="agree_rgpd">{'RGPD agreement'|translate} <span
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

<section class="container newsletter-container">
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
      <div class="pagination-container d-flex align-items-center justify-content-center gap-4">

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