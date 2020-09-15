<?php
defined('TYPO3_MODE') || die();

call_user_func(function () {

$GLOBALS['TCA']['tt_content']['ctrl']['typeicon_classes']['mymaskexport_accordeon'] = 'tx_mymaskexport_accordeon';
$tempColumns = [
    'tx_mymaskexport_accordionelement' => [
        'config' => [
            'appearance' => [
                'enabledControls' => [
                    'dragdrop' => '1',
                ],
                'expandSingle' => '1',
                'levelLinksPosition' => 'both',
                'newRecordLinkTitle' => 'Neues Element',
                'useSortable' => '1',
            ],
            'foreign_field' => 'parentid',
            'foreign_sortby' => 'sorting',
            'foreign_table' => 'tx_mymaskexport_accordionelement',
            'foreign_table_field' => 'parenttable',
            'type' => 'inline',
        ],
        'exclude' => '1',
        'label' => 'LLL:EXT:my_mask_export/Resources/Private/Language/locallang_db.xlf:tt_content.tx_mymaskexport_accordionelement',
    ],
];
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns('tt_content', $tempColumns);
$GLOBALS['TCA']['tt_content']['columns']['CType']['config']['items'][] = [
    'LLL:EXT:my_mask_export/Resources/Private/Language/locallang_db.xlf:tt_content.CType.div._mymaskexport_',
    '--div--',
];
$GLOBALS['TCA']['tt_content']['columns']['CType']['config']['items'][] = [
    'LLL:EXT:my_mask_export/Resources/Private/Language/locallang_db.xlf:tt_content.CType.mymaskexport_accordeon',
    'mymaskexport_accordeon',
    'tx_mymaskexport_accordeon',
];
$tempTypes = [
    'mymaskexport_accordeon' => [
        'columnsOverrides' => [
            'bodytext' => [
                'config' => [
                    'enableRichtext' => 1,
                ],
            ],
        ],
        'showitem' => '--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:general,--palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.general;general,header,header_layout,tx_mymaskexport_accordionelement,--div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.appearance,--palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.frames;frames,--palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.appearanceLinks;appearanceLinks,--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:language,--palette--;;language,--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access,--palette--;;hidden,--palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.access;access,--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:categories,--div--;LLL:EXT:core/Resources/Private/Language/locallang_tca.xlf:sys_category.tabs.category,categories,--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:notes,rowDescription,--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:extended',
    ],
];
$GLOBALS['TCA']['tt_content']['types'] += $tempTypes;
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
    'my_mask_export',
    'Configuration/TypoScript/',
    'my_mask_export'
);

});

