<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL_PLUGINS}css/pages/product_update.css">
<script src="{$PORG_ROOT_URL_PLUGINS}js/product_update.js"></script>

<section class="product-update-header">
  <div class="product-update-content">

    <div class="product-update-text-section">
      <h1>{'porg_product_update_header_title'|translate}</h1>
      <p>{'porg_product_update_header_description'|translate}</p>
    </div>

    <div class="product-update-cards-section">
      <div class="product-update-cards-container" id="cardsContainer">
        {foreach from=$product_updates item=update name=updates}
          <div class="product-update-card">
            <img class="version-image" src="{$update.image}">
            <div class="p-testimonial card-date">{$update.released_on}</div>
            <h4 class="card-title">{$update.title}</h4>
            <p class="pricing-list card-features">
              {foreach from=$update.features item=feature name=features_loop}
                {$feature|translate}{if !$smarty.foreach.features_loop.last}, {/if}
              {/foreach}
            </p>
            {include file='template/include/buttons/button.tpl' variant='menu_btn_blue' label={'See details'|translate}
            href="{$PORG_ROOT}{$URL.release}-{$update.version}"}
          </div>
        {/foreach}
      </div>

      <div class="product-update-nav">
        <button class="product-update-nav-btn prev" id="prevBtn" aria-label="Previous">
          <p class="minimenus-item">←</p>
        </button>
        <button class="product-update-nav-btn next" id="nextBtn" aria-label="Next">
          <p class="minimenus-item">→</p>
        </button>
      </div>
    </div>
  </div>
</section>

<section class="product-update-updates pb-0">
  <div class="row product-update-updates-content justify-content-center">
    <div class="col-md-10">
      <h2 class="h2-top-page">{'porg_product_update_updates_title'|translate}</h2>

      <div class="timeline">
        {foreach from=$coding_activity_weeks item=week}
          <div class="timeline-week">
            <div class="medium-gray-text timeline-week-header">
              <span class="dot"></span>
              <h3 class="h3-mobile mb-0">{'Week'|translate} {$week.weeknumber} • <span class="p-testimonial">{$week.start_date} {'to'|translate} {$week.end_date}</span></h3>
            </div>

            {include file='template/include/card/commit_card.tpl' type='commits' meta='Coding activity' date=$week.weeknumber commits=$week.commits}
          </div>
        {/foreach}

      </div>

      <div class="timeline">

        <!-- Hard-coded demo data -->
        <div class="timeline-week">
          <div class="medium-gray-text timeline-week-header">
            <span class="dot"></span>
            <h3 class="h3-mobile mb-0">Week 12 • <span class="p-testimonial">April 6th to 12th, 2026</span></h3>
          </div>

          {assign var=translation_commits value=array(
            array('message'=>'Update pl_PL, thanks to yareq','date'=>'April 6th, 2026 12:33:21','repo'=>'piwigodotorg','url'=>'#','hash'=>'7a2e932e','author'=>'Piwigo-TranslationTeam'),
            array('message'=>'Update fr_FR, thanks to anna','date'=>'April 6th, 2026 11:12:05','repo'=>'piwigodotorg','url'=>'#','hash'=>'3b9f1aa','author'=>'Piwigo-TranslationTeam')
          )}
          {include file='template/include/card/commit_card.tpl' type='commits' meta='Translation' date='April 6th, 2026 to April 12th, 2026' commits=$translation_commits}

          {include file='template/include/card/commit_card.tpl' type='release' title='DAM theme' date='April 1st, 2026' image="https://sandbox.piwigo.com/i?/uploads/4/y/1/4y1zzhnrnw//2024/07/09/20240709142318-a8fc498d-la.jpg"
          meta='Theme release' desc='Discover a new way to showcase your assets!'
          btn_link='#'}

        </div>

        <div class="timeline-week">
          <div class="medium-gray-text timeline-week-header">
            <span class="dot"></span>
            <h3 class="h3-mobile mb-0">Week 12 • <span class="p-testimonial">April 6th to 12th, 2026</span></h3>
          </div>

          {assign var=translation_commits value=array(
            array('message'=>'Update pl_PL, thanks to yareq','date'=>'April 6th, 2026 12:33:21','author'=>'piwigodotorg','url'=>'#','hash'=>'7a2e932e'),
            array('message'=>'Update fr_FR, thanks to anna','date'=>'April 6th, 2026 11:12:05','author'=>'piwigodotorg','url'=>'#','hash'=>'3b9f1aa')
          )}
          {include file='template/include/card/commit_card.tpl' type='commits' meta='Android App' date='April 6th, 2026' commits=$translation_commits commits_count=4 icon='📚'}

          {include file='template/include/card/commit_card.tpl' type='release' title='DAM theme' date='April 1st, 2026' image="https://sandbox.piwigo.com/i?/uploads/4/y/1/4y1zzhnrnw//2024/07/09/20240709142318-a8fc498d-la.jpg"
          meta='Theme release' desc='Discover a new way to showcase your assets! Discover a new way to showcase your assets!'
          btn_link='#'}

        </div>

      </div>
    </div>
  </div>
</section>