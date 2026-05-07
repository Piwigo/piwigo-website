<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/use_cases.css">
<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/card/get_started.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/use_cases.js"></script>

<div id="use-cases-content" class="use-cases-content">
  <div class="use-case-section is-active" data-use-case-section="travel-tourism">
    {include file='template/use_cases/travel-tourism.tpl'}
  </div>
  <div class="use-case-section" data-use-case-section="public-sector">
    {include file='template/use_cases/public-sector.tpl'}
  </div>
  <div class="use-case-section" data-use-case-section="companies">
    {include file='template/use_cases/companies.tpl'}
  </div>
  <div class="use-case-section" data-use-case-section="education-research">
    {include file='template/use_cases/education-research.tpl'}
  </div>
  <div class="use-case-section" data-use-case-section="nonprofits">
    {include file='template/use_cases/nonprofits.tpl'}
  </div>
  <div class="use-case-section" data-use-case-section="photographers-individuals">
    {include file='template/use_cases/photographers-individuals.tpl'}
  </div>
</div>


{include file="template/include/card/get_started_cta.tpl" }