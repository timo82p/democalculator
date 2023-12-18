<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Tests\Unit\Controller;

use PHPUnit\Framework\MockObject\MockObject;
use TYPO3\TestingFramework\Core\AccessibleObjectInterface;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;
use TYPO3Fluid\Fluid\View\ViewInterface;

/**
 * Test case
 *
 * @author Timo Prüssing <timo.pruessing@t-online.de>
 */
class ContributionsControllerTest extends UnitTestCase
{
    /**
     * @var \T3einfachmacher\Calculator\Controller\ContributionsController|MockObject|AccessibleObjectInterface
     */
    protected $subject;

    protected function setUp(): void
    {
        parent::setUp();
        $this->subject = $this->getMockBuilder($this->buildAccessibleProxy(\T3einfachmacher\Calculator\Controller\ContributionsController::class))
            ->onlyMethods(['redirect', 'forward', 'addFlashMessage'])
            ->disableOriginalConstructor()
            ->getMock();
    }

    protected function tearDown(): void
    {
        parent::tearDown();
    }

    /**
     * @test
     */
    public function listActionFetchesAllContributionsFromRepositoryAndAssignsThemToView(): void
    {
        $allContributions = $this->getMockBuilder(\TYPO3\CMS\Extbase\Persistence\ObjectStorage::class)
            ->disableOriginalConstructor()
            ->getMock();

        $contributionsRepository = $this->getMockBuilder(\T3einfachmacher\Calculator\Domain\Repository\ContributionsRepository::class)
            ->onlyMethods(['findAll'])
            ->disableOriginalConstructor()
            ->getMock();
        $contributionsRepository->expects(self::once())->method('findAll')->will(self::returnValue($allContributions));
        $this->subject->_set('contributionsRepository', $contributionsRepository);

        $view = $this->getMockBuilder(ViewInterface::class)->getMock();
        $view->expects(self::once())->method('assign')->with('contributions', $allContributions);
        $this->subject->_set('view', $view);

        $this->subject->listAction();
    }
}
