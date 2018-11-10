<?php
/*
 * Simple browsing around the site
 */

$I = new AcceptanceTester($scenario);
$I->amOnPage('/yritysasiakkaat/');
$I->checkBrowserConsole();
$I->see('Suomalaiset Linux-osaajat ');
