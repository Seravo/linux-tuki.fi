<?php
/*
 * Simple browsing around the site
 */

$I = new AcceptanceTester($scenario);
$I->amOnPage('/etayhteys/');
$I->checkBrowserConsole();
$I->see('Linux-tuki.fi-etäyhteys');
