<?php

$slides_manager = new THB_PhotogalleryBlockSlidesManager( 'photogallery_slide' );
$slides = $slides_manager->getBlockSlides( $photogallery_slide );

$caption_visible = $title != '';

$layout = isset( $layout ) ? $layout : 'grid';
$mosaic_module = isset( $mosaic_module ) ? $mosaic_module : '';
$mosaic_gutter = isset( $mosaic_gutter ) ? $mosaic_gutter : '';
$mosaic_image_size = isset( $mosaic_image_size ) ? $mosaic_image_size : 'large';

?>

<?php if ( $caption_visible ) : ?>
	<div class="thb-section-block-header">
		<?php if ( $title != '' ) : ?>
			<h1 class="thb-section-block-title"><?php echo thb_text_format( $title ); ?></h1>
		<?php endif; ?>
	</div>
<?php endif; ?>

<?php
	if ( $layout == 'grid' ) {
		thb_photogallery( $grid_columns, $grid_gutter, $grid_images_height, array(
			'slides'         => $slides,
			'show_load_more' => false
		) );
	}
	else {
		if ( ! empty( $slides ) ) {
			$slides_count = count( $slides );
			$mosaic_module_repeat = 1;

			if ( $mosaic_module != '' ) {
				$mosaic_module_count = array_sum( str_split( $mosaic_module ) );

				if ( $mosaic_module_count < $slides_count ) {
					$mosaic_module_repeat = absint( $slides_count / $mosaic_module_count );
					$mosaic_module_repeat += $slides_count % $mosaic_module_count;
				}
			}

			$data_attrs = array(
				'layout'   => str_repeat( $mosaic_module, $mosaic_module_repeat ),
				'gutter'   => $mosaic_gutter,
				'lightbox' => '1'
			);

			?>

				<div class="thb-photogallery-photoset-grid-container">
					<div class="thb-photoset-grid" <?php thb_data_attributes( $data_attrs ); ?>>
						<?php foreach ( $slides as $picture ) {
							thb_image( $picture['id'], $mosaic_image_size, array(
								'attr' => array(
									'data-mfp-src' => thb_image_get_size( $picture['id'] ),
									'title' => $picture['caption']
								)
							) );
						}
						?>
					</div>
				</div>

			<?php

		}
	}
?>