<?php
/**
 * This file deals with the white labelling of Interspire Shopping Cart on the front end of the store
 */

/**
 * This variable is used to toggle if the "Powered by" line should appear
 * at the bottom of each of the pages. Set to true to disable the "Powered
 * by" line.
 */
$GLOBALS['ISC_CFG']['DisableFrontEndPoweredBy'] = false;

/**
 * This variable contains an array (a list) of the powered by lines
 * that are assigned to the different templates. You may remove any of
 * the items from this list, and the template will default to the first.
 * If no powered by lines are listed, they do not appear at the bottom
 * of the pages.
 */
$GLOBALS['ISC_CFG']['TemplatePoweredByLines'] = array(
	0 => 'Powered by Interspire Shopping Cart',
	1 => 'Online store software by Interspire',
	2 => 'Shopping cart by Interspire',
	3 => 'E-commerce software by Interspire',
	4 => 'Online shop software by Interspire',
);
