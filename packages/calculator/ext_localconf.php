<?php
defined('TYPO3') || die();

(static function() {
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
        'Calculator',
        'Pi1',
        [
            \T3einfachmacher\Calculator\Controller\IndexController::class => 'index, list,search'
        ],
        // non-cacheable actions
        [
            \T3einfachmacher\Calculator\Controller\IndexController::class => 'search'
        ]
    );

    // wizards
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
        'mod {
            wizards.newContentElement.wizardItems.plugins {
                elements {
                    pi1 {
                        iconIdentifier = calculator-plugin-pi1
                        title = LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.name
                        description = LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.description
                        tt_content_defValues {
                            CType = list
                            list_type = calculator_pi1
                        }
                    }
                }
                show = *
            }
       }'
    );
})();
