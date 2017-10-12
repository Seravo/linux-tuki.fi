<?php

/**
 * The main Header template
 *
 * @package Linux tuki
 */

?>

<!doctype html>
<html class="no-js" <?php language_attributes(); ?>>
<head>

    <meta charset="<?php echo get_bloginfo( 'charset' ); ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="profile" href="http://gmpg.org/xfn/11">
	<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
<?php do_action( 'linux_tuki_after_body' ); ?>

<header id="header">
    <div class="navbar navbar-dropshadow navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target=".navbar-collapse"><span class="sr-only">Näytä/piilota navigaatio</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>

                <div class="navlinks">
                    <?php echo (pll_current_language() === 'fi') ? '<a href="/etayhteys" class="navlinks__main-link">Etäyhteys</a> |': ''; ?> <?php UTILS()->echo_lang_switcher(); ?>
                </div>

                <a class="navbar-brand" href="<?php echo home_url( '/' ) ?>">
                    <img alt="Seravo logo" class="nav-logo img-responsive"
                         src="<?php echo UTILS()->get_image_uri() . '/logo.png' ?>"/>
                </a>
                <h1 class="nav-logo-tagline"><?php pll_e( 'nav tagline' ) ?></h1>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
					<?php linux_tuki_main_menu(); ?>
                </ul>
            </div>
        </div>
    </div>
</header>
