<section class="container container-features">
  <div class="row text-center features-content justify-content-center">
    <div class="col-11 text-center justify-content-center">
      <div class="challenge-card row">
        <div class="col-lg-7 text-start d-flex flex-column justify-content-center">
          <h2 class="mb-3">{$title}</h2>
          <p>{$description}</p>
        </div>

        <div class="col-lg-5 text-start">
          <div class="challenge-list-card">
            <p class="mb-5 mt-2 strong-text">{$title2}</p>
            <ul class="challenge-list">
              {foreach $list_items as $item}
                <li class="p mb-2"><span class="challenge-icon"><i class="icon-warning"></i></span>{$item}</li>
              {/foreach}
            </ul>
          </div>
        </div>
        <p class="text-center mb-0 orange-text strong-text mt-5">
          {$subtext}
        </p>
      </div>
    </div>
  </div>
</section>