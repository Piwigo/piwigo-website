<h1>Travel & Tourism</h1>


<section class="tourism-carousel">
  <div class="container-fluid px-0">
    <div class="container text-center mb-md-5 mb-3">
      <h2 class="h2-top-page text-center">{'use cases tourism carousel title'|translate}</h2>
    </div>

    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <img src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</section>