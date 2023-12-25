<?php

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
'Calculator',
'Pi1',
'Beitrags-Rechner Alter'
);

$pluginSignature = 'calculator_pi1';
$GLOBALS['TCA']['tt_content']['types']['list']['subtypes_addlist'][$pluginSignature] = 'pi_flexform';
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPiFlexFormValue(
    $pluginSignature,
    // FlexForm configuration schema file
    'FILE:EXT:calculator/Configuration/FlexForms/Flexform.xml'
);
