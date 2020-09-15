<?php
defined('TYPO3_MODE') || die('Access denied.');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('@import "EXT:vt9/Configuration/TSconfig/BackendLayouts.tsconfig"');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('@import "EXT:vt9/Configuration/TSconfig/Page.tsconfig"');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('@import "EXT:vt9/Configuration/TSconfig/Gridelements.tsconfig"');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('@import "EXT:vt9/Configuration/TSconfig/User.tsconfig"');

$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['vt9'] = 'EXT:vt9/Configuration/RTE/vt9.yaml';
