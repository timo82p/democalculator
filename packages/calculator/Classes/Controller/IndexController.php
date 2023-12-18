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
     * action list
     *
     * @return \Psr\Http\Message\ResponseInterface
    */
    public function searchAction(): \Psr\Http\Message\ResponseInterface {

        if ($this->request->hasArgument('age'))
            $requestAge = $this->request->getArgument('age');
        if (empty($requestAge))
            $requestAge = 0;
        if (!empty($this->settings['selectedContribution']))
            $selectedContributionID = $this->settings['selectedContribution'] ?? NULL;

        // klassische Methode über ne Extbase Query nur zum Testen
        ####$data = $this->contributionRepository->findEntryByAge($selectedContribution,$requestAge);

        $this->view->assign("age",$requestAge);

        // Zusammenbau der Route für den API Aufruf hinten rum
        $route = $this->contributionsRepository->getAPIRouteByID($selectedContributionID);
        $baseURL =  $this->request->getUri()->getScheme()."://".$this->request->getUri()->getHost();


        try {
            $apiRequest = GeneralUtility::getUrl($baseURL.$route.'?age='.$requestAge);

            if (!empty($apiRequest))
                $apiReponse = json_decode($apiRequest,true);

        } catch (\Exception $e) {
            echo 'Exception abgefangen: ',  $e->getMessage(), "\n";
        }

        if (is_array($apiReponse) && !empty($apiReponse) ) {
            $lastEntry = count($apiReponse)-1;
            $this->view->assign("searchResult",$apiReponse[$lastEntry]);
        }

        /*
        if (is_object($data) && $data->count() > 0) {
            $lastEntry = $data->count()-1;
            $this->view->assign("searchResult",$data[$lastEntry]);
        }
        */

        return $this->htmlResponse();

    }

}
