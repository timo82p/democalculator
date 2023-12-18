<?php
namespace T3einfachmacher\Calculator\Middleware;

use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Server\MiddlewareInterface;
use Psr\Http\Server\RequestHandlerInterface;
use T3einfachmacher\Calculator\Domain\Model\Contributions as ContributionsAlias;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use T3einfachmacher\Calculator\Domain\Repository\ContributionRepository;
use T3einfachmacher\Calculator\Domain\Repository\ContributionsRepository;
use TYPO3\CMS\Core\Database\ConnectionPool;

use TYPO3\CMS\Core\Http\JsonResponse;


class ApiRequest implements MiddlewareInterface {

    /**
     * Default Route für diese RestRoute
     * @var string
     */
    public $defaultRoute = "/api/v1";



    /**
     * @param ServerRequestInterface $request
     * @param RequestHandlerInterface $handler
     * @return ResponseInterface
     */
    public function process(
        ServerRequestInterface $request,
        RequestHandlerInterface $handler
    ): ResponseInterface {

        $normalizedParams = $request->getAttribute('normalizedParams');
        $queryString = $normalizedParams->getQueryString();
        $uri = $normalizedParams->getRequestUri();

        #debug($request->getUri()->getPath());
        ## https://demo.ddev.site/api/v1/contributions/?age=1
        #debug($request->getAttributes());
        #exit();

        try {

            if (isset($_GET['age']))
                $queryParameter = array('age'=>$_GET['age']);

            // Ermittlung der Daten für das übergeordnete Objekt
            $result = $this->getContributionsDataByRoute($request->getUri()->getPath());

            if (count($result) > 0) {
                #$collectionData = [];
                #$i = 0;
                #foreach($result as $key=>$data) {
                    #$collectionData[$i++] = array("name"=>$data['name'],"monity" => $data['monity'],"age" => $data['age']);
                    #$resultData = array("fullname" => $data['fullname'],"contributions" => $data['contributions'],"route" => $data['apiroute'], "ranges" => $collectionData);
                #}

                $result2 = $this->getDataFromContributionByAge($result[0]['contributions'],$_GET['age']);
                return new JsonResponse($result2);

            }

        } catch (Exception $e) {
            $jsonString = array("message"=>  'Exception abgefangen: '.$e->getMessage());
            return new JsonResponse($jsonString);

        }


        return $handler->handle($request);
    }




    #select * from  tx_calculator_domain_model_contribution where age between 0 and 10 and contributions = 1 order by age asc;
    public function getDataFromContributionByAge($collection,$age) {
        $queryBuilder = GeneralUtility::makeInstance(ConnectionPool::class)
            ->getQueryBuilderForTable('tx_calculator_domain_model_contribution');
        $queryBuilder->getRestrictions()->removeAll();

        $statement = $queryBuilder
            ->select('name','monity','age')
            ->from('tx_calculator_domain_model_contribution')
            ->andWhere(
                $queryBuilder->expr()->eq('tx_calculator_domain_model_contribution.contributions', $queryBuilder->createNamedParameter($collection, \PDO::PARAM_INT)),
                $queryBuilder->expr()->gte('tx_calculator_domain_model_contribution.age', $queryBuilder->createNamedParameter(0, \PDO::PARAM_STR)),
                $queryBuilder->expr()->lte('tx_calculator_domain_model_contribution.age', $queryBuilder->createNamedParameter($age, \PDO::PARAM_STR)),
            )
            ->addOrderBy('age',"asc")
            ->execute();

            return $statement->fetchAllAssociative();

    }


    /**
     * @param $path
     * @return \mixed[][]
     * @throws \Doctrine\DBAL\DBALException
     * @throws \Doctrine\DBAL\Driver\Exception
     */
    public function getContributionsDataByRoute($path) {
        $queryBuilder = GeneralUtility::makeInstance(ConnectionPool::class)
            ->getQueryBuilderForTable('tx_calculator_domain_model_contributions');
        $queryBuilder->getRestrictions()->removeAll();


        $statement = $queryBuilder
            ->select('*')
            ->from('tx_calculator_domain_model_contributions')
            ->leftJoin(
                'tx_calculator_domain_model_contributions',
                'tx_calculator_domain_model_contribution',
                "tx_calculator_domain_model_contribution",
                $queryBuilder->expr()->eq(
                    'contributions',
                    $queryBuilder->quoteIdentifier('tx_calculator_domain_model_contributions.uid')
                )
            )
            ->andWhere(
                $queryBuilder->expr()->eq('tx_calculator_domain_model_contributions.apiroute', $queryBuilder->createNamedParameter($path, \PDO::PARAM_STR)),
            )
            ->execute();

        return $statement->fetchAllAssociative();

    }

}
