<?php

return [
    'frontend' => [
        'typo3/calculator/webapi' => [
            'target' => T3einfachmacher\Calculator\Middleware\ApiRequest::class,
            'before' => [
                'typo3/cms-frontend/eid',
                'typo3/cms-frontend/tsfe',
            ],

        ],
    ],
];

