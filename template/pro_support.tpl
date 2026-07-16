<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/pro_support.css">

<section class="container container-toppage">
  <div class="row text-center justify-content-center">
    <div class="col-md-11 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-6 d-flex flex-column justify-content-center users-header-text">
          <h1 class="mb-4">{'porg_pro_support_header_title'|translate}</h1>
          <img src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/16/20260716100025-f41a8ce1-me.webp" alt="Piwigo screenshot" class="img-fluid d-md-none">
          <p class="mb-4">{'porg_pro_support_header_description'|translate}</p>
          {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'porg_pro_support_header_btn'|translate} href="{$PORG_ROOT}{$URL.product}" class="px-4 align-self-start"}
        </div>
        <div class="col-md-6 responsive-image d-flex flex-column justify-content-center users-header-image">
          <img class="img-fluid d-none d-md-block" src="https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8//2026/07/16/20260716100025-f41a8ce1-me.webp" alt="Piwigo screenshot">
        </div>
      </div>
    </div>
  </div>
</section>

{assign
  var='support_headers'
  value=[
    'porg_support_community_resources'|translate,
    'porg_support_professional_support'|translate
  ]
}

{assign
  var='support_sections'
  value=[
    [ 
      'title' => '', 
      'rows' => [ 
        [
          'label' => 'porg_support_row_available_to'|translate, 
          'values' => [
            'porg_support_val_everyone'|translate, 
            'porg_support_val_pro_plans'|translate
          ], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_documentation'|translate, 
          'values' => ['check', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_install_guides'|translate, 
          'values' => ['check', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_dev_resources'|translate, 
          'values' => ['check', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_email_support'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_personalized_assist'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_tailored_advice'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_migration_pwg'|translate, 
          'values' => ['-', 'check'], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_graphic_branding'|translate, 
          'values' => ['-', 'porg_support_val_optional_plans'|translate], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_migration_other'|translate, 
          'values' => ['-', 'porg_support_val_optional_plans'|translate], 
          'help' => false
        ],
        [
          'label' => 'porg_support_row_onboarding_coaching'|translate, 
          'values' => ['-', 'porg_support_val_optional_plans'|translate], 
          'help' => false
        ]
      ] 
    ]
  ]
}

<section class="container container-how">
  <div class="row text-center justify-content-center">
    <div class="col-md-9 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <h2 class="text-center">{'porg_pro_support_how_title'|translate}</h2>
        <p class="text-center mb-4">{'porg_pro_support_how_description'|translate}</p>

        <div class="compare-plans-container">
          <table class="compare-plans-table">
            <tbody>
              {foreach from=$support_sections item=section}
                <tr class="section-header">
                  <td class="section-title">{$section.title}</td>
                  {foreach from=$support_headers item=header}
                    <td class="section-plan-name">
                      <h4 class="text-center">{$header}</h4>
                    </td>
                  {/foreach}
                </tr>

                {foreach from=$section.rows item=row}
                  <tr class="feature-row">
                    <td class="feature-label">
                      <div class="label-content">
                        <span>{$row.label}</span>
                        {if $row.help}
                          <div class="pwg-tooltip" tabindex="0">
                            <i class="icon-rounded-warning bi bi-info-circle-fill"></i>
                            <span class="tooltip-text">{$row.help}</span>
                          </div>
                        {/if}
                      </div>
                    </td>
                    {foreach from=$row.values item=val}
                      <td>
                        {if $val == 'check'}
                          <i class="icon-rounded-check bi bi-check-circle-fill"></i>
                        {elseif $val == '-'}
                          <span class="value-text">-</span>
                        {else}
                          <span class="value-text">{$val}</span>
                        {/if}
                      </td>
                    {/foreach}
                  </tr>
                {/foreach}
              {/foreach}
            </tbody>
          </table>
        </div>

      </div>
    </div>
  </div>
</section>