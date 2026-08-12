<link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/book_a_meeting.css">

<section class="container py-5 mt-3 mb-4">
  <div class="row text-center justify-content-center">
    <div class="col-md-12 text-center justify-content-center">
      <div class="row justify-content-center align-items-stretch">
        <div class="col-md-6 d-flex flex-column pt-4">
          <h1 class="mb-4 mt-3">{'book_meeting_title'|translate}</h1>
          <p class="mb-4">{'book_meeting_desc'|translate}</p>
        </div>
        <div class="col-md-6 responsive-image d-flex flex-column justify-content-center h-100">
          <iframe id="nextcloud-appointment-iframe" src="https://files.pigolabs.com/nextcloud/index.php/apps/appointments/embed/8zqwQAqBMA4tBwy5/form" scrolling="no" style="width: 100%; border: 0;"></iframe>
        </div>
      </div>
    </div>
  </div>
</section>

{literal}
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const iframe = document.getElementById('nextcloud-appointment-iframe');

      iframe.style.height = '700px';

      window.addEventListener('message', function(event) {
        if (event.origin !== 'https://files.pigolabs.com') {
          return;
        }

        if (event.data && typeof event.data.height !== 'undefined') {
          iframe.style.height = event.data.height + 'px';
        }
      });
    });
  </script>
{/literal}