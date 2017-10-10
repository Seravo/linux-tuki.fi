<?php

/**
 * WP-nav-menus
 *
 * @package Linux tuki
 */

/**
 * Main menu
 */
function linux_tuki_main_menu() {
    wp_nav_menu( [
        'theme_location'  => 'top_nav',
        'container'       => false,
        'container_class' => '',
        'container_id'    => '',
        'menu_class'      => 'main-menu',
        'menu_id'         => '',
        'echo'            => true,
        'fallback_cb'     => '',
        'before'          => '',
        'after'           => '',
        'link_before'     => '',
        'link_after'      => '',
        'items_wrap'      => '%3$s',
        'depth'           => 2,
        'walker'          => new DigiaWP\WP_navwalker
    ] );
}

/**
 * Register the menu
 */
register_nav_menus( [
    'top_nav' => __( 'Main menu', TEXT_DOMAIN )
] );
