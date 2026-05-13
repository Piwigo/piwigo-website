<div class="global-popover-content">
    <ul class="global-popover-list">
        {if isset($tooltip_items) && is_array($tooltip_items)}
            {foreach from=$tooltip_items item=item}
                <li>{$item}</li>
            {foreachelse}
                <li>{'No details available'|translate}</li>
            {/foreach}
        {else}
            <li>{'No details available'|translate}</li>
        {/if}
    </ul>
</div>