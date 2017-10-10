<?php

/**
 * The main article-list template
 *
 * @package Linux tuki
 */

get_header();

?>

<?php do_action( 'linux_tuki_before_page' ); ?>

<section>
	<h1><?php echo get_the_archive_title(); ?></h1>
	<?php
	if ( have_posts() ) : while ( have_posts() ) : the_post();
		get_template_part( 'partials/content', 'excerpt' );
	endwhile;
	else :
		get_template_part( 'partials/no-results' );
	endif;
	?>
</section>

<section class="pagination">
	<?php echo UTILS()->pagination(); ?>
</section>

<?php get_footer(); ?>
