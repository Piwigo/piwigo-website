<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/footer.css">

<footer class="site-footer">
  <div class="container">
    <div class="row g-4">

      <!-- ── Col 1 : Brand + tagline ── -->
      <div class="col-12 col-md-6 col-lg-2 footer-brand">
        <div class="footer-logo">
          <img src="{$PORG_ROOT_URL}images/piwigo.org.svg" alt="Piwigo logo">
        </div>
        <p class="p-footer footer-tagline">
          {'Footer Piwigo description'|translate}
        </p>
      </div>

      <!-- ── Col 2 : Get started box ── -->
      <div class="col-12 col-md-6 col-lg-2 footer-get-started-col">
        <div class="footer-get-started">
          <h6 class="footer-title">{'Get started'|translate}</h6>
          <div class="footer-get-started-content">
            <ul class="footer-get-started-links">
              <li><a class="footer-feature-link" href="{$PORG_ROOT}{$URL.product}#cloud">{'Cloud'|translate}</a></li>
              <li><a class="footer-feature-link" href="{$PORG_ROOT}{$URL.product}#self-hosted">{'Self hosting'|translate}</a></li>
              <li><a class="footer-feature-link" href="{$PORG_ROOT}{$URL.pricing}">{'Pricing'|translate}</a></li>
            </ul>
            <div class="footer-get-started-actions">
              {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Footer Button 1 Plan a demo'|translate}
              href="#"}
              {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label={'Contact us'|translate}
              href="{$PORG_ROOT}{$URL.contact}"}
            </div>
          </div>
        </div>
      </div>

      <!-- ── Mobile nav accordion ── -->
      <div class="col-12 d-lg-none footer-mobile-nav">
        <div class="footer-mobile-nav-accordion">
          <div class="footer-mobile-section">
            <button class="footer-mobile-toggle footer-title collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#footerMobileDiscover" aria-expanded="false" aria-controls="footerMobileDiscover">
              <span>{'Discover Piwigo'|translate}</span>
              <i class="icon-down-open" aria-hidden="true"></i>
            </button>
            <div id="footerMobileDiscover" class="collapse footer-mobile-collapse" data-bs-parent=".footer-mobile-nav-accordion">
              <ul>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#upload">{'Import & Centralize'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#organize">{'Organize your media'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#search">{'Search & Find'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#share">{'Share & Collaborate'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#customize">{'Customize & Extend'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#measure">{'Measure & Monitor'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#security">{'Security & privacy'|translate}</a></li>
              </ul>
              <ul class="mt-3">
                {* <li><a class="footer-feature-link footer-menu-item" href="#">{'Piwigo AI'|translate|cat: ' ✨'}</a></li> *}
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.mobile_applications}">{'Mobile apps'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="#">{'Extensions'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="#">{'API & Integrations'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.demo}">{'Live demos'|translate}</a></li>
              </ul>
            </div>
          </div>

          <div class="footer-mobile-section">
            <button class="footer-mobile-toggle footer-title collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#footerMobileUseCases" aria-expanded="false" aria-controls="footerMobileUseCases">
              <span>{'Use cases'|translate}</span>
              <i class="icon-down-open" aria-hidden="true"></i>
            </button>
            <div id="footerMobileUseCases" class="collapse footer-mobile-collapse" data-bs-parent=".footer-mobile-nav-accordion">
              <ul>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_travel_tourism}">{'Travel & Tourism'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_public_sector}">{'Public Sector'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_companies}">{'Companies'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_education_research}">{'Education & Research'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_nonprofits}">{'Nonprofits'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_photographers_individuals}">{'Photographers & Individuals'|translate}</a></li>
              </ul>
              <div class="footer-users-btn">
                {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'Footer Button 3 Meet our users'|translate}
                href="{$PORG_ROOT}{$URL.users}"}
              </div>
            </div>
          </div>

          <div class="footer-mobile-section">
            <button class="footer-mobile-toggle footer-title collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#footerMobileBehindCode" aria-expanded="false" aria-controls="footerMobileBehindCode">
              <span>{'Behind the code'|translate}</span>
              <i class="icon-down-open" aria-hidden="true"></i>
            </button>
            <div id="footerMobileBehindCode" class="collapse footer-mobile-collapse" data-bs-parent=".footer-mobile-nav-accordion">
              <ul>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.about_us}">{'About Piwigo'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="#">{'Contribute'|translate}</a></li>
              </ul>
            </div>
          </div>

          <div class="footer-mobile-section">
            <button class="footer-mobile-toggle footer-title collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#footerMobileSupport" aria-expanded="false" aria-controls="footerMobileSupport">
              <span>{'Support'|translate}</span>
              <i class="icon-down-open" aria-hidden="true"></i>
            </button>
            <div id="footerMobileSupport" class="collapse footer-mobile-collapse" data-bs-parent=".footer-mobile-nav-accordion">
              <ul>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.pro_support}">{'Professional support'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="https://piwigo.org/forum" target="_blank" rel="noopener noreferrer">{'Community forum'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$DOCUMENTATION_URL}" target="_blank" rel="noopener noreferrer">{'Documentation'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="#">{'Installation guides'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="#">{'Developer resources'|translate}</a></li>
              </ul>
            </div>
          </div>

          <div class="footer-mobile-section">
            <button class="footer-mobile-toggle footer-title collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#footerMobileNews" aria-expanded="false" aria-controls="footerMobileNews">
              <span>{'News'|translate}</span>
              <i class="icon-down-open" aria-hidden="true"></i>
            </button>
            <div id="footerMobileNews" class="collapse footer-mobile-collapse" data-bs-parent=".footer-mobile-nav-accordion">
              <ul>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.news}">{'Latest news'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="https://piwigo.com/blog/">{'Blog'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.newsletters}">{'Newsletter'|translate}</a></li>
                <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.product_update}">{'Product updates'|translate}</a></li>
              </ul>
            </div>
          </div>
        </div>

        <div class="footer-subscribe-btn">
          {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'Footer Button 4 Subscribe to newsletter'|translate}
          href="{$PORG_ROOT}{$URL.newsletters}"}
        </div>
      </div>

      <!-- ── Col 3 : Discover Piwigo ── -->
      <div class="col-6 col-md-4 col-lg-2 footer-nav-col d-none d-lg-block">
        <h6 class="footer-title">{'Discover Piwigo'|translate}</h6>
        <ul>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#upload">{'Import & Centralize'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#organize">{'Organize your media'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#search">{'Search & Find'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#share">{'Share & Collaborate'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#customize">{'Customize & Extend'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#measure">{'Measure & Monitor'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.features}#security">{'Security & privacy'|translate}</a></li>
        </ul>
        <ul class="mt-4">
          <li>
            {* <a class="footer-feature-link footer-menu-item" href="#">{'Piwigo AI'|translate|cat: ' ✨'}</a> *}
          </li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.mobile_applications}">{'Mobile apps'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="#">{'Extensions'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="#">{'API & Integrations'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.demo}">{'Live demos'|translate}</a></li>
        </ul>
      </div>

      <!-- ── Col 4 : Use cases ── -->
      <div class="col-6 col-md-4 col-lg-2 footer-nav-col d-none d-lg-block">
        <h6 class="footer-title">{'Use cases'|translate}</h6>
        <ul>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_travel_tourism}">{'Travel & Tourism'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_public_sector}">{'Public Sector'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_companies}">{'Companies'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_education_research}">{'Education & Research'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_nonprofits}">{'Nonprofits'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.use_case_photographers_individuals}">{'Photographers & Individuals'|translate}</a></li>
        </ul>
        <div class="footer-users-btn">
          {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'Footer Button 3 Meet our users'|translate}
          href="{$PORG_ROOT}{$URL.users}"}
        </div>
      </div>

      <!-- ── Col 5 : Behind the code + Support ── -->
      <div class="col-6 col-md-4 col-lg-2 footer-nav-col d-none d-lg-block">
        <h6 class="footer-title">{'Behind the code'|translate}</h6>
        <ul>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.about_us}">{'About Piwigo'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="#">{'Contribute'|translate}</a></li>
        </ul>

        <h6 class="footer-title mt-4">{'Support'|translate}</h6>
        <ul>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.pro_support}">{'Professional support'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="https://piwigo.org/forum" target="_blank" rel="noopener noreferrer">{'Community forum'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$DOCUMENTATION_URL}" target="_blank" rel="noopener noreferrer">{'Documentation'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="#">{'Installation guides'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="#">{'Developer resources'|translate}</a></li>
        </ul>
      </div>

      <!-- ── Col 6 : News ── -->
      <div class="col-6 col-md-4 col-lg-2 footer-nav-col d-none d-lg-block">
        <h6 class="footer-title">{'News'|translate}</h6>
        <ul>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.news}">{'Latest news'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="https://piwigo.com/blog/">{'Blog'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.newsletters}">{'Newsletter'|translate}</a></li>
          <li><a class="footer-feature-link footer-menu-item" href="{$PORG_ROOT}{$URL.product_update}">{'Product updates'|translate}</a></li>
        </ul>
        <div class="footer-subscribe-btn">
          {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'Footer Button 4 Subscribe to newsletter'|translate}
          href="{$PORG_ROOT}{$URL.newsletters}"}
        </div>
      </div>

    </div><!-- /row -->
  </div><!-- /container -->

  <hr class="footer-divider-desktop">

  <!-- ── Bottom bar ── -->
  <div class="footer-bottom">
    <div class="container">
      <div class="footer-bottom-main d-flex flex-wrap align-items-center justify-content-between gap-3">

        <!-- Legal links -->
        <div class="footer-bottom-legal">
          <hr class="footer-divider-mobile">
          <p class="footer-menu-item footer-copyright">Piwigo © 2002 – {$CURRENT_YEAR}</p>
          <ul class="footer-legal-links">
            <li><a class="footer-legal-link footer-menu-item" href="{$PORG_ROOT}{$URL.privacy}">{'Footer legal 1 Privacy Policy'|translate}</a></li>
            {* <li><a class="footer-legal-link footer-menu-item" href="{$PORG_ROOT}{$URL.cookie_policy}">{'Footer legal 2 Cookie Policy'|translate}</a></li>
            <li><a class="footer-legal-link footer-menu-item" href="{$PORG_ROOT}{$URL.legal_notice}">{'Footer legal 3 Legal Notice'|translate}</a></li> *}
            <li><a class="footer-legal-link footer-menu-item" href="{$PORG_ROOT}{$URL.terms_of_service}">{'Footer legal 4 Terms of Use'|translate}</a></li>
            {* <li><a class="footer-legal-link footer-menu-item" href="{$PORG_ROOT}{$URL.gdpr}">{'Footer legal 5 GDPR'|translate}</a></li> *}
            <li><a class="footer-legal-link footer-menu-item" href="{$PORG_ROOT}{$URL.dpa}">{'Footer legal 6 DPA'|translate}</a></li>
          </ul>
        </div>

        <!-- Right side: Login + social -->
        <div class="d-flex align-items-center gap-3 footer-bottom-actions">
          <div class="footer-login-btn">
            {include file='template/include/buttons/button.tpl' variant='menu_btn_white' label={'Login'|translate}
            href="{$PORG_URL}{$URL.signin}"}
          </div>

          <div class="footer-social-icons">
            <a href="https://github.com/Piwigo" class="footer-social-icon footer-social-icon-git" aria-label="GitHub" target="_blank" rel="noopener noreferrer"><i class="icon-git" aria-hidden="true"></i></a>
            <a href="https://www.linkedin.com/company/piwigo" class="footer-social-icon footer-social-icon-linkedin" aria-label="LinkedIn" target="_blank" rel="noopener noreferrer"><i
                class="icon-linkedin" aria-hidden="true"></i></a>
            <a href="{$PORG_ROOT}{$URL.contact}" class="footer-social-icon footer-social-icon-mailint" aria-label="Contact"><i
                class="icon-mailint" aria-hidden="true"></i></a>
          </div>
        </div>

      </div>
    </div>
  </div>

</footer>
</body>

</html>