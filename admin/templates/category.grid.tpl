<ul class="SortableList CategoryList" {% if isChild %}id="ChildCats_{{ categoryId }}"{% else %}id="CategoryList"{% endif %} {% if isChild %}style="padding-left: 30px; padding-right: 0px;"{% endif %}>
	{% for category in categories %}
		<li id="ele-{{ category.categoryid|raw }}" class="SortableRow">
			<table class="GridPanel" cellspacing="0" cellpadding="0" border="0" style="width:100%;">
				<tr class="GridRow" onmouseover="this.className='GridRowOver'" onmouseout="this.className='GridRow'">
					<td width="45">
						<input type="checkbox" name="categories[{{ category.categoryid|raw }}]" />

						<a href="#" style="outline: none;{% if category.haschildren == false %}display: none;{% endif %}" id="ExpandLink_{{ category.categoryid }}" class="ExpandLink ExpandCollapseLink" onclick="return false;">
							<img src="images/plus.gif" class="ExpandImg" style="vertical-align: bottom" border="0" alt="" />
						</a>
					</td>
					<td class="DragMouseDown sort-handle">{{ category.catname|raw }}</td>
					<td width="80" class="HideOnDrag">{{ category.prodcount }}</td>
					<td width="120" class="HideOnDrag">{{ category.subcatprodcount }}</td>
					<td width="120" class="HideOnDrag">
						<a id="CatVisible_{{ category.categoryid }}" title="{% lang 'ClickToHideCategory' %}" href="#" onclick="CategoryManager.toggleCategoryVisibility({{ category.categoryid }});"><img border="0" src="images/{% if category.catvisible %}tick.gif{% else %}cross.gif{% endif %}" alt="Visible"></a>
					</td>
					{% if HasCategoryMappings %}
					<td width="120px" class="HideOnDrag">
						{% for module in ShoppingComparisonModules %}
						{% set comparisonCategory = category.cataltcategoriescache[module.getId] %}
						{% if comparisonCategory.path %}
						<image onmouseover="ShowQuickHelp(this, '', '{% lang 'ShoppingComparisonCategoryMapped' with {'name' : module.getName, 'path' : comparisonCategory.path | escape }%}');" onmouseout="HideQuickHelp(this);" class="ShoppingComparisonIcon" src='{{module.getIcon}}'/>
						{% else %}
						<image onmouseover="ShowQuickHelp(this, '', '{% lang 'ShoppingComparisonCategoryNotMapped' with {'name' : module.getName}%}');" onMouseOut="HideQuickHelp(this);" class="ShoppingComparisonIcon Opacity-20" src='{{module.getIcon}}'/>
						{% endif %}

						{% endfor %}

						{% if GoogleProductSearchMappings|length %}
							{% if GoogleProductSearchMappings[category.categoryid] %}
								<image onmouseover="ShowQuickHelp(this, '', '{% lang 'GoogleProductCategoryMapped' with {'name': GoogleProductSearchMappings[category.categoryid].name} %}');" onmouseout="HideQuickHelp(this);" src="images/froogle.gif">
							{% elseif invalidCatsMapping[category.categoryid] %}
								<image class="inValidGpsImage_{{ invalidCatsMapping[category.categoryid]['gpsCatId'] }}" onmouseover="ShowQuickHelp(this, '', '{% lang 'GoogleProductCategoryWasMapped' with {'name': invalidCatsMapping[category.categoryid]['gpsCatName']} %}');" onmouseout="HideQuickHelp(this);" src="images/froogle_warning.gif">
								<image class="validGpsImage_{{ invalidCatsMapping[category.categoryid]['gpsCatId'] }}" src="images/froogle.gif" style="display:none;">
							{% else %}
								<image onmouseover="ShowQuickHelp(this, '', '{% lang 'GoogleProductCategoryNotMapped' %}');" onmouseout="HideQuickHelp(this);" src="images/froogle.gif" class="Opacity-20">
							{% endif %}
						{% endif %}
					</td>
					{% endif %}

					<td width="220" class="HideOnDrag NoWrap">
						<a title="{% lang 'ViewCategory' %}" href="{{ category.link }}" class="bodylink" target="_blank">{% lang 'View' %}</a>

						<a title="{% lang 'ShowProductsInCategory' %}" href="index.php?ToDo=searchProductsRedirect&amp;searchQuery=&amp;category[]={{ category.categoryid }}">{% lang 'Products' %}</a>

						{% if hasCreateCatPermission %}
							<a title="{% lang 'NewCategory' %}" href="index.php?ToDo=createCategory&amp;parentId={{ category.categoryid }}" class="bodylink">{% lang 'NewSubCategory' %}</a>
						{% else %}
							<a disabled="disabled" class="bodylink">{% lang 'NewSubCategory' %}</a>
						{% endif %}

						{% if hasEditCatPermission %}
							<a title="{% lang 'EditCategory' %}" href="index.php?ToDo=editCategory&amp;catId={{ category.categoryid }}" class="bodylink">{% lang 'Edit' %}</a>
						{% else %}
							<a disabled="disabled" class="bodylink">{% lang 'Edit' %}</a>
						{% endif %}
					</td>
				</tr>
			</table>
		</li>
	{% endfor %}
</ul>
