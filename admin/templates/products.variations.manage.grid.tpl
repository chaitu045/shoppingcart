			<table class="GridPanel SortableGrid AutoExpand" cellspacing="0" cellpadding="0" border="0" id="IndexGrid" style="width:100%; margin-top:10px">
			<tr align="right">
				<td colspan="11" style="padding:6px 0px 6px 0px" class="PagingNav">
					{{ Nav|raw }}
				</td>
			</tr>
			<tr class="Heading3">
				<td align="center"><input type="checkbox" onclick="ToggleDeleteBoxes(this.checked)"></td>
				<td>&nbsp;</td>
				<td nowrap="nowrap">
					{% lang 'VariationName' %} &nbsp;
					{{ SortLinksName|raw }}
				</td>
				<td nowrap="nowrap">
					{% lang 'NumberOfOptions' %} &nbsp;
					{{ SortLinksOptions|raw }}
				</td>
				<td nowrap="nowrap">
					{% lang 'Action' %}
				</td>
			</tr>
			{{ VariationsGrid|raw }}
			<tr align="right">
				<td colspan="11" style="padding:6px 0px 6px 0px" class="PagingNav">
					{{ Nav|raw }}
				</td>
			</tr>
		</table>