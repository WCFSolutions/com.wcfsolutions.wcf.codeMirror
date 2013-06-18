{if !$codeMirrorLoaded|isset}<script type="text/javascript" src="{@RELATIVE_WCF_DIR}js/3rdParty/codeMirror/lib/codemirror.js"></script>{/if}
{if $codeMirrorMode|isset}<script type="text/javascript" src="{@RELATIVE_WCF_DIR}js/3rdParty/codeMirror/mode/{$codeMirrorMode}/{$codeMirrorMode}.js"></script>{/if}
{if $codeMirrorSelector}
	<script type="text/javascript">
	//<![CDATA[
		CodeMirror.fromTextArea($('{$codeMirrorSelector|encodeJS}'), {
			mode: '{$codeMirrorMode|encodeJS}',
			lineNumbers: true,
			lineWrapping: true,
			tabSize: 4,
			indentUnit: 4,
			indentWithTabs: true
			{if $additionalCodeMirrorOptions|isset}{@$additionalCodeMirrorOptions}{/if}
		});
	//]]>
	</script>
{/if}
{assign var=codeMirrorLoaded value=true}