<section class="use-case-header container-fluid">
  <div class="row justify-content-evenly">
    <div class="col-md-6 use-case-header-text">
      <h1 class="d-none d-md-block use-case-title"><span
          class="use-case-title-main">{'use cases tourism header title'|translate}</span><span
          class="use-case-title-underlined">{'tourism industry'|translate}</span>
      </h1>
      <p class="use-case-description">
        {'use cases tourism header description'|translate}
      </p>
      {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'use cases tourism header btn'|translate}
      href='#'}
    </div>
    <div class="col-md-6 text-center use-case-header-image">
      <img id="use-case-main-image" src="{$PORG_ROOT_URL}images/use-case/tourism_header.png"
        alt="Piwigo use-case illustration" class="img-fluid">
    </div>
  </div>
</section>

<section class="tourism-carousel">
  <div class="container-fluid px-0">
    <div class="container text-center mb-md-5 mb-3">
      <h2 class="h2-top-page text-center">{'use cases tourism carousel title'|translate}</h2>
    </div>

    <div class="logos-marquee-wrapper">
      <div class="logos-marquee-track">
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <img class="logo-remove-bg" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
        {* duplicate so it doesn't end *}
        {foreach $tourism_logos as $logo}
          <div class="logos-marquee-item">
            <img class="logo-remove-bg" src="{$logo.element_url}" alt="{$logo.name}" loading="lazy" decoding="async">
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</section>

<section class="tourism-content-1">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-6">
        <h2 class="text-center">{'use cases tourism content1 title'|translate}</h2>
      </div>
    </div>
  </div>
</section>

<section class="tourism-features-section">
  <img src="{$PORG_ROOT_URL}images/use-case/tourism_bg_1.png" alt="Tourism background" class="tourism-bg-image">
  <div class="container tourism-features-container">
    <div class="row">
      <div class="col-12 col-md-4">
        <div class="glass-card">
          <h3>{'use cases tourism content1 card1 title'|translate}</h3>
          <p class="sub-h3">{'use cases tourism content1 card1 description'|translate}</p>
        </div>
      </div>
      <div class="col-12 col-md-4">
        <div class="glass-card">
          <h3>{'use cases tourism content1 card2 title'|translate}</h3>
          <p class="sub-h3">{'use cases tourism content1 card2 description'|translate}</p>
        </div>
      </div>
      <div class="col-12 col-md-4">
        <div class="glass-card">
          <h3>{'use cases tourism content1 card3 title'|translate}</h3>
          <p class="sub-h3">{'use cases tourism content1 card3 description'|translate}</p>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="tourism-features-section">
  <img src="{$PORG_ROOT_URL}images/use-case/tourism_bg_2.png" alt="Tourism background" class="tourism-bg-image">
  <div class="container tourism-features-container">
    <div class="row">
      <div class="col-12 col-md-4">
        <div class="glass-card">
          <h3>{'use cases tourism content1 card4 title'|translate}</h3>
          <p class="sub-h3">{'use cases tourism content1 card4 description'|translate}</p>
        </div>
      </div>
      <div class="col-12 col-md-4">
        <div class="glass-card">
          <h3>{'use cases tourism content1 card5 title'|translate}</h3>
          <p class="sub-h3">{'use cases tourism content1 card5 description'|translate}</p>
        </div>
      </div>
      <div class="col-12 col-md-4">
        <div class="glass-card">
          <h3>{'use cases tourism content1 card6 title'|translate}</h3>
          <p class="sub-h3">{'use cases tourism content1 card6 description'|translate}</p>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="tourism-content-1">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-6">
        <h2 class="text-center mb-5">{'use cases tourism content2 title'|translate}</h2>
        <p class="text-center">{'use cases tourism content2 description'|translate}</p>
      </div>
    </div>
  </div>
</section>


<section class="tourism-features-section-2 position-relative">
  <img src="{$PORG_ROOT_URL}images/use-case/tourism_bg_3.png" alt="" class="tourism-bg-image-2">
  <div class="container tourism-features-container-2-top">
{if isset($tourism_testimonials) && count($tourism_testimonials) > 0}
{foreach $tourism_testimonials as $testimonial name=tourism_testimonials_loop}
  {if $smarty.foreach.tourism_testimonials_loop.first}
    <div class="row g-3">
  {/if}
      <div class="col-6">
        <div class="testimonial-card">
          <i class="icon-quote quote-icon position-absolute" aria-hidden="true"></i>
          {if isset($testimonial.img_src)}
          <img src="{$testimonial.img_src}" alt="{$testimonial.author}" class="testimonial-image mb-3" loading="lazy" decoding="async">
          {/if}
          <p class="p-testimonial mb-5">{$testimonial.comment}</p>
          <p class="mb-0 name-testimonial">{$testimonial.author}</p>
          <div class="testimonial_badges">
            {if isset($testimonial.country)}<p class="d-inline-block country-testimonial mb-0"><span class="flag-icon flag-icon-{$testimonial.country|lower} me-2"></span>{"country_{$testimonial.country}"|translate}</p>{/if}
          </div>
        </div>
      </div>
  {if $smarty.foreach.tourism_testimonials_loop.index % 2 == 1}
    </div>
    {if !$smarty.foreach.tourism_testimonials_loop.last}
    <div class="row g-3 mt-5">
    {/if}
  {/if}
{/foreach}
  </div>
{/if}
  </div>
</section>