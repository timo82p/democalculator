<?php

namespace T3einfachmacher\Calculator\Hooks\Backend;

use TYPO3\CMS\Backend\Utility\BackendUtility;
use TYPO3\CMS\Core\Page\PageRenderer;
use TYPO3\CMS\Backend\Template\Components\ButtonBar as CoreButtonBar;
use TYPO3\CMS\Core\Imaging\IconFactory;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Core\Imaging\Icon;
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;
use TYPO3\CMS\Backend\Routing\UriBuilder;
use TYPO3\CMS\Core\Localization\LanguageService;
use TYPO3\CMS\Core\Localization\LanguageServiceFactory;

class ButtonBar {

    /**
     * Table for the Dataview
     * @var string
     */
    public $table = 'tx_calculator_domain_model_contributions';

    /**
     * @var string
     */
    public $localLangFile = 'LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf';

    /**
     * Get buttons
     *
     * @param array $params
     * @param ButtonBar $buttonBar
     * @return array
     */
    public function getButtons(array $params, CoreButtonBar $buttonBar) {
        $buttons = $params['buttons'];
        $editParam = GeneralUtility::_GP('edit');



        // Nur bei Aufmachen der Einzelansicht
        if ( isset($editParam[$this->table]) == true ) {

            $baseUrlParam = $_SERVER['REQUEST_SCHEME']."://".$_SERVER['HTTP_HOST'];
            reset($editParam[$this->table]);
            $dataUid = key($editParam[$this->table]);

            $pageRenderer = GeneralUtility::makeInstance(PageRenderer::class);
            $iconFactory = GeneralUtility::makeInstance(IconFactory::class);
            $dataRow = BackendUtility::getRecord($this->table, intval($dataUid));

            $buttonItems = array(
                array("icon" => 'calculator-icon-api',
                    "label" => ":backend.button.apiroute",
                    "apiEndpoint" => $dataRow['apiroute'])
            );

            foreach($buttonItems as $i=>$button) {

                // Wenn kein API-Route brauchen wir auch keine Shortcut
                if (empty($dataRow['apiroute'])) continue;

                $item = $buttonBar->makeLinkButton();
                $jsParam = ' window.open("'.$baseUrlParam.$button['apiEndpoint'].'", \'_blank\'); return false;';

                $item->setIcon($iconFactory->getIcon($button['icon'], Icon::SIZE_SMALL))
                    ->setTitle($this->getLanguageService($button['label']))
                    ->setShowLabelText(true)
                    ->setOnClick($jsParam);

                $buttons[CoreButtonBar::BUTTON_POSITION_LEFT][7][] = $item;

            }




        }


        return $buttons;
    }

    /**
     * Returns LanguageService
     * @param string $key
     * @return \TYPO3\CMS\Core\Localization\LanguageService
     */
    protected function getLanguageService($key)	{
        return $GLOBALS['LANG']->sL($this->localLangFile.$key);
    }



    /**
     * Render einer BackendRoute für den jeweiligen Controller
     * @param $dataUid
     * @return mixed
     */
    public function renderBackendRoute($route,$dataUid) {
        $uriBuilder = GeneralUtility::makeInstance(UriBuilder::class);
        $link = $uriBuilder->buildUriFromRoute($route, array('uid' => $dataUid));

        return $link;
    }

}
