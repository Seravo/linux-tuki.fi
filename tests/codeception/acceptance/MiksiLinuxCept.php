<?php
/*
 * Simple browsing around the site
 */

$I = new AcceptanceTester($scenario);
$I->amOnPage('/miksi-linux-ja-avoin-lahdekoodi/');
$I->checkBrowserConsole();
$I->see('Miten VALO toimii?');
