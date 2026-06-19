<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/plugins.css">

<section class="plugins-title">
  <div class="container">
    <div class="justify-content-center row">
      <div class="col-md-6 pt-5 mt-5">
        <h1 class="text-center mb-4">{'porg_plugins_title'|translate}</h1>
        <p class="text-center">{'porg_plugins_desc'|translate}</p>
      </div>
    </div>
  </div>
</section>


<section class="container container-feature">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-11">

      <div class="col-md-7">
        <h2 class="mb-2">{'porg_plugins_s1_title'|translate}</h2>
        <p class="mb-3">{'porg_plugins_s1_desc'|translate}</p>
      </div>

      <div class="tab-card w-100">
        <table class="w-100">
          <thead>
            <tr>
              <th scope="col" class="h3-pricing-option pink-text">{'Feature'|translate}</th>
              <th scope="col" class="h3-pricing-option dark-text">{'Description'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'Pro'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'Team'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'Enterprise'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'VIP'|translate}</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$FEATURE_TABLE key=feature_id item=feature_row}
              <tr>
                <td class="pricing-list strong-text text-start">{"porg_plugins_s1_f`$feature_id`_title"|translate}</td>
                <td class="pricing-list text-start">{"porg_plugins_s1_f`$feature_id`_desc"|translate}</td>
                {foreach from=$feature_row item=feature_value}
                  <td class="text-center">
                    {if $feature_value}
                      <div class="small-check-icon">
                        <i class="icon-check-1"></i>
                      </div>
                    {else}
                      <div class="small-cross-icon">
                        <i class="icon-cancel"></i>
                      </div>
                    {/if}
                  </td>
                {/foreach}
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>


<section class="container container-plugin">
  <div class="row text-center features-content justify-content-center">
    <div class="col-md-11">

      <div class="col-md-7">
        <h2 class="mb-2">{'porg_plugins_s2_title'|translate}</h2>
        <p class="mb-3">{'porg_plugins_s2_desc'|translate}</p>

        <div class="tuto-box d-flex align-items-center">
          <i class="icon-rounded-warning me-3"></i>
          <p class="text-start mb-0">{'porg_plugins_s2_desc2'|translate}</p>
        </div>
      </div>

      <div class="tab-card w-100">
        <table class="w-100">
          <thead>
            <tr>
              <th scope="col" class="h3-pricing-option pink-text">{'Plugin'|translate}</th>
              <th scope="col" class="h3-pricing-option dark-text">{'Description'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'Pro'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'Team'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'Enterprise'|translate}</th>
              <th scope="col" class="h3-pricing-option text-center">{'VIP'|translate}</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$PLUGIN_NAMES key=plugin_id item=plugin_name}
              <tr>
                <td class="pricing-list strong-text text-start">{$plugin_name}</td>
                <td class="pricing-list text-start">{"premium_plugins_`$plugin_name|replace:' ':''`_desc"|translate}</td>
                {assign var=plugin_row value=$PLUGIN_TABLE[$plugin_id]}
                {foreach from=$plugin_row item=plugin_value}
                  <td class="text-center">
                    {if $plugin_value}
                      <div class="small-check-icon">
                        <i class="icon-check-1"></i>
                      </div>
                    {else}
                      <div class="small-cross-icon">
                        <i class="icon-cancel"></i>
                      </div>
                    {/if}
                  </td>
                {/foreach}
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>