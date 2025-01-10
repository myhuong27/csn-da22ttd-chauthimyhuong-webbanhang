/**
 * @copyright  Copyright (C) 2005 - 2022 Open Source Matters, Inc. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

Joomla = window.Joomla || {};

(function() {
	'use strict';

	Joomla.updateFlexbannerFields = function(value) {
		var image		= document.getElementById('image'),
			linkurl 	= document.getElementById('linkurl'),
			flash 		= document.getElementById('flash'),
			cloud	 	= document.getElementById('cloud_image'),
			custom     	= document.getElementById('custom');

		switch (value) {
			case '0':
				// Image
				image.style.display = 'block';
				linkurl.style.display = 'block';
				flash.style.display = 'none';
				custom.style.display = 'none';
				cloud.style.display = 'none';
				break;
			case "1":
				// Flash
				image.style.display = 'none';
				linkurl.style.display = 'block';
				flash.style.display = 'block';
				custom.style.display = 'none';
				cloud.style.display = 'none';
				break;
			case '2':
				// Custom
				image.style.display = 'none';
				linkurl.style.display = 'none';
				flash.style.display = 'none';
				custom.style.display = 'block';
				cloud.style.display = 'none';
				break;
			case "3":
				// Cloud
				image.style.display = 'none';
				linkurl.style.display = 'block';
				flash.style.display = 'none';
				custom.style.display = 'none';
				cloud.style.display = 'block';
				break;

		}
	}

	document.addEventListener('DOMContentLoaded', function(){

		var jformType = document.getElementById('jform_type');

		if (jformType)
		{
			// Hide/show parameters initially
			Joomla.updateFlexbannerFields(jformType.value);

			// Hide/show parameters when the type has been selected
			jformType.addEventListener('change', function(event) {
				var value = typeof(params) !== 'object' ? jformType.value : params.selected;

				Joomla.updateFlexbannerFields(value);
			});
		}

	});

})(document);
