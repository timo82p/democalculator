<?php
defined('TYPO3') || die();

(static function() {
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_calculator_domain_model_contributions', 'EXT:calculator/Resources/Private/Language/locallang_csh_tx_calculator_domain_model_contributions.xlf');
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_calculator_domain_model_contributions');

    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_calculator_domain_model_contribution', 'EXT:calculator/Resources/Private/Language/locallang_csh_tx_calculator_domain_model_contribution.xlf');
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_calculator_domain_model_contribution');
})();
