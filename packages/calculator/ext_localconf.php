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
### Add own Button to the View
$GLOBALS['TYPO3_CONF_VARS']['SC_OPTIONS']['Backend\Template\Components\ButtonBar']['getButtonsHook']['calculator'] = T3einfachmacher\Calculator\Hooks\Backend\ButtonBar::class.'->getButtons';

$iconRegistry = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Imaging\IconRegistry::class);
$iconRegistry->registerIcon(
    'calculator-icon-api',
    \TYPO3\CMS\Core\Imaging\IconProvider\BitmapIconProvider::class,
    ['source' => 'EXT:calculator/Resources/Public/Icons/api_icon32.png']
);

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
    '@import "EXT:calculator/Configuration/Tsconfig/page.tsconfig"'
);
