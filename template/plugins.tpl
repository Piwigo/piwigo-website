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
    <div class="col-xxl-11">

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
    <div class="col-xxl-11">

      <div class="col-md-7">
        <h2 class="mb-2">{'porg_plugins_s2_title'|translate}</h2>
        <p class="mb-3">{'porg_plugins_s2_desc'|translate}</p>

        <div class="form-group has-search my-4">
          <span class="fa fa-search form-control-feedback"></span>
          <input type="text" id="plugin-search" class="form-control py-1" placeholder="{'Lookup for a plugin'|translate}">
        </div>

      </div>

      <div class="tab-card-sentinel"></div>
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
          <tbody id="plugins-table-body">
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
            <tr id="no-plugin-results" style="display: none;">
              <td colspan="6" class="text-center pb-0" style="background-color: var(--grey) !important;">{'porg_plugins_no_results'|translate}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>

{literal}
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      document.querySelectorAll('.tab-card').forEach(function(card) {
        const sentinel = card.previousElementSibling;
        if (!sentinel || !sentinel.classList.contains('tab-card-sentinel')) return;

        const table = card.querySelector('table');
        const thead = table.querySelector('thead');

        const fixedTable = document.createElement('table');
        fixedTable.className = table.className;
        const fixedThead = thead.cloneNode(true);
        fixedTable.appendChild(fixedThead);

        const wrapper = document.createElement('div');
        wrapper.className = 'thead-fixed-wrapper';
        wrapper.appendChild(fixedTable);
        wrapper.style.display = 'none';
        card.appendChild(wrapper);

        function matchColumnWidths() {
          const liveThs = thead.querySelectorAll('th');
          const cloneThs = fixedThead.querySelectorAll('th');
          let total = 0;
          liveThs.forEach(function(th, i) {
            const w = th.getBoundingClientRect().width;
            cloneThs[i].style.width = w + 'px';
            cloneThs[i].style.minWidth = w + 'px';
            cloneThs[i].style.maxWidth = w + 'px';
            total += w;
          });
          fixedTable.style.width = total + 'px';
        }

        function sync() {
          const rect = card.getBoundingClientRect();
          wrapper.style.left = rect.left + 'px';
          wrapper.style.width = card.clientWidth + 'px';
          fixedTable.style.transform = 'translateX(' + (-card.scrollLeft) + 'px)';
        }

        new IntersectionObserver(function(entries) {
          const entry = entries[0];
          const stuck = !entry.isIntersecting && entry.boundingClientRect.top < 0;
          if (stuck) {
            matchColumnWidths();
            sync();
          }
          wrapper.style.display = stuck ? 'block' : 'none';
          thead.style.visibility = stuck ? 'hidden' : 'visible';
        }, { threshold: 0 }).observe(sentinel);

        card.addEventListener('scroll', sync);
        window.addEventListener('resize', function() {
          if (wrapper.style.display !== 'none') matchColumnWidths();
          sync();
        });
      });

      const searchInput = document.getElementById('plugin-search');
      const tableBody = document.getElementById('plugins-table-body');
      // Store all original plugin rows in memory, excluding the "no results" template row.
      const allPluginRows = Array.from(tableBody.querySelectorAll('tr:not(#no-plugin-results)'));
      const noResultsRow = document.getElementById('no-plugin-results');

      searchInput.addEventListener('keyup', function() {
        const searchTerm = searchInput.value.toLowerCase();
        const matchingRows = [];

        // Filter rows based on search term
        allPluginRows.forEach(function(row) {
          const pluginNameCell = row.cells[0];
          const pluginDescCell = row.cells[1];

          if (pluginNameCell && pluginDescCell) {
            const pluginName = pluginNameCell.textContent.toLowerCase();
            const pluginDesc = pluginDescCell.textContent.toLowerCase();

            if (pluginName.includes(searchTerm) || pluginDesc.includes(searchTerm)) {
              matchingRows.push(row);
            }
          }
        });

        tableBody.innerHTML = '';

        if (matchingRows.length > 0) {
          matchingRows.forEach(row => tableBody.appendChild(row));
        } else {
          tableBody.appendChild(noResultsRow);
          noResultsRow.style.display = '';
        }
      });
    });
  </script>
{/literal}