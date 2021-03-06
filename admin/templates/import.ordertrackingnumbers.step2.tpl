	<form enctype="multipart/form-data" action="index.php?ToDo=importOrdertrackingnumbers&Step=3" id="frmImport" method="post" onsubmit="return ValidateForm(CheckImportOrdertrackingnumberForm)">
	<input type="hidden" name="ImportSession" value="{{ ImportSession|raw }}" />
	<div class="BodyContainer">
		<table cellSpacing="0" cellPadding="0" width="100%" style="margin-left: 4px; margin-top: 8px;">
		<tr>
			<td class="Heading1">{% lang 'ImportOrdertrackingnumbersStep2' %}</td>
		</tr>
		<tr>
			<td class="Intro">
				<p>{% lang 'ImportOrdertrackingnumbersStep2Desc' %}</p>
				{{ Message|raw }}
			</td>
		</tr>
		<tr>
			<td>
				<div>
					<input type="reset" value="{% lang 'Cancel' %}" class="FormButton" onclick="ConfirmCancel()" />
					<input type="submit" value="{% lang 'Next' %} &raquo;" class="FormButton" />
				</div>
				<br />
			</td>
		</tr>

		<tr>
			<td>
			  <table class="Panel">
				<tr>
				  <td class="Heading2" colspan="2">{% lang 'ImportLinkFields' %}</td>
				</tr>
				<tr>
					<table width="500">
						{{ ImportFieldList|raw }}
					</table>
				</tr>
			 </table>
			</td>
		</tr>
		</table>
		<table border="0" cellspacing="0" cellpadding="2" width="100%" class="PanelPlain">
			<tr>
				<td class="Field250">
					&nbsp;
				</td>
				<td>
					<input type="reset" value="{% lang 'Cancel' %}" class="FormButton" onclick="ConfirmCancel()" />
					<input type="submit" value="{% lang 'Next' %} &raquo;" class="FormButton" />
				</td>
			</tr>
		</table>
		<script type="text/javascript">
		function ConfirmCancel()
		{
			if(confirm('{% lang 'ConfirmCancelImport' %}'))
				window.location = 'index.php?ToDo=importOrdertrackingnumbers';
		}

		function CheckImportOrdertrackingnumberForm()
		{

			var o = document.getElementById('Matchordernumber');
			if(o.selectedIndex <= 0)
			{
				alert('{% lang 'NoMatchOrderNumber' %}');
				o.focus();
				return false;
			}

			var t = document.getElementById('Matchordertrackingnumber');
			if(t.selectedIndex <= 0)
			{
				alert('{% lang 'NoMatchOrdertrackingnumber' %}');
				t.focus();
				return false;
			}



			return true;
		}
		</script>
	</div>
</form>
