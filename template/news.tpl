<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/news.css">

{literal}
  <script type="text/javascript">
    $(document).ready(function() {
      $('.btn-news-see-more').click(function() {
        var $start = $(".news-releases").length;
        $.ajax({
          type: "GET",
          url: "ws.php",
          dataType: "html",
          data: {
            method: "porg.news.seemore",
            start: $start,
            count: 6,
          },
          success: function(html) {
            var $newItems = $(html).hide();
            $(".row-news").append($newItems);
            $newItems.fadeIn(800);
            if (($start + 6) >= $(".btn-news-see-more").data("length")) {
              $(".btn-news-see-more").css("display", "none");
            }
          },
        });
      });
    });
  </script>
{/literal}

<section class="container-fluide pwg-whats-news">
  <div class="container">
    <div class="justify-content-center row">
      <div class="col-md-6 pt-5 mt-5">
        <h1 class="text-center mb-4">{'porg_news_desc1'|translate}</h1>
        <p class="text-center">{'porg_news_desc2'|translate}</p>
      </div>
    </div>
  </div>
</section>

<section class="container news-releases">
  <div class="justify-content-center row row-news">
    {include file="template/news_articles.tpl"}
  </div>
</section>

<section class="container-see-more">
  <div class="container">
    {if $topics_nbr > 12}
      <div class="text-center">
        <button class="btn btn-news-see-more" data-length={$topics_nbr}><span
            class="dark-text minimenus-item">{'porg_news_btn'|translate}</span></button>
      </div>
    {/if}
  </div>
</section>


<section class="container py-5">
  <div class="row features-content justify-content-center align-items-center">

      <div class="col-12 col-lg-5 text-center text-lg-start order-1">
        <div class="d-flex flex-column gap-3 pb-4">
          <h2 class="">{'porg_news_foot_title'|translate}</h2>
          <p class="">{'porg_news_foot_desc'|translate}</p>
        </div>

        <div
          class="d-flex flex-column justify-content-center justify-content-lg-start align-items-center align-items-lg-start gap-3">
          {include
            file='template/include/buttons/button.tpl'
            variant='menu_btn_green'
            href="https://piwigo.com/blog/"
            label={'porg_news_foot_btn'|translate}
            class="px-5"
          }
        </div>
      </div>

      <div class="col-12 col-lg-6 text-center order-2 mt-4 mt-lg-0">
        <div class="">
          <img class="img-fluid" src="{$PORG_ROOT_URL}images/news/blog.webp" alt="blog">
        </div>
      </div>

  </div>
</section>