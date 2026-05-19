<div class="col-12 col-md-6 col-lg-4 col-xl-3 newsletter-card-col" id="newsletter-{$id}">
  <a href="{$href}" class="news-card-link">
    <article class="news-card">
      <div class="news-card-img">
        <img src="{$image}" class="img-fluid" alt="News thumbnail">
      </div>
      <div class="news-card-body">
        <h3 class="news-card-title main-menu-item-title">{$title}</h3>
        <p class="news-card-date p-testimonial">{$date}</p>
        <p class="news-card-text pricing-list">
          {$desc|escape:'html'}
        </p>
      </div>
    </article>
  </a>
</div>