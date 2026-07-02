<section class="use-case-header">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-2"></div>
      <div class="col-md-6 mb-5">
        <h2 class="text-center mb-5">{$title}</h2>
      </div>
      <div class="col-md-2"></div>
      {foreach  $list_items as $item}
        <div class="col-md-4">
          <div class="how-card">
            <div class="d-flex align-items-start mb-3">
              <span class="how-icon"><i class="{$item.icon}"></i></span>
              <h4 class="mb-0">{$item.title}</h4>
            </div>
            <p class="mb-0">{$item.description|nl2br}</p>
          </div>
        </div>
      {/foreach}
    </div>
  </div>
</section>