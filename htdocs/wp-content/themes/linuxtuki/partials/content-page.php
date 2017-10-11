<?php

/**
 * The main template for page
 *
 * @package Linux tuki
 *
 */

?>
<?php get_template_part( 'partials/content', 'hero' ); ?>
<main>
    <div class="main__row">
        <div class="main__column">
            <div class="main__column-content">
                <article>
                    <?php the_content(); ?>
                </article>
            </div>
        </div>
    </div>
</main>
