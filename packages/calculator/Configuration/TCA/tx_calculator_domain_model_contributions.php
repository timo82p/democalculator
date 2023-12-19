<?php
return [
    'ctrl' => [
        'title' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions',
        'label' => 'fullname',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'sortby' => 'sorting',
        'delete' => 'deleted',
        'enablecolumns' => [
            'disabled' => 'hidden',
            'starttime' => 'starttime',
            'endtime' => 'endtime',
        ],
        'searchFields' => 'fullname,apiroute',
        'iconfile' => 'EXT:calculator/Resources/Public/Icons/tx_calculator_domain_model_contributions.gif'
    ],
    'types' => [
        '1' => ['showitem' => 'fullname, apiroute, collection, --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access, hidden, starttime, endtime'],
    ],
    'columns' => [
        'hidden' => [
            'exclude' => true,
            'label' => 'LLL:EXT:core/Resources/Private/Language/locallang_general.xlf:LGL.visible',
            'config' => [
                'type' => 'check',
                'renderType' => 'checkboxToggle',
                'items' => [
                    [
                        0 => '',
                        1 => '',
                        'invertStateDisplay' => true
                    ]
                ],
            ],
        ],
        'starttime' => [
            'exclude' => true,
            'label' => 'LLL:EXT:core/Resources/Private/Language/locallang_general.xlf:LGL.starttime',
            'config' => [
                'type' => 'input',
                'renderType' => 'inputDateTime',
                'eval' => 'datetime,int',
                'default' => 0,
                'behaviour' => [
                    'allowLanguageSynchronization' => true
                ]
            ],
        ],
        'endtime' => [
            'exclude' => true,
            'label' => 'LLL:EXT:core/Resources/Private/Language/locallang_general.xlf:LGL.endtime',
            'config' => [
                'type' => 'input',
                'renderType' => 'inputDateTime',
                'eval' => 'datetime,int',
                'default' => 0,
                'range' => [
                    'upper' => mktime(0, 0, 0, 1, 1, 2038)
                ],
                'behaviour' => [
                    'allowLanguageSynchronization' => true
                ]
            ],
        ],

        'fullname' => [
            'exclude' => true,
            'label' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions.fullname',
            'description' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions.fullname.description',
            'config' => [
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim',
                'default' => ''
            ],
        ],
        'apiroute' => [
            'exclude' => true,
            'label' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions.apiroute',
            'description' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions.apiroute.description',
            'config' => [
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim',
                'default' => ''
            ],
        ],
        'collection' => [
            'exclude' => true,
            'label' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions.collection',
            'description' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contributions.collection.description',
            'config' => [
                'type' => 'inline',
                'foreign_table' => 'tx_calculator_domain_model_contribution',
                'foreign_field' => 'contributions',
                'maxitems' => 9999,
                'behaviour' => [
                    'allowLanguageSynchronization' => true,
                    'enableCascadingDelete' => true,
                ],
                'appearance' => [
                    'collapseAll' => 1,
                    'levelLinksPosition' => 'top',
                    'showSynchronizationLink' => 1,
                    'showPossibleLocalizationRecords' => 1,
                    'showAllLocalizationLink' => 1
                ],
            ],

        ],

    ],
];
