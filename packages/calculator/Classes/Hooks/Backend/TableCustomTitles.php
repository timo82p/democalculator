<?php

namespace T3einfachmacher\Calculator\Hooks\Backend;

use TYPO3\CMS\Backend\Utility\BackendUtility;

class TableCustomTitles
{
    public function contributionTitle(&$parameters, $parentObject)
    {

        $record = BackendUtility::getRecord($parameters['table'], $parameters['row']['uid']);
        $newTitle = $record['fullname'];
        $newTitle .= ' (REST Route:: ' . strip_tags($record['apiroute']). ')';
        $parameters['title'] = $newTitle;
    }
}
