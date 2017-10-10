<?php

/**
 * The main post-template-wrapper
 *
 * @package Linux tuki
 */

get_header();

?>

<?php do_action( 'linux_tuki_before_page' ); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	<?php get_template_part( 'partials/content', get_post_type() ); ?>
<?php endwhile; endif; ?>

<?php
if ( comments_open() || '0' != get_comments_number() ) :
	comments_template();
endif;
?>

<?php get_footer(); ?>
