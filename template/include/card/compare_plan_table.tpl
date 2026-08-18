
{capture assign="admin_help_text"}
{'pcom_pricing_page_administrators_details'|translate}{'pcom_pricing_page_administrators_details_1'|translate}
{/capture}

{assign
  var='plans_sections'
  value=[
    [ 'title' => 'pcom_pricing_page_usage'|translate, 'rows' => [ ['label' => 'pcom_pricing_page_administrators'|translate, 'values' => [$PLANS.plan_pro.admins_count, $PLANS.plan_team.admins_count, $PLANS.plan_enterprise.admins_count, $PLANS.plan_vip.admins_count], 'help' => $admin_help_text], ['label' => 'pcom_pricing_page_users'|translate, 'values' => ['pcom_pricing_page_unlimited'|translate, 'pcom_pricing_page_unlimited'|translate, 'pcom_pricing_page_unlimited'|translate, 'pcom_pricing_page_unlimited'|translate], 'help' => 'pcom_pricing_page_users_details'|translate], ['label' => 'pcom_pricing_page_contributors'|translate, 'values' => ['-', 'pcom_pricing_page_unlimited'|translate, 'pcom_pricing_page_unlimited'|translate, 'pcom_pricing_page_unlimited'|translate], 'help' => 'pcom_pricing_page_contributors_details'|translate], ['label' => 'pcom_pricing_page_storage'|translate, 'values' => [$PLANS.plan_pro.storage_size, $PLANS.plan_team.storage_size, $PLANS.plan_enterprise.storage_size, $PLANS.plan_vip.storage_size], 'help' => false], ['label' => 'pcom_pricing_page_unlimited_plugins'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => 'pcom_pricing_page_unlimited_plugins_details'|translate] ] ],
    [ 'title' => 'pcom_pricing_page_supported_file'|translate, 'rows' => [ ['label' => 'pcom_pricing_page_image_video_audio'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'image_formats'|translate], ['label' => 'pcom_pricing_page_other_file'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => 'other_formats'|translate] ] ],
    [ 'title' => 'pcom_pricing_page_customization'|translate, 'rows' => [ ['label' => 'pcom_pricing_page_customization_details'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pcom_pricing_page_plugin_installation'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pcom_pricing_page_geolocation'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pcom_pricing_page_multilingual'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pcom_pricing_page_multilingual_details'|translate], ['label' => 'pcom_pricing_page_custom_domain'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pcom_pricing_page_custom_domain_details'|translate], ['label' => 'pcom_pricing_page_custom_pages'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pcom_pricing_page_contact_form'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pcom_pricing_page_menu_customization'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pcom_pricing_page_personal_pro_details_6'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pcom_pricing_page_custom_banner'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pcom_pricing_page_seo'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false],['label' => 'pcom_pricing_page_custom_javascript'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pcom_pricing_page_content_translation'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => false], ['label' => 'pcom_pricing_page_free_graphic_personalization'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => {include file="template/include/card/pricing_custom_card.tpl"}] ] ],
    [ 'title' => 'pcom_pricing_page_statistics'|translate, 'rows' => [ ['label' => 'pcom_pricing_page_statistics_built_in'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pcom_pricing_page_advanced_search'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],['label' => 'pcom_pricing_page_external_analytics'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pcom_pricing_page_admin_activity'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False] ] ],
    [ 'title' => 'pcom_pricing_page_collaboration_sharing'|translate, 'rows' => [ ['label' => 'pcom_pricing_page_collaboration_sharing'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pcom_pricing_page_private_public_albums'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False ], ['label' => 'pcom_pricing_page_user_permissions'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pcom_pricing_page_link_sharing_details'|translate],['label' => 'pcom_pricing_page_link_sharing'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False], ['label' => 'pcom_pricing_page_batch_downloader'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],['label' => 'pcom_pricing_page_multi_size_download'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],['label' => 'pcom_pricing_page_contributor_management'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => 'pcom_pricing_page_contributor_management_details'|translate],['label' => 'pcom_pricing_page_team_details_4'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],['label' => 'pcom_pricing_page_team_details_5'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_4'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => 'pcom_pricing_page_user_collection_details'|translate],
        ['label' => 'pcom_pricing_page_enterprise_details_10'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_sso'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_password_rules'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False]] ],
    [ 'title' => 'pcom_pricing_page_data_organization'|translate, 'rows' => [ 
        ['label' => 'pcom_pricing_page_albums_sub_albums'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_unlimited_tags'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_automatic_import_metadata'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_sell_files'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_automatic_watermark'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_copyright_management'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_csv_export'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_mass_tag_creation'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_custom_properties'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_file_expiration_date'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_3'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_12'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_11'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_6'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_10'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_user_custom_search_filters'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_enterprise_details_7'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => False],
    ] ],
    [ 'title' => 'pcom_pricing_page_service_support'|translate, 'rows' => [ 
        ['label' => 'pcom_pricing_page_email_support'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_import_piwigo'|translate, 'values' => ['check', 'check', 'check', 'check'], 'help' => 'pcom_pricing_page_import_piwigo_detail'|translate],
        ['label' => 'pcom_pricing_page_priority_support'|translate, 'values' => ['-', 'check', 'check', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_free_graphic_personalization'|translate, 'values' => ['-', '-', 'check', 'check'], 'help' => {include file="template/include/card/pricing_custom_card.tpl"}],
        ['label' => 'pcom_pricing_page_custom_data_import'|translate, 'values' => ['-', '-', 'on_quotation'|translate, 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_vip_details_3'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => 'pcom_pricing_page_vip_details_6'|translate],
        ['label' => 'pcom_pricing_page_phone_support'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_dedicated_hosting'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
        ['label' => 'pcom_pricing_page_vip_details_4'|translate, 'values' => ['-', '-', '-', 'check'], 'help' => False],
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
              <small>{'pcom_pricing_page_ht_month'|translate}<br>{'annual payment'|translate}</small>
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

{literal}
<script>
document.addEventListener('DOMContentLoaded', function() {
  const tooltips = document.querySelectorAll('.compare-plans-table .pwg-tooltip');

  function isMobile() {
    return window.innerWidth <= 991;
  }

  function closeAllTooltips() {
    document.querySelectorAll('.tooltip-text.mobile-modal-open').forEach(function(openTooltip) {
      openTooltip.classList.remove('mobile-modal-open');
    });
    document.documentElement.classList.remove('tooltip-modal-active');
    document.body.classList.remove('tooltip-modal-active'); // for safety
  }

  tooltips.forEach(function(tooltip) {
    tooltip.addEventListener('click', function(e) {
      if (!isMobile()) {
        return;
      }

      e.preventDefault();
      e.stopPropagation();

      const tooltipText = this.querySelector('.tooltip-text');
      const isAlreadyOpen = tooltipText.classList.contains('mobile-modal-open');

      closeAllTooltips();

      if (!isAlreadyOpen) {
        tooltipText.classList.add('mobile-modal-open');
        document.documentElement.classList.add('tooltip-modal-active');
        document.body.classList.add('tooltip-modal-active'); // for safety
      }
    });
  });

  // Global click listener to close the modal when clicking anywhere outside the modal content
  document.addEventListener('click', function(e) {
    if (!isMobile()) {
      return; // Only apply this logic on mobile
    }

    const openTooltipText = document.querySelector('.tooltip-text.mobile-modal-open');
    if (openTooltipText && !openTooltipText.contains(e.target)) {
      closeAllTooltips();
    }
  });
});
</script>
{/literal}
