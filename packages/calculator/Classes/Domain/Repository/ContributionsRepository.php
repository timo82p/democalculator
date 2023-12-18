<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Domain\Repository;

use TYPO3\CMS\Core\Database\ConnectionPool;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Persistence\Generic\Storage\Typo3DbQueryParser;
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
class ContributionsRepository extends \TYPO3\CMS\Extbase\Persistence\Repository
{

    /**
     * @var array
     */
    protected $defaultOrderings = ['sorting' => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_ASCENDING];



    /**
     * @param $uid
     * @param $age
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     * @return void
     */
    public function findContributionByAge($uid, $age = 9)
    {
        $query = $this->createQuery();
        $query->getQuerySettings()->setRespectStoragePage(true);

        $query->matching(
            $query->logicalAnd(
            [
                $query->equals('uid', $uid),
                $query->greaterThanOrEqual("collection.age", 0),
                $query->lessThanOrEqual("collection.age", $age),
            ]
            )
        );
        $result = $query->execute();

        return $result;
    }


    /**
     * @return void
     */
    public function getAPIRouteByID($uid) {


        $queryBuilder = GeneralUtility::makeInstance(ConnectionPool::class)
            ->getQueryBuilderForTable('tx_calculator_domain_model_contributions');
        $queryBuilder->getRestrictions()->removeAll();


        $statement = $queryBuilder
            ->select('apiroute')
            ->from('tx_calculator_domain_model_contributions')
            ->andWhere(
                $queryBuilder->expr()->eq('tx_calculator_domain_model_contributions.uid', $queryBuilder->createNamedParameter(intval($uid), \PDO::PARAM_INT)),
            )
            ->execute();

        return $statement->fetchOne();

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
