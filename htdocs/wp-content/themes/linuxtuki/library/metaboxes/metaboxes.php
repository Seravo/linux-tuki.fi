<?php

/**
 * If using metaboxes (CMB2 etc.) which are not tied to post-types
 * Add the logic here =>
 *
 * @package theme2017
 *
 */

add_action( 'cmb2_admin_init', 'frontpage_metaboxes' );
add_action( 'cmb2_admin_init', 'downloads_metaboxes' );

/**
 * Add boxes to front page
 */
function frontpage_metaboxes() {

	$prefix = '_linuxtuki_';

	/**
	 * Initiate the metabox
	 */
	$cmb = new_cmb2_box( array(
		'id'           => 'frontpage_settings',
		'title'        => __( 'Front page settings', TEXT_DOMAIN ),
		'object_types' => array( 'page' ), // Post type
		'show_on'      => array( 'key' => 'page-template', 'value' => 'custom-templates/home-template.php' ),
		'context'      => 'normal',
		'priority'     => 'high',
		'show_names'   => true
	) );

	$cmb->add_field( array(
		'name' => __( 'Left box title', TEXT_DOMAIN ),
		'id'   => $prefix . 'left_box_title',
		'type' => 'text',
	) );

	$cmb->add_field( array(
		'name' => __( 'Left box link', TEXT_DOMAIN ),
		'id'   => $prefix . 'left_box_link',
		'type' => 'text',
	) );

	$cmb->add_field( array(
		'name' => __( 'Left box image', TEXT_DOMAIN ),
		'id'   => $prefix . 'left_box_image',
		'type' => 'file',
	) );

	$cmb->add_field( array(
		'name' => __( 'Right box title', TEXT_DOMAIN ),
		'id'   => $prefix . 'right_box_title',
		'type' => 'text',
	) );

	$cmb->add_field( array(
		'name' => __( 'Right box link', TEXT_DOMAIN ),
		'id'   => $prefix . 'right_box_link',
		'type' => 'text',
	) );

	$cmb->add_field( array(
		'name' => __( 'Right box image', TEXT_DOMAIN ),
		'id'   => $prefix . 'right_box_image',
		'type' => 'file',
	) );

	$carouselGroup = $cmb->add_field( array(
		'id'          => $prefix . 'logos',
		'type'        => 'group',
		'description' => __( 'Logos shown in the bottom of the page', TEXT_DOMAIN ),
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'   => __( 'Logo {#}', TEXT_DOMAIN ), // since version 1.1.4, {#} gets replaced by row number
			'add_button'    => __( 'Add', TEXT_DOMAIN ),
			'remove_button' => __( 'Remove', TEXT_DOMAIN ),
			'sortable'      => true,
		),
	) );

	// Id's for group's fields only need to be unique for the group. Prefix is not needed.
	$cmb->add_group_field( $carouselGroup, array(
		'name' => 'Logo image',
		'id'   => 'logo_image',
		'type' => 'file',
	) );

}

/**
 * Add boxes to front page
 */
function downloads_metaboxes() {

	$prefix = '_linuxtuki_';

	/**
	 * Initiate the metabox
	 */
	$cmb = new_cmb2_box( array(
		'id'           => 'downloads_settings',
		'title'        => __( 'Downloads settings', TEXT_DOMAIN ),
		'object_types' => array( 'page' ), // Post type
		'show_on'      => array( 'key' => 'page-template', 'value' => 'default' ),
		'context'      => 'normal',
		'priority'     => 'high',
		'show_names'   => true
	) );

	$cmb->add_field( array(
		'name' => __( 'Downloads title', TEXT_DOMAIN ),
		'id'   => $prefix . 'downloads_title',
		'type' => 'text',
	) );

	$cmb->add_field( array(
		'name' => __( 'Downloads body text', TEXT_DOMAIN ),
		'id'   => $prefix . 'downloads_text',
		'type' => 'text',
	) );

	$downloadsGroup = $cmb->add_field( array(
		'id'          => $prefix . 'downloads',
		'type'        => 'group',
		'description' => __( 'Downloads', TEXT_DOMAIN ),
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'   => __( 'Downloads {#}', TEXT_DOMAIN ),
			// since version 1.1.4, {#} gets replaced by row number
			'add_button'    => __( 'Add', TEXT_DOMAIN ),
			'remove_button' => __( 'Remove', TEXT_DOMAIN ),
			'sortable'      => true,
		),
	) );

	// Id's for group's fields only need to be unique for the group. Prefix is not needed.
	$cmb->add_group_field( $downloadsGroup, array(
		'name' => 'Download text',
		'id'   => 'download_text',
		'type' => 'text',
	) );

	$cmb->add_group_field( $downloadsGroup, array(
		'name' => 'Download URL',
		'id'   => 'download_url',
		'type' => 'text',
	) );

}