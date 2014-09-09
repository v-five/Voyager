<?php

if ( !isset( $args ) ) {
	$args = array();
}

thb_portfolio_query( $args );

$terms = thb_portfolio_get_filter_terms( $args );
$filter_active_class = 'active';
$filter_all_class = thb_portfolio_is_ajax_filtered() ? '' : $filter_active_class;

if( have_posts() && count($terms) > 0 ) : ?>

	<div id="thb-portfolio-filter" class="thb-portfolio-filter">
		<ul id="filterlist" class="filterlist">
			<li class="filter <?php echo $filter_all_class; ?>" data-filter="" data-href="<?php echo get_permalink( thb_get_page_ID() ); ?>">
				<?php echo __('All', 'thb-portfolio'); ?>
			</li>
			<?php foreach( $terms as $term ) : ?>
				<?php
					$link = add_query_arg( 'filter', 'portfolio_categories:' . $term->term_id, get_permalink( thb_get_page_ID() ) );
					$term_class = in_array( $term->term_id, thb_portfolio_get_applied_filter_term_ids( $args ) ) ? $filter_active_class : '';
				?>
				<li class="filter <?php echo $term_class; ?>" data-filter="<?php echo $term->term_id; ?>" data-href="<?php echo $link; ?>">
					<?php echo $term->name; ?>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>

<?php endif; ?>