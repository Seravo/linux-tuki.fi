<?php

/**
 * The main page-template wrapper
 *
 * @package Linux tuki
 */

get_header();

?>

<?php do_action( 'linux_tuki_before_page' ); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	<?php get_template_part( 'partials/content', 'page' ); ?>
<?php endwhile; endif; ?>

<?php get_footer(); ?>
