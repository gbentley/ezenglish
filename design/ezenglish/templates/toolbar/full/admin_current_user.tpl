<div id="currentuser">

{if and( ne( $ui_context, 'edit' ), ne( $ui_context, 'browse' ) )}
    {def $user_node = $current_user.contentobject.main_node
         $current_user_link = $user_node.url_alias|ezurl}
    <div class="box-header"><div class="box-ml">
    {if $user_node.can_read}
        <h4><a href={$current_user_link}><img src={'current-user.gif'|ezimage} height="22" width="22" alt="" style="text-align: left; vertical-align: middle;" /></a>&nbsp;<a style="font-weight: normal; text-decoration: none; color: #000000" href={$current_user_link}>{$current_user.contentobject.name|wash}</a></h4>
    {else}
        <h4><img src={'current-user-disabled.gif'|ezimage} height="22" width="22" alt="" style="text-align: left; vertical-align: middle;" /> {$current_user.contentobject.name|wash}</h4>
    {/if}
    </div></div>
    {undef $current_user_link $user_node}
    <ul>
    <li><div>
    {if $current_user.contentobject.can_edit}
        <a href={concat( '/content/edit/',  $current_user.contentobject_id, '/' )|ezurl} title="{'Change name, email, password, etc.'|i18n( 'design/admin/pagelayout' )}">{'Change information'|i18n( 'design/admin/pagelayout' )}</a>
    {else}
        <span class="disabled">{'Change user info'|i18n( 'design/admin/pagelayout' )}</span>
    {/if}</div></li>
    <li><div><a href={'/user/password/'|ezurl} title="{'Change password for <%username>.'|i18n( 'design/admin/pagelayout',, hash( '%username', $current_user.contentobject.name ) )|wash}">{'Change password'|i18n( 'design/admin/pagelayout' )}</a></div></li>
    </ul>
{else}
	<div class="box-header"><div class="box-ml">
    <h4><img src={'current-user-disabled.gif'|ezimage} height="22" width="22" alt="" style="text-align: left; vertical-align: middle;" /> {$current_user.contentobject.name|wash}</h4>
    </div></div>
    <ul>
    <li><div><span class="disabled">{'Change user info'|i18n( 'design/admin/pagelayout' )}</span></div></li>
    <li><div><span class="disabled">{'Change password'|i18n( 'design/admin/pagelayout' )}</span></div></li>
    </ul>
{/if}

</div>