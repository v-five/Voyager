<?php if( !defined('THB_FRAMEWORK_NAME') ) exit('No direct script access allowed.');

if ( ! function_exists( 'thb_get_builder_position' ) ) {
	/**
	 * Get the builder position in the page.
	 *
	 * @return string
	 */
	function thb_get_builder_position() {
		$builder_position = thb_get_post_meta( thb_get_page_ID(), 'builder_position' );
		$builder_position = apply_filters( 'thb_get_builder_position', $builder_position );

		if ( empty( $builder_position ) ) {
			$builder_position = 'top';
		}

		return $builder_position;
	}
}

if ( ! function_exists( 'thb_is_builder_position_top' ) ) {
	/**
	 * Check if the builder section should be placed above the page content.
	 *
	 * @return boolean
	 */
	function thb_is_builder_position_top() {
		return thb_get_builder_position() == 'top';
	}
}

if ( ! function_exists( 'thb_is_builder_position_bottom' ) ) {
	/**
	 * Check if the builder section should be placed below the page content.
	 *
	 * @return boolean
	 */
	function thb_is_builder_position_bottom() {
		return ! thb_is_builder_position_top();
	}
}

if ( ! function_exists( 'thb_builder' ) ) {
	/**
	 * Display the builder sections.
	 */
	function thb_builder() {
		$page_id = thb_get_page_ID();
		$sections = thb_duplicable_get( 'section', $page_id );

		if ( empty( $sections ) ) {
			return;
		}

		wp_reset_query();

		foreach ( $sections as $index => $section ) {
			$value = $section['value'];
			$decoded_section = html_entity_decode( $value );
			parse_str( $decoded_section, $sect );

			$sect = stripslashes_deep( $sect );

			if ( empty( $sect['rows'] ) ) {
				continue;
			}

			$section_classes = array(
				isset( $sect['appearance']['width'] ) ? $sect['appearance']['width'] : '',
				isset( $sect['appearance']['class'] ) ? $sect['appearance']['class'] : ''
			);

			$section_classes = apply_filters( 'thb_section_classes', $section_classes, $sect );
			$section_attrs   = apply_filters( 'thb_section_attrs', array(), $sect );

			thb_get_module_template_part( 'backpack/builder', 'section', array(
				'section'             => $sect,
				'section_index'       => $index,
				'class'               => implode( ' ', $section_classes ),
				'section_attrs'       => thb_get_attributes( $section_attrs ),
			) );
		}
	}
}

if ( ! function_exists( 'thb_section_background' ) ) {
	/**
	 * Add a background field to the builder section appearance modal.
	 */
	function thb_section_background_field() {
		$thb_section_appearance_modal_tab = thb_theme()->getAdmin()->getModal( 'section_appearance' )->createTab( __( 'Background', 'thb_text_domain' ), 'section_appearance_background', 2 );
		$thb_modal_container = $thb_section_appearance_modal_tab->createContainer( '', 'thb_appearance_dimensions_container' );

			$thb_field = new THB_BackgroundField( 'background' );
			$thb_field->setLabel( '' );
			$thb_field->addClass( 'full' );

		$thb_modal_container->addField( $thb_field );

			$thb_field = new THB_SelectField( 'background_appearance' );
			$thb_field->setLabel( __( 'Appearance', 'thb_text_domain' ) );
			$thb_field->setOptions( array(
				'relative' => __( 'Regular', 'thb_text_domain' ),
				'fixed'    => __( 'Fixed', 'thb_text_domain' ),
				'parallax' => __( 'Parallax', 'thb_text_domain' ),
				'repeated' => __( 'Repeated', 'thb_text_domain' )
			) );

		$thb_modal_container->addField( $thb_field );

		$thb_container = thb_theme()->getAdmin()->getModal( 'section_appearance' )->getTab( 'section_appearance_dimensions' )->getContainer( 'thb_appearance_dimensions_container' );

			$thb_field = new THB_CheckboxField( 'fit_height' );
				$thb_field->setLabel( __( 'Fit to the window height', 'thb_text_domain' ) );
				$thb_field->setHelp( __( 'Force a min-height to the section container based on the window height. Please note that this option doesn\'t align the section content', 'thb_text_domain' ) );

		$thb_container->addField( $thb_field );
	}

	add_action( 'wp_loaded', 'thb_section_background_field' );
}

if ( ! function_exists( 'thb_theme_section_classes' ) ) {
	/**
	 * Add a skin class to the builder section frontend template.
	 *
	 * @param array $section_classes
	 * @param array $section
	 * @return array
	 */
	function thb_theme_section_classes( $section_classes, $section ) {
		if ( isset( $section['appearance'] ) ) {
			$skin = thb_section_get_text_skin( $section['appearance'] );

			if ( ! empty( $skin ) ) {
				$section_classes[] = 'thb-skin-' . $skin;
			}
		}

		return $section_classes;
	}

	add_filter( 'thb_section_classes', 'thb_theme_section_classes', 10, 2 );
}

if( ! function_exists( 'thb_section_get_text_skin' ) ) {
	/**
	 * Generate the builder section skin class from a comparison color.
	 *
	 * @param array $appearance
	 * @return string
	 */
	function thb_section_get_text_skin( $appearance ) {
		$pagecontent_background = get_theme_mod('body_bg', '#ffffff');

		if ( isset( $appearance['background'] ) ) {
			$overlay_color     = $appearance['background']['overlay_color'];
			$background_color  = $appearance['background']['background_color'];

			return thb_color_get_skin_from_comparison( $overlay_color, $background_color, $pagecontent_background );
		}
		else {
			return thb_color_get_opposite_skin( $pagecontent_background );
		}

		return '';
	}
}

if ( ! function_exists( 'thb_section_attrs' ) ) {
	function thb_section_attrs( $section_attrs, $section ) {
		if ( ! isset( $section['appearance'] ) || ! isset( $section['appearance']['background'] ) ) {
			return $section_attrs;
		}

		$background_color       = thb_isset( $section['appearance']['background'], 'background_color', '' );
		$background_image       = thb_isset( $section['appearance']['background'], 'id', '' );
		$background_appearance  = thb_isset( $section['appearance'], 'background_appearance', '');
		$section_margin_top     = thb_isset( $section['appearance'], 'margin_top', '');
		$section_margin_bottom  = thb_isset( $section['appearance'], 'margin_bottom', '');
		$section_padding_top    = thb_isset( $section['appearance'], 'padding_top', '');
		$section_padding_bottom = thb_isset( $section['appearance'], 'padding_bottom', '');
		$fit_height             = thb_isset( $section['appearance'], 'fit_height', '');

		if ( $background_appearance ) {
			$section_attrs['data-' . $background_appearance] = '1';
		}

		if ( $fit_height ) {
			$section_attrs['data-fit-height'] = '1';
		}

		if ( ! isset( $section_attrs['style'] ) ) {
			$section_attrs['style'] = '';
		}

		if ( $section_margin_top != '' ) {
			$section_attrs['style'] .= sprintf( ' margin-top: %spx;', $section_margin_top );
		}

		if ( $section_margin_bottom != '' ) {
			$section_attrs['style'] .= sprintf( ' margin-bottom: %spx;', $section_margin_bottom );
		}

		if ( $section_padding_top != '' ) {
			$section_attrs['style'] .= sprintf( ' padding-top: %spx;', $section_padding_top );
		}

		if ( $section_padding_bottom != '' ) {
			$section_attrs['style'] .= sprintf( ' padding-bottom: %spx;', $section_padding_bottom );
		}

		if ( ! empty( $background_color ) ) {
			$section_attrs['style'] .= sprintf( ' background-color: %s;', $background_color );
		}

		if ( ! empty( $background_image ) ) {
			$section_attrs['style'] .= sprintf( ' background-image: url(%s);', thb_image_get_size( $background_image, 'full-width' ) );
		}

		return $section_attrs;
	}

	add_filter( 'thb_section_attrs', 'thb_section_attrs', 10, 2 );
}

if ( ! function_exists( 'thb_section_background' ) ) {
	function thb_section_background( $section ) {
		if ( isset( $section['appearance'] ) && isset( $section['appearance']['background'] ) ) {
			$overlay_display  = $section['appearance']['background']['overlay_display'];
			$overlay_color    = $section['appearance']['background']['overlay_color'];

			if ( empty( $overlay_color ) ) {
				return;
			}

			if ( $overlay_display == '1' ) {
				$overlay_opacity = $section['appearance']['background']['overlay_opacity'];

				thb_overlay( $overlay_color, $overlay_opacity, 'thb-background-overlay' );
			}
		}
	}

	add_action( 'thb_section_pre_wrapper', 'thb_section_background' );
}

if ( ! function_exists( 'thb_builder_fake_query' ) ) {
	/**
	 * Builder fake query in order to make shortcodes in builder blocks work
	 * properly. Remember to add a wp_reset_query call at the end of the loop.
	 */
	function thb_builder_fake_query() {
		$id = thb_get_page_ID();
		$post_type = get_post_type( $id );

		$args = array(
			'posts_per_page' => 1
		);

		$args['post_type'] = $post_type;
		$args['p'] = $id;

		query_posts( $args );
	}
}

if ( ! function_exists( 'thb_builder_section_has_title' ) ) {
	/**
	 * Check if a section has a title set.
	 *
	 * @param array $section_data The section data.
	 * @return boolean
	 */
	function thb_builder_section_has_title( $section_data ) {
		if ( ! isset( $section_data['rows'] ) ) {
			return false;
		}

		foreach ( $section_data['rows'] as $row ) {
			if ( isset( $row['columns'] ) && ! empty( $row['columns'] ) ) {
				foreach ( $row['columns'] as $column ) {
					if ( isset( $column['blocks'] ) && ! empty( $column['blocks'] ) ) {
						foreach ( $column['blocks'] as $block ) {
							if ( isset( $block['data'] ) && isset( $block['data']['is_title'] ) && $block['data']['is_title'] == '1' ) {
								return true;
							}
						}
					}
				}
			}
		}

		return false;
	}
}

function thb_builder_custom_search_query_join( $join = '', $wp_query ) {
	if ( ! is_admin() && $wp_query->is_main_query() && $wp_query->is_search ) {
		global $wpdb;
		$join .= " LEFT JOIN {$wpdb->postmeta} as meta_1 ON {$wpdb->posts}.ID = meta_1.post_id";
	}

	return $join;
}

function thb_builder_custom_search_query_where( $where = '', $wp_query ) {
	if ( ! is_admin() && $wp_query->is_main_query() && $wp_query->is_search ) {
		global $wpdb;

		$s = get_search_query();

		foreach ( explode( ' ', $s ) as $q ) {
			$where .= $wpdb->prepare( " OR ( meta_1.meta_value LIKE %s AND meta_1.meta_key LIKE %s )", '%' . like_escape( $q ) . '%', like_escape( 'thb_' ) . '%' );
		}

		// $s = urlencode( $s );
		// $s = preg_replace( "/\+/", '%20', $s );
		// $s = preg_replace( "/\'/", '%27', $s );

		// $where .= sprintf( $where_clause, $s );
	}

	return $where;
}

function thb_builder_custom_search_query_fields( $fields, $wp_query ) {
	if ( ! is_admin() && $wp_query->is_main_query() && $wp_query->is_search ) {
		$fields = ' distinct ' . $fields;
	}

	return $fields;
}

add_filter( 'posts_fields' , 'thb_builder_custom_search_query_fields', 10, 2);
add_filter( 'posts_join' , 'thb_builder_custom_search_query_join', 10, 2);
add_filter( 'posts_where', 'thb_builder_custom_search_query_where', 10, 2 );