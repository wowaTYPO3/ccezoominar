<?php
defined('TYPO3_MODE') || die('Access denied.');

call_user_func(
    function()
    {

        \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile('vt9', 'Configuration/TypoScript', 'TYPO3 9 Videotraining Sitepackage');

    }
);
