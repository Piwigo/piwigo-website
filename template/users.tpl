<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/users.css">

<section class="container container-toppage">
  <div class="row text-center justify-content-center">
    <div class="col-md-10 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-6 d-flex flex-column justify-content-center users-header-text">
          <h2 class="mb-4">{'porg_users_title'|translate}</h2>
          <img src="{$PORG_ROOT_URL}images/users/topimg.webp" alt="Piwigo screenshot" class="img-fluid d-md-none">
          <p class="mb-4">{'porg_users_intro'|translate}</p>
          {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label={'Start your 30-day free trial'|translate} href="{$PORG_ROOT}{$URL.signup}" class="px-4 align-self-start"}
        </div>
        <div class="col-md-6 responsive-image d-flex flex-column justify-content-center users-header-image">
          <img class="img-fluid d-none d-md-block" src="{$PORG_ROOT_URL}images/users/topimg.webp" alt="Piwigo screenshot">
        </div>
      </div>
    </div>
  </div>
</section>

<section class="users-page container">
  <div class="users-page-examples row">

    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-12 col-xs-12 sticky-top align-self-start">
      <div class="filter-container">
        <div class="filter-header mb-3 d-flex justify-content-between align-items-center">
          <h4 class="m-0">{"porg_users_filter"|translate}</h4>
          <h4 class="clear-btn m-0" id="clear-filters" onclick="clearFilters()">
            {"Clear all"|translate}
          </h4>
        </div>

        <div class="filters mt-4">

          <div class="filter-section">
            <a class="filter-title" onclick="toggleFilter('filter-display')">
              <span>{"porg_users_display"|translate}</span>
              <i class="icon-down-open"></i>
            </a>
            <div id="filter-display">
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="example" value="example" onclick="filterExamples('example')" />
                <label for="example">{"porg_users_examples"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="testimonial" value="testimonial" onclick="filterExamples('testimonial')" />
                <label for="testimonial">{"porg_users_testimonials"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="logo" value="logo" onclick="filterExamples('logo')" />
                <label for="logo">{"porg_users_logos"|translate}</label>
              </div>
            </div>
          </div>

          <div class="filter-section">
            <a class="filter-title" onclick="toggleFilter('filter-users')">
              <span>{"porg_users_use_cases"|translate}</span>
              <i class="icon-down-open"></i>
            </a>
            <div id="filter-users">
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="company" value="company" class="filter-btn" onclick="filterExamples('company')" />
                <label for="company">{"Company"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="education" value="education" class="filter-btn" onclick="filterExamples('education')" />
                <label for="education">{"Education & Research"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="tourism" value="tourism" class="filter-btn" onclick="filterExamples('tourism')" />
                <label for="tourism">{"Travel & Tourism"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="association" value="association" class="filter-btn" onclick="filterExamples('association')" />
                <label for="association">{"Nonprofits"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="perso" value="perso" class="filter-btn" onclick="filterExamples('perso')" />
                <label for="perso">{"Photographers & individuals"|translate}</label>
              </div>
              <div class="checkbox my-2">
                <span class="checkmark"></span>
                <input type="checkbox" id="public" value="public" class="filter-btn" onclick="filterExamples('public')" />
                <label for="public">{"Public Sector"|translate}</label>
              </div>
            </div>
          </div>

          <div class="filter-section">
            <a class="filter-title" onclick="toggleFilter('filter-country')">
              <span>{"porg_users_country"|translate}</span>
              <i class="icon-down-open"></i>
            </a>
            <div id="filter-country">
              <div class="my-2">
                <select id="country" class="w-100">
                  <option value="all">{"porg_users_all_countries"|translate}</option>
                  {foreach $countries as $country}
                    <option value="{$country.code}">{"country_{$country.code}"|translate}</option>
                  {/foreach}
                </select>
              </div>
            </div>
          </div>
        </div>
        {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'Send us a testimonial'|translate}
        href="{$PORG_ROOT}{$URL.contact}&topic_id=testimonial#form" class="w-100 mt-4"}
      </div>
    </div>

    <div class="col-xl-9 col-lg-9 col-md-8 col-sm-12 col-xs-12 " id="our-users">

      <div id="noMatches" class="d-none h-100">

        <div class="d-flex justify-content-center align-items-center h-100">
          <h4 class="text-center m-0">{'porg_users_no_match'|translate}</h4>
        </div>
      </div>

      <div class="mb-5 w-100">
        <div id="users" class="mb-5 w-100">

          {foreach $piwigo_users as $users}
            <div data-pos="{$users.position}" class="user col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12 {if isset($users.type)}{$users.type} {/if}{if isset($users.country)}{$users.country} {/if}{if isset($users.useCase)}{$users.useCase} {/if}">
              <div class="card">
                {if $users.type == "logo" }
                  {if isset($users.url)}<a href="{$users.url}" target="blank">{/if}
                    <img class="card-img-top w-100" src="{$users.img_src}">
                    {if isset($users.url)}</a>{/if}
                {else if $users.type == "example"}
                  <img class="card-img-top" src="{$users.img_src}">
                  <div class="">
                    <div class="col-12">
                      {if isset($users.useCase)}<p class="sector-testimonial d-inline-block pe-2 mb-0">{"porg_users_{$users.useCase}"|translate}</p>{/if}
                      {if isset($users.country)}<p class="d-inline-block country-testimonial"><span class="flag-icon flag-icon-{$users.country|lower} me-2"></span>{"country_{$users.country}"|translate}</p>{/if}
                    </div>
                    {if isset($users.url)}
                      <a href="{$users.url}" target='blank' class="non-decorated-text">
                        <p class="author name-testimonial">{$users.author}<i class="icon-ext1"></i></p>
                      </a>
                    {else}
                      <p class="author name-testimonial">{$users.author}</p>
                    {/if}
                    <p class="p-testimonial">{$users.comment}</p>
                  </div>
                {else if $users.type == "testimonial"}
                  <div class="">
                    <i class="icon-quote quote-testimonial"></i>
                    <p class="p-testimonial mb-3">{$users.comment}</p>
                    <div class="col-12">
                      {if isset($users.useCase)}<p class="sector-testimonial d-inline-block pe-2 mb-0">{"porg_users_{$users.useCase}"|translate}</p>{/if}
                      {if isset($users.country)}<p class="d-inline-block country-testimonial"><span class="flag-icon flag-icon-{$users.country|lower} me-2"></span>{"country_{$users.country}"|translate}</p>{/if}
                    </div>
                    {if isset($users.url)}
                      <a href="{$users.url}" target='blank' class="non-decorated-text">
                        <p class="author name-testimonial mb-0">{$users.author}<i class="icon-ext1"></i></p>
                      </a>
                    {else}
                      <p class="author name-testimonial mb-0">{$users.author}</p>
                    {/if}
                  </div>
                {/if}
              </div>
            </div>
          {/foreach}
        </div>
      </div>
      <div id="usersNotVisible" class="mb-5 w-100">
      </div>
    </div>

  </div>
</section>

<script src="{$PORG_ROOT_URL_PLUGINS}js/users.js"></script>
{literal}
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      // This script checks for a 'use_case' URL parameter and applies the corresponding filter on page load.
      const urlParams = new URLSearchParams(window.location.search);
      const useCase = urlParams.get('use_case');

      if (useCase) {
        const checkbox = document.getElementById(useCase);
        if (checkbox && typeof filterExamples === 'function') {
          checkbox.click();
        }
      }
    });
  </script>
{/literal}