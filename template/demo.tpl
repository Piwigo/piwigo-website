<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/demo.css">

<div class="demo-page mt-5 pt-5">

  <section class="container pt-5 pb-5 mb-5">
    <div class="row justify-content-center">
      <div class="col-md-8 text-center">
        <h1 class="text-center">{'porg_demo_page_title'|translate}</h1>
        <p class="text-center">{'porg_demo_into_text'|translate}</p>
      </div>
    </div>
  </section>
 
  <section class="container mt-5 pt-5 px-4">
    <div class="row justify-content-center pt-5">
      <div class="col-12 pt-5">

        <div class="row demo-gallery-screenshots align-items-center py-5">
          <div class="col-md-6 order-md-2 ps-md-5">
            <a href="https://demo1.piwigo.com" target="_blank" rel="noopener">
              <img src="{$PORG_ROOT_URL}images/demo/1.webp" class="img-fluid demo-img" alt="{'porg_demo_1_title'|translate}">
            </a>
          </div>
          <div class="col-md-6 order-md-1 pe-md-5">
            <div class="demo-gallery-description d-flex flex-column align-items-start">
              <h3 class="text-start">{'porg_demo_1_title'|translate}</h3>
              <p class="mb-0">{'porg_demo_1_text'|translate}</p>
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Visit gallery'|translate} href="https://demo1.piwigo.com" target="_blank" class="mt-4"}
            </div>
          </div>
        </div>

        <div class="row demo-gallery-screenshots align-items-center py-5">
          <div class="col-md-6 pe-md-5">
            <a href="https://demo2.piwigo.com" target="_blank" rel="noopener">
              <img src="{$PORG_ROOT_URL}images/demo/2.webp" class="img-fluid demo-img" alt="{'porg_demo_2_title'|translate}">
            </a>
          </div>
          <div class="col-md-6 ps-md-5">
            <div class="demo-gallery-description d-flex flex-column align-items-start">
              <h3 class="text-start">{'porg_demo_2_title'|translate}</h3>
              <p class="mb-0">{'porg_demo_2_text'|translate}</p>
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Visit gallery'|translate} href="https://demo2.piwigo.com" target="_blank" class="mt-4"}
            </div>
          </div>
        </div>

        <div class="row demo-gallery-screenshots align-items-center py-5">
          <div class="col-md-6 order-md-2 ps-md-5">
            <a href="https://demo3.piwigo.com" target="_blank" rel="noopener">
              <img src="{$PORG_ROOT_URL}images/demo/3.webp" class="img-fluid demo-img" alt="{'porg_demo_3_title'|translate}">
            </a>
          </div>
          <div class="col-md-6 order-md-1 pe-md-5">
            <div class="demo-gallery-description d-flex flex-column align-items-start">
              <h3 class="text-start">{'porg_demo_3_title'|translate}</h3>
              <p class="mb-0">{'porg_demo_3_text'|translate}</p>
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Visit gallery'|translate} href="https://demo3.piwigo.com" target="_blank" class="mt-4"}
            </div>
          </div>
        </div>

        <div class="row demo-gallery-screenshots align-items-center py-5">
          <div class="col-md-6 pe-md-5">
            <a href="https://demo4.piwigo.com" target="_blank" rel="noopener">
              <img src="{$PORG_ROOT_URL}images/demo/4.webp" class="img-fluid demo-img" alt="{'porg_demo_4_title'|translate}">
            </a>
          </div>
          <div class="col-md-6 ps-md-5">
            <div class="demo-gallery-description d-flex flex-column align-items-start">
              <h3 class="text-start">{'porg_demo_4_title'|translate}</h3>
              <p class="mb-0">{'porg_demo_4_text'|translate}</p>
              {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Visit gallery'|translate} href="https://demo4.piwigo.com" target="_blank" class="mt-4"}
            </div>
          </div>
        </div>

        <div class="row justify-content-center mt-5 pt-5">
          <div class="col-md-8 demo-page-intro-text text-center">
            <h2 class="mb-3 text-center">{'porg_demo_video_title'|translate}</h2>
            <p class="mb-5 pb-2 text-center">{'porg_demo_video_description'|translate}</p>
            <video width="100%" height="auto" controls class="rounded-3">
              <source src="{$PORG_ROOT_URL}images/demo/AddPhotos.mp4" type="video/mp4">
              {'porg_demo_video_support'|translate}
            </video>
          </div>
        </div>


        <div class="container get-started-container">
          <div class="row justify-content-center">
            <div class="col-md-10 text-center">
              <div class="grey-card">
                <h2 class="text-center">{'Start your free trial'|translate}</h2>
                <p class="text-center">{'Try Piwigo Cloud free for 30 days. No credit card required.'|translate}</p>
                {include file='template/include/buttons/button.tpl' variant='cta_primary_green' label={'Create my account'|translate} href="{$PORG_ROOT}{$URL.signup}" target="_blank" class="mt-2"}
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

</div>