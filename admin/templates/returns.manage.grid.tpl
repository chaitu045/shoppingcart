			<table class="GridPanel SortableGrid AutoExpand" cellspacing="0" cellpadding="0" border="0" id="IndexGrid" style="width:100%;">
				<tr align="right">
					<td colspan="11" style="padding:6px 0px 6px 0px" class="PagingNav">
						{{ Nav|raw }}
					</td>
				</tr>
			<tr class="Heading3">
				<td align="center"><input type="checkbox" onclick="$(this).parents('form').find('input[type=checkbox]').attr('checked', this.checked);"></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td width="100">
					{% lang 'ReturnId' %} &nbsp;
					{{ SortLinksId|raw }}
				</td>
				<td width="200">
					{% lang 'ReturnItem' %} &nbsp;
					{{ SortLinksReturnItem|raw }}
				</td>
				<td nowrap="nowrap">
					{% lang 'OrderNo' %} &nbsp;
					{{ SortLinksOrder|raw }}
				</td>
				<td width="200">
					{% lang 'Customer' %} &nbsp;
					{{ SortLinksCust|raw }}
				</td>
				<td nowrap="nowrap">
					{% lang 'Date' %} &nbsp;
					{{ SortLinksDate|raw }}
				</td>
				<td>
					{% lang 'Status' %} &nbsp;
					{{ SortLinksStatus|raw }}
				</td>
				<td style="width:120px">
					{% lang 'Action' %}
				</td>
			</tr>
			{{ ReturnGrid|raw }}
			<tr align="right">
				<td colspan="11" style="padding:6px 0px 6px 0px" class="PagingNav">
					{{ Nav|raw }}
				</td>
			</tr>
		</table>