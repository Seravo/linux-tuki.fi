<div class="hero-area"
     style="background-image: url('<?php echo UTILS()->get_the_featured_image_url( 'hero_image', get_the_ID() ) ?>')">
    <div class="hero-area__container">
        <div class="hero-area__row">
            <div class="hero-area__column">
                <h1>
		            <?php
		            if(is_front_page()) {
			            pll_e( 'Linux expert at your service' );
		            } else {
			            the_title();
		            }
		            ?>
                </h1>
            </div>
        </div>
    </div>
</div>