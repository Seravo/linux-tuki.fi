<?php

/**
 * The No results found -template
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
                    <p>
						<?php pll_e( '404 error message' ) ?>
                    </p>
                </article>
            </div>
        </div>
    </div>
</main>
