  <section class="container release-top">
    <div class="row justify-content-center">
      <div class="col-12 col-md-8">
        <h1 class="orange-text mb-2">Piwigo {$version}</h1>
        <h1 class="release-title mb-4">{'Release note'|translate}</h1>

        <div class="mb-1">
          {include file='template/include/buttons/button.tpl' variant='menu_btn_green' label={'Download Piwigo %s'|translate:$version} href="//piwigo.org/download/dlcounter.php?code={$version}"}
        </div>

        <p class="release-date mb-2"><i class="icon-pwg"></i> {'Released on %s'|translate:$released_on}</p>

        {* <a class="copy-md5sum" title="Copy md5sum" data-clipboard-text="{$md5sum}"><i class="icon-clipboard"></i></a> *}

        {if $version_major != $version}
          <p class="mt-3">{'The list of major changes is described on <br><a class="orange-text" href="%s">Piwigo %s release note</a>'|translate:"{$URL.release}-{$version_major}":$version_major}</p>
        {/if}
      </div>
    </div>
</section>