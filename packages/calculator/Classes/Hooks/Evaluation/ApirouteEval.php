<?php

namespace T3einfachmacher\Calculator\Hooks\Evaluation;

use TYPO3\CMS\Core\Messaging\FlashMessage;
use TYPO3\CMS\Core\Messaging\FlashMessageService;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;

class ApirouteEval
{

    public $dataTable = 'tx_calculator_domain_model_contributions';

    /**
     * JavaScript code for client side validation/evaluation
     *
     * @return string JavaScript code for client side validation/evaluation
     */
    public function returnFieldJS() {
        return 'return value;';
    }

    /**
     * Server-side validation/evaluation on saving the record
     *
     * @param string $value The field value to be evaluated
     * @param string $is_in The "is_in" value of the field configuration from TCA
     * @param bool $set Boolean defining if the value is written to the database or not.
     * @return string Evaluated field value
     */
    public function evaluateFieldValue($value, $is_in, &$set) {

        $formData = GeneralUtility::_GP('data');
        $recordID = key($formData[$this->dataTable]);
        $record = $formData[$this->dataTable][$recordID];

        $pattern = '/^\/api\/v(\d+)\/(.+\/)?$/i';

        if (preg_match($pattern, $record['apiroute']) == false) {
            $this->flashMessage("URL wurde angepasst","Dies ist keine valide REST-url",FlashMessage::NOTICE);
            $value = str_replace(array(chr(92)),array("/"),$value);
            $value = $value."/" ;

            $set = false;
        }



        return $value;
    }




    /**
     * Server-side validation/evaluation on opening the record
     *
     * @param array $parameters Array with key 'value' containing the field value from the database
     * @return string Evaluated field value
     */
    public function deevaluateFieldValue(array $parameters) {
        return $parameters['value'];

    }



    /**
     * @param string $messageTitle
     * @param string $messageText
     * @param int $severity
     */
    protected function flashMessage($messageTitle, $messageText, $severity = FlashMessage::ERROR)
    {
        $message = GeneralUtility::makeInstance(
            FlashMessage::class,
            $messageText,
            $messageTitle,
            $severity,
            true
        );

        $flashMessageService = GeneralUtility::makeInstance(FlashMessageService::class);
        $messageQueue = $flashMessageService->getMessageQueueByIdentifier();
        $messageQueue->addMessage($message);
    }

}
