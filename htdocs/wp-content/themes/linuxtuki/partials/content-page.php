<?php

/**
 * The main template for page
 *
 * @package Linux tuki
 *
 */

$postMeta      = get_post_meta( get_the_ID() );
$downloadItems = get_post_meta( get_the_ID(), '_linuxtuki_downloads', true );

?>
<?php get_template_part( 'partials/content', 'hero' ); ?>
<main>
    <div class="main__row">
        <div class="main__column">
            <div class="main__column-content">
                <article>
					<?php
					if ( ! empty( $downloadItems ) ) {
						?>
                        <div class="panel-group" id="downloads-accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#downloads-accordion"
                                           href="#downloads" aria-expanded="true" aria-controls="collapseOne">
											<?php echo $postMeta['_linuxtuki_downloads_title'][0] ?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="downloads" class="panel-collapse collapse" role="tabpanel"
                                     aria-labelledby="headingOne">
                                    <div class="panel-body">
										<?php echo $postMeta['_linuxtuki_downloads_text'][0] ?>
                                    </div>
                                    <ul class="list-group">
										<?php
										foreach ( (array) $downloadItems as $key => $download ) {
											?>
                                            <li class="list-group-item">
                                                <a href="<?php echo $download['download_url'] ?>">
                                                    <i class="fa fa-download"
                                                       aria-hidden="true"></i> <?php echo $download['download_text'] ?>
                                                </a>
                                            </li>
											<?php
										}
										?>
                                    </ul>
                                </div>
                            </div>

                        </div>
						<?php
					}
					?>
					<?php the_content(); ?>
                </article>
            </div>
        </div>
    </div>
</main>
