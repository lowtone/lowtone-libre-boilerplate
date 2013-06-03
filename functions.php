<?php
/**
 * @author Paul van der Meijs <code@lowtone.nl>
 * @copyright Copyright (c) 2011-2012, Paul van der Meijs
 * @license http://wordpress.lowtone.nl/license/
 * @version 1.0
 */

namespace lowtone\libre\lowtone {

	use lowtone\content\packages\themes\Theme;

	// Includes
	
	if (!include_once WP_PLUGIN_DIR . "/lowtone-content/lowtone-content.php") 
		return trigger_error("Lowtone Content plugin is required", E_USER_WARNING) && false;

	// Init
	
	$__i = Theme::init(array(
			Theme::INIT_PACKAGES => array("lowtone", "lowtone\\style"),
			Theme::INIT_SUCCESS => function() {

				if (!is_admin()) {

					// Enqueue styles
					
					wp_enqueue_style("lowtone_style_grid");
					
				}

				return true;
			},
		));

	if (!$__i)
		return false;

}