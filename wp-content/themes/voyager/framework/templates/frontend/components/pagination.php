<?php
	$navPreviousOpen = '<span class="nav-previous">';
	$navNextOpen = '<span class="nav-next">';
	$navPreviousClose = $navNextClose = '</span>';
	$html = '';
?>

<nav role="navigation" class="thb-navigation">
	<?php
		if ( is_single() ) {
			if ( $show_always || thb_post_has_previous( $in_same_cat ) ) {
				if( $single_prev_template === false ) {
					echo $navPreviousOpen;
					previous_post_link( $single_format, $single_prev, $in_same_cat );
					echo $navPreviousClose;
				}
				else {
					if ( is_callable( $single_prev_template ) ) {
						$previous_post = get_previous_post( $in_same_cat );
						call_user_func( $single_prev_template, $previous_post );
					}
				}
			}

			echo apply_filters( 'thb_between_navigation', $html );

			if ( $show_always || thb_post_has_next( $in_same_cat ) ) {
				if( $single_next_template === false ) {
					echo $navNextOpen;
					next_post_link( $single_format, $single_next, $in_same_cat );
					echo $navNextClose;
				}
				else {
					if ( is_callable( $single_next_template ) ) {
						$next_post = get_next_post( $in_same_cat );
						call_user_func( $single_next_template, $next_post );
					}
				}
			}
		}
		else {
			if ( thb_page_has_previous() ) {
				echo $navPreviousOpen;
				previous_posts_link($page_prev);
				echo $navPreviousClose;
			}

			if ( thb_page_has_next() ) {
				echo $navNextOpen;
				next_posts_link($page_next);
				echo $navNextClose;
			}
		}
	?>
</nav>