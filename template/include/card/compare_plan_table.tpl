{assign
  var='plans_sections'
  value=[
    [ 'title' => 'pricing plan_section_usage'|translate, 'rows' => [ ['label' => 'pricing plan_row_admin'|translate, 'values' => [$PLANS.plan_pro.admins_count, $PLANS.plan_team.admins_count, $PLANS.plan_enterprise.admins_count, $PLANS.plan_vip.admins_count], 'help' => 'pricing plan_help_admin'|translate], ['label' => 'pricing plan_row_users'|translate, 'values' => ['pricing plan_unlimited'|translate, 'pricing plan_unlimited'|translate, 'pricing plan_unlimited'|translate, 'pricing plan_unlimited'|translate], 'help' => 'pricing plan_help_users'|translate], ['label' => 'pricing plan_row_contributors'|translate, 'values' => ['-', 'pricing plan_unlimited'|translate, 'pricing plan_unlimited'|translate, 'pricing plan_unlimited'|translate], 'help' => 'pricing plan_help_contributors'|translate], ['label' => 'pricing plan_row_storage'|translate, 'values' => [$PLANS.plan_pro.storage_size, $PLANS.plan_team.storage_size, $PLANS.plan_enterprise.storage_size, $PLANS.plan_vip.storage_size], 'help' => false], ['label' => 'pricing plan_row_plugins'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => 'pricing plan_help_plugins'|translate] ] ],
    [ 'title' => 'pricing plan_section_formats'|translate, 'rows' => [ ['label' => 'pricing plan_row_media'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pricing plan_help_media'|translate], ['label' => 'pricing plan_row_other_formats'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => 'pricing plan_help_other_formats'|translate] ] ],
    [ 'title' => 'pricing plan_section_custom'|translate, 'rows' => [ ['label' => 'pricing plan_row_themes'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pricing plan_row_plugin_inst'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pricing plan_row_geolo'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pricing plan_row_multilingual'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pricing plan_help_multilingual'|translate], ['label' => 'pricing plan_row_domain'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pricing plan_help_domain'|translate], ['label' => 'pricing plan_row_pages'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pricing plan_row_contact'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pricing plan_row_menu'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pricing plan_row_footer'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pricing plan_row_banner'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pricing plan_row_seo'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pricing plan_row_js'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pricing plan_row_translation'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pricing plan_row_graphic'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => {include file="template/include/card/pricing_custom_card.tpl"}] ] ],
    [ 'title' => 'pricing plan_section_statistics'|translate, 'rows' => [ ['label' => 'pricing plan_row_stat1'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pricing plan_row_stat2'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],['label' => 'pricing plan_row_stat3'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pricing plan_row_stat4'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False] ] ],
    [ 'title' => 'pricing plan_section_colab_share'|translate, 'rows' => [ ['label' => 'pricing plan_row_colab1'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pricing plan_row_colab2'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False ], ['label' => 'pricing plan_row_colab3'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pricing plan_row_colab5'|translate],['label' => 'pricing plan_row_colab4'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pricing plan_row_colab6'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],['label' => 'pricing plan_row_colab7'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],['label' => 'pricing plan_row_colab8'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => 'pricing plan_row_colab9'|translate],['label' => 'pricing plan_row_colab10'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],['label' => 'pricing plan_row_colab11'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_colab12'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => 'pricing plan_row_colab13'|translate],
        ['label' => 'pricing plan_row_colab14'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_colab15'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_colab16'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False]] ],
    [ 'title' => 'pricing plan_section_organization'|translate, 'rows' => [ 
        ['label' => 'pricing plan_row_orga1'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga2'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga3'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga4'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga5'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga6'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga7'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga8'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga9'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga10'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga11'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga12'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga13'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga14'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga15'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga16'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_orga17'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
    ] ],
    [ 'title' => 'pricing plan_section_service'|translate, 'rows' => [ 
        ['label' => 'pricing plan_row_serv1'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_serv2'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pricing plan_row_serv3'|translate],
        ['label' => 'pricing plan_row_serv4'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_serv5'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => {include file="template/include/card/pricing_custom_card.tpl"}],
        ['label' => 'pricing plan_row_serv6'|translate, 'values' => ['-', '-', 'custom pricing', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_serv7'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => 'pricing plan_row_serv8'|translate],
        ['label' => 'pricing plan_row_serv9'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_serv10'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
        ['label' => 'pricing plan_row_serv11'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
    ]]
  ]
}

<div class="compare-plans-container">
  <table class="compare-plans-table">
    <tbody>
      {foreach from=$plans_sections item=section}
        <tr class="section-header">
          <td class="section-title">{$section.title}</td>
          {foreach from=$PLANS item=plan}
            <td class="section-plan-name">
              <strong>{$plan.title}</strong>
              <small>{'pricing plan_excl_vat_month'|translate}<br>{'pricing plan_billed_annually'|translate}</small>
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
                    <span class="tooltip-text{if is_array($row.help) || $row.help|strpos:'<' !== false} tablepopover{/if}">{$row.help}</span>
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