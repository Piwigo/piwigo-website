  <link rel="stylesheet" type="text/css" href="{$PORG_ROOT_URL}css/pages/release.css">

  <section class="container release-top">
    <div class="row justify-content-center">
      <div class="col-12 col-md-8">
        <h1 class="orange-text mb-2">Piwigo {$version}</h1>
        <h1 class="release-title mb-4">{'Release note'|translate}</h1>

        <div class="mb-1">
          {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label={'Download Piwigo %s'|translate:$version} href="//piwigo.org/download/dlcounter.php?code={$version}"}
        </div>

        <p class="release-date mb-1"><i class="icon-pwg"></i> {'Released on %s'|translate:$released_on}</p>

        <a id="md5-popover" href="javascript:void(0)" role="button" class="release-date"
          title="{$md5sum} <button type='button' class='btn-close-popover' aria-label='Close'><i class='icon-cancel-circled'></i></button>"
          data-bs-html="true"
          data-bs-toggle="popover"
          data-bs-placement="bottom"
          data-bs-content="{'The MD5 sum is a convenient tool to make sure that your file is not corrupted.'|translate|escape:html} {'You can compare the md5sum of your downloaded file with the official md5sum provided on piwigo.org.'|translate|escape:html}">
          <i class="icon-clipboard"></i> md5sum
        </a>

        {literal}
          <script>
            window.addEventListener('load', function() {
              var popEl = document.getElementById('md5-popover');

              if (popEl) {
                var pop = new bootstrap.Popover(popEl, {
                  html: true,
                  trigger: 'click',
                  placement: 'bottom',
                  container: document.body,
                  popperConfig: function(defaultBsPopperConfig) {
                    // Disable automatic flip so popover stays below when possible
                    var cfg = defaultBsPopperConfig || {};
                    cfg.modifiers = cfg.modifiers || [];
                    cfg.modifiers.push({ name: 'flip', options: { fallbackPlacements: [] } });
                    return cfg;
                  }
                });

                document.addEventListener('click', function(e) {
                  if (!e.target.closest('#md5-popover') && !e.target.closest('.popover')) {
                    pop.hide();
                  }
                  if (e.target.closest && e.target.closest('.btn-close-popover')) {
                    pop.hide();
                  }
                });

                popEl.addEventListener('click', function() {
                  var text = popEl.getAttribute('data-bs-original-title') || '';
                  var md5 = text.replace(/<.*$/s, '').trim();
                  if (md5 && navigator.clipboard) {
                    navigator.clipboard.writeText(md5).catch(function() {
                      var ta = document.createElement('textarea');
                      ta.value = md5;
                      document.body.appendChild(ta);
                      ta.select();
                      document.execCommand('copy');
                      document.body.removeChild(ta);
                    });
                  }
                });

                popEl.addEventListener('shown.bs.popover', function() {
                  try {
                    var tip = pop.getTipElement();
                    if (!tip) return;
                    var header = tip.querySelector('.popover-header');
                    if (!header) return;
                    header.style.whiteSpace = 'nowrap';
                    var needed = header.scrollWidth + 32;
                    tip.style.minWidth = needed + 'px';
                  } catch (e) {
                  }
                });
              }
            });
          </script>
        {/literal}

        {if $version_major != $version}
          <p class="mt-3">{'The list of major changes is described on <br><a class="orange-text" href="%s">Piwigo %s release note</a>'|translate:"{$URL.release}-{$version_major}":$version_major}</p>
        {/if}
      </div>
    </div>
</section>