<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Controller;


use T3einfachmacher\Calculator\Domain\Model\Contributions;
use T3einfachmacher\Calculator\Domain\Repository\ContributionRepository;
use T3einfachmacher\Calculator\Domain\Repository\ContributionsRepository;
use TYPO3\CMS\Core\Utility\GeneralUtility;
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
 * ContributionsController
 */
class IndexController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController
{

    /**
     * contributionsRepository
     *
     * @var ContributionsRepository
     */
    protected $contributionsRepository = null;


    /**
     * contributionRepository
     *
     * @var ContributionRepository
     */
    protected $contributionRepository = null;



    /**
     * @param ContributionsRepository $contributionsRepository
     */
    public function injectContributionsRepository(ContributionsRepository $contributionsRepository)
    {
        $this->contributionsRepository = $contributionsRepository;
    }

    /**
     * @param ContributionRepository $contributionRepository
     */
    public function injectContributionRepository(ContributionRepository $contributionRepository)
    {
        $this->contributionRepository = $contributionRepository;
    }



    /**
     * action index
     *
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function indexAction(): \Psr\Http\Message\ResponseInterface
    {
        if (!empty($this->settings['selectedContribution']))
            $selectedContribution = $this->settings['selectedContribution'] ?? NULL;

        $selectedContributionRecord = $this->contributionsRepository->findByUid($selectedContribution);
        $this->view->assign("selectedContribution",$selectedContributionRecord);
        return $this->htmlResponse();
    }

    /**
     * action list
     *
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function listAction(): \Psr\Http\Message\ResponseInterface
    {
        $contributions = $this->contributionsRepository->findAll();
        $this->view->assign('contributions', $contributions);
        return $this->htmlResponse();
    }


    /**
     * action search
     *
     * @return \Psr\Http\Message\ResponseInterface
    */
    public function searchAction(): \Psr\Http\Message\ResponseInterface {
        $requestedUri = $this->request->getUri();

        if ($this->request->hasArgument('age'))
            $requestAge = $this->request->getArgument('age');
        if (empty($requestAge))
            $requestAge = 0;
        if (!empty($this->settings['selectedContribution']))
            $selectedContributionID = $this->settings['selectedContribution'] ?? NULL;

        // klassische Methode über ne Extbase Query nur zum Testen
        //$data = $this->contributionRepository->findEntryByAge($selectedContribution,$requestAge);

        // Zusammenbau der Route für den API Aufruf hinten rum
        $endPoint = $this->contributionsRepository->getAPIRouteByID($selectedContributionID);
        $queryParams = null;

        if (!empty($endPoint)) {
            $queryParams = $requestedUri->getScheme()."://".$requestedUri->getHost();
            $queryParams .= $endPoint.'?'.GeneralUtility::implodeArrayForUrl("",array("age"=>$requestAge));
        }

        $apiResponse = null;
        try {
            $apiRequest = GeneralUtility::getUrl($queryParams);

            if (!empty($apiRequest))
                list($apiResponse) = json_decode($apiRequest,true);

        } catch (\Exception $e) {
            echo 'Exception abgefangen: ',  $e->getMessage(), "\n";
        }
        $this->view->assign("searchResult",$apiResponse);
        $this->view->assign("age",$requestAge);
        $this->view->assign("contributionID",$selectedContributionID);

        return $this->htmlResponse();

    }

}
