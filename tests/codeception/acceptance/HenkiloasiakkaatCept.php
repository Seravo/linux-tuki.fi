<?php
/*
 * Simple browsing around the site
 */

$I = new AcceptanceTester($scenario);
$I->amOnPage('/');
$I->checkBrowserConsole();
$I->see('Henkilöasiakkaille');
$I->click('a[href="/henkiloasiakkaat"] button');
$I->see('Kotikäynti 95 €');
