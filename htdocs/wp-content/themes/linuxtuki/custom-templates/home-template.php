<?php

/**
 *
 * @package Linux tuki
 *
 * Template Name: Home
 */

get_header();

if ( have_posts() ) {
	while ( have_posts() ) {
		the_post();

		get_template_part( 'partials/content', 'hero' );

		$postMeta      = get_post_meta( get_the_ID() );
		$leftImageUrl  = wp_get_attachment_image_src( $postMeta['_linuxtuki_left_box_image_id'][0], 'liftup_image' );
		$rightImageUrl = wp_get_attachment_image_src( $postMeta['_linuxtuki_right_box_image_id'][0], 'liftup_image' );
		?>
        <div class="container">
            <div class="row">
                <div class="lift-ups">
                    <div class="lift-ups__row">
                        <div class="lift-ups__column">
                            <div class="lift-ups__column-content">
                                <h3><?php echo $postMeta['_linuxtuki_left_box_title'][0] ?></h3>
                                <img src="<?php echo $leftImageUrl[0] ?>"/>
                                <a href="<?php echo $postMeta['_linuxtuki_left_box_link'][0] ?>">
                                    <button class="btn btn-blue">
										<?php pll_e( 'Read more' ) ?>
                                    </button>
                                </a>
                            </div>
                        </div>

                        <div class="lift-ups__column">
                            <div class="lift-ups__column-content">
                                <h3><?php echo $postMeta['_linuxtuki_right_box_title'][0] ?></h3>
                                <img src="<?php echo $rightImageUrl[0] ?>"/>
                                <a href="<?php echo $postMeta['_linuxtuki_right_box_link'][0] ?>">
                                    <button class="btn btn-blue">
										<?php pll_e( 'Read more' ) ?>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<?php
	}
}

get_footer();
