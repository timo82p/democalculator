<?php
return [
    'ctrl' => [
        'title' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution',
        'label' => 'name',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'delete' => 'deleted',
        'enablecolumns' => [
            'disabled' => 'hidden',
            'starttime' => 'starttime',
            'endtime' => 'endtime',
        ],
        'searchFields' => 'name',
        'iconfile' => 'EXT:calculator/Resources/Public/Icons/tx_calculator_domain_model_contribution.gif'
    ],
    'types' => [
        '1' => ['showitem' => 'name, monity, age, --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access, hidden, starttime, endtime'],
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

        'name' => [
            'exclude' => true,
            'label' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution.name',
            'description' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution.name.description',
            'config' => [
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim,required',
                'default' => ''
            ],
        ],
        'monity' => [
            'exclude' => true,
            'label' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution.monity',
            'description' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution.monity.description',
            'config' => [
                'type' => 'input',
                'size' => 4,
                'eval' => 'int',
                'default' => 0
            ]
        ],
        'age' => [
            'exclude' => true,
            'label' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution.age',
            'description' => 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_domain_model_contribution.age.description',
            'config' => [
                'type' => 'input',
                'size' => 4,
                'eval' => 'int',
                'default' => 0
            ]
        ],
    
        'contributions' => [
            'config' => [
                'type' => 'passthrough',
            ],
        ],
    ],
];
