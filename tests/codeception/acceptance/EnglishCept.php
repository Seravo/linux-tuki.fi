<?php
/*
 * Simple browsing around the site
 */

$I = new AcceptanceTester($scenario);
$I->amOnPage('/en/');
$I->checkBrowserConsole();
$I->see('Finn on board');
