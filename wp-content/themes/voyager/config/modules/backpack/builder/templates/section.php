<?php
	$section_tag = 'div';

	if ( thb_builder_section_has_title( $section ) ) {
		$section_tag = 'section';
	}
?>

<<?php echo $section_tag; ?> id="thb-section-<?php echo $section_index; ?>" class="thb-section <?php echo $class; ?>">

	<div class="thb-section-extra" <?php echo $section_attrs; ?>>

		<?php do_action( 'thb_section_pre_wrapper', $section ); ?>

		<div class="thb-section-inner-wrapper">
			<?php
				foreach ( $section['rows'] as $index => $row ) {
					thb_get_module_template_part( 'backpack/builder', 'row', array(
						'row'           => $row,
						'index'         => $index,
						'section_index' => $section_index
					) );
				}
			?>
		</div>
	</div>
</<?php echo $section_tag; ?>>