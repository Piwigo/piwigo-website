<div class="col-lg-3 col-6">
  <div class="person-card">
    <div class="person-card-image">
      <img src="{if $name == 'Hannah'}https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8/2026/07/07/20260707120252-e4b7ec43-me.webp{elseif $name == 'Willy'}https://ressources.piwigo.com/i?/uploads/c/v/7/cv7jpz6hf8/2026/07/07/20260707120251-0e47fd06-me.webp{else}{$PORG_ROOT_URL}images/about-us/{$image}{/if}" alt="{$name}">
    </div>
    <div class="person-card-content">
      <h4>{$name}</h4>
      <p class="pricing-list">{$role}</p>
    </div>
    {if isset($buttons) && is_array($buttons) && !empty($buttons)}
      <div class="person-card-actions">
        {foreach $buttons as $button}
          <a href="{$button.link}" class="btn btn-primary person-card-btn" target="_blank">
            <i class="{$button.icon}"></i></a>
        {/foreach}
      </div>
    {/if}
  </div>
</div>