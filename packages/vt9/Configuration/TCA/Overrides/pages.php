<?php
if (!defined('TYPO3_MODE')) {
    die('Access denied.');
}

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::registerPageTSConfigFile(
    'vt9',
    'Configuration/TSconfig/FooterBackendLayout.tsconfig',
    'Backend Layout Footer'
);