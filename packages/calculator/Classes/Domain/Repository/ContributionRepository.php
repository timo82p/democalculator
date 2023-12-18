<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Domain\Repository;


use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Persistence\Generic\Storage\Typo3DbQueryParser;
use TYPO3\CMS\Extbase\Persistence\QueryInterface as QueryInterfaceAlias;
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;

/**
 * This file is part of the "Contribution-Calculator" Extension for TYPO3 CMS.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * (c) 2023 Timo Prüssing <timo.pruessing@t-online.de>
 */

/**
 * The repository for Contributions
 */
class ContributionRepository extends \TYPO3\CMS\Extbase\Persistence\Repository {


    /**
     * @param $uid
     * @param $age
     */
    public function findEntryByAge($uid, $age = 5)
    {
        $query = $this->createQuery();
        $query->matching(
            $query->logicalAnd(
                [
                $query->equals('contributions', $uid),
                $query->between("age",0,$age)
            ])
        );
        $query->setOrderings(['age' => QueryInterfaceAlias::ORDER_ASCENDING]);


        $result = $query->execute();

        return $result;
    }


    /**
     * Debug the Query of the Extbase Generating
     *
     * @param $query
     * @return void
     */
    private function debugQuery($query)
    {
        $queryParser = GeneralUtility::makeInstance(Typo3DbQueryParser::class);
        echo $queryParser->convertQueryToDoctrineQueryBuilder($query)->getSQL();
        DebuggerUtility::var_dump($queryParser->convertQueryToDoctrineQueryBuilder($query)->getParameters());
    }
}
