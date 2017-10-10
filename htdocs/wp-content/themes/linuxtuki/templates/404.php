<?php

/**
 * The main 404-wrapper
 *
 * @package Linux tuki
 */

get_header();

?>

<?php do_action( 'linux_tuki_before_page' ); ?>
<?php get_template_part( 'partials/no-results', '404' ); ?>
<?php get_footer(); ?>
