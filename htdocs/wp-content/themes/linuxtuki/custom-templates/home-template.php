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
		$logoItems     = get_post_meta( get_the_ID(), '_linuxtuki_logos', true );
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
                                    <button class="btn btn-orange">
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
                                    <button class="btn btn-orange">
										<?php pll_e( 'Read more' ) ?>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="logos">
            <div class="logos__row">
                <div class="logos__column">
                    <div class="logos__column-content">
                        <div class="logos-row">
							<?php

							foreach ( (array) $logoItems as $key => $logo ) {
								?>
                                <div class="logos-row__item">
                                    <img src="<?php echo $logo['logo_image'] ?>">
                                </div>
								<?php
							}

							?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<?php
	}
}

get_footer();
