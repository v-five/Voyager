<?php
	$properties = 'color:' . $icon_color . ';';

	if ( $icon_styles != 'icon-style-a' ) {
		$properties .= 'border-color:' . $icon_color . ';';
	}

	if ( $icon_styles == 'icon-style-c' || $icon_styles == 'icon-style-d' ) {
		$properties .= 'background-color:' . $icon_color . ';';
		$properties .= 'color:#fff;';
	}

	$style =  'style="' . $properties . '"';
?>

<?php if ( $icon_image != '' && $box_layout != 'layout-inline' ) : ?>
	<span class="thb-section-block-image-wrapper">
		<?php thb_image( $icon_image, 'full' ); ?>
	</span>
<?php endif; ?>

<?php if ( $icon != '' && $box_layout != 'layout-inline' && $icon_image == '' ) : ?>
	<span class="thb-section-block-icon-wrapper">
		<i class="thb-section-block-icon <?php echo $icon; ?>" <?php echo $style; ?>></i>
	</span>
<?php endif; ?>

<?php thb_builder_fake_query(); ?>
<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>

	<div class="thb-section-block-content">

		<?php if ( $title != '' || $subtitle != '' ) : ?>

		<div class="thb-section-block-header">

			<?php if ( $subtitle_position == 'subtitle-top') : ?>
				<?php echo thb_text_format( $subtitle, true ); ?>
			<?php endif; ?>

			<?php if ( $title != '' ) : ?>
				<h1 class="thb-section-block-title">
					<?php if ( $box_layout == 'layout-inline' ) : ?>

						<?php if ( $icon != '' ) : ?>
							<span class="thb-section-block-icon-wrapper">
								<i class="thb-section-block-icon <?php echo $icon; ?>" <?php echo $style; ?>></i>
							</span>
						<?php endif; ?>

						<?php if ( $icon_image != '' ) : ?>
							<span class="thb-section-block-image-wrapper">
								<?php thb_image( $icon_image, 'full' ); ?>
							</span>
						<?php endif; ?>

					<?php endif; ?>
					<span>
						<?php echo nl2br( wptexturize( $title ) ); ?>
					</span>
				</h1>
			<?php endif; ?>

			<?php if ( $subtitle_position == 'subtitle-bottom') : ?>
				<?php echo thb_text_format( $subtitle, true ); ?>
			<?php endif; ?>

		</div>

		<?php endif; ?>

		<?php if ( $content != '' ) : ?>
			<div class="thb-text">
				<?php echo thb_text_format( $content, true ); ?>
			</div>
		<?php endif; ?>

		<?php if ( !empty( $call_to_label_primary ) || !empty( $call_to_label_secondary ) ) : ?>

			<div class="thb-section-block-call-to">

				<?php
					$target_primary = '';
					$target_secondary = '';

					if ( isset( $call_to_url_primary_target_blank ) && $call_to_url_primary_target_blank == '1' ) {
						$target_primary = 'target="_blank"';
					}

					if ( isset( $call_to_url_secondary_target_blank ) && $call_to_url_secondary_target_blank == '1' ) {
						$target_secondary = 'target="_blank"';
					}

					if ( !empty( $call_to_url_primary ) && is_numeric( $call_to_url_primary ) ) {
						$call_to_url_primary = get_permalink( $call_to_url_primary );
					} else {
						$call_to_url_primary = $call_to_url_primary;
					}

					if ( !empty( $call_to_url_secondary ) && is_numeric( $call_to_url_secondary ) ) {
						$call_to_url_secondary = get_permalink( $call_to_url_secondary );
					} else {
						$call_to_url_secondary = $call_to_url_secondary;
					}
				?>

				<?php if ( !empty( $call_to_url_primary ) || !empty( $call_to_label_primary ) ) : ?>
					<a class="thb-btn action-primary" href="<?php echo $call_to_url_primary; ?>" <?php echo $target_primary; ?>>
						<?php echo $call_to_label_primary; ?>
					</a>
				<?php endif; ?>

				<?php if ( !empty( $call_to_url_secondary ) || !empty( $call_to_label_secondary ) ) : ?>
					<a class="thb-btn action-secondary" href="<?php echo $call_to_url_secondary; ?>" <?php echo $target_secondary; ?>>
						<?php echo $call_to_label_secondary; ?>
					</a>
				<?php endif; ?>

			</div>
		<?php endif; ?>

	</div>

<?php endwhile; endif; ?>

<?php wp_reset_query(); ?>