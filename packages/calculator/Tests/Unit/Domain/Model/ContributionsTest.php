<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Tests\Unit\Domain\Model;

use PHPUnit\Framework\MockObject\MockObject;
use TYPO3\TestingFramework\Core\AccessibleObjectInterface;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

/**
 * Test case
 *
 * @author Timo Prüssing <timo.pruessing@t-online.de>
 */
class ContributionsTest extends UnitTestCase
{
    /**
     * @var \T3einfachmacher\Calculator\Domain\Model\Contributions|MockObject|AccessibleObjectInterface
     */
    protected $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = $this->getAccessibleMock(
            \T3einfachmacher\Calculator\Domain\Model\Contributions::class,
            ['dummy']
        );
    }

    protected function tearDown(): void
    {
        parent::tearDown();
    }

    /**
     * @test
     */
    public function getFullnameReturnsInitialValueForString(): void
    {
        self::assertSame(
            '',
            $this->subject->getFullname()
        );
    }

    /**
     * @test
     */
    public function setFullnameForStringSetsFullname(): void
    {
        $this->subject->setFullname('Conceived at T3CON10');

        self::assertEquals('Conceived at T3CON10', $this->subject->_get('fullname'));
    }

    /**
     * @test
     */
    public function getApirouteReturnsInitialValueForString(): void
    {
        self::assertSame(
            '',
            $this->subject->getApiroute()
        );
    }

    /**
     * @test
     */
    public function setApirouteForStringSetsApiroute(): void
    {
        $this->subject->setApiroute('Conceived at T3CON10');

        self::assertEquals('Conceived at T3CON10', $this->subject->_get('apiroute'));
    }

    /**
     * @test
     */
    public function getCollectionReturnsInitialValueForContribution(): void
    {
        $newObjectStorage = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
        self::assertEquals(
            $newObjectStorage,
            $this->subject->getCollection()
        );
    }

    /**
     * @test
     */
    public function setCollectionForObjectStorageContainingContributionSetsCollection(): void
    {
        $collection = new \T3einfachmacher\Calculator\Domain\Model\Contribution();
        $objectStorageHoldingExactlyOneCollection = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
        $objectStorageHoldingExactlyOneCollection->attach($collection);
        $this->subject->setCollection($objectStorageHoldingExactlyOneCollection);

        self::assertEquals($objectStorageHoldingExactlyOneCollection, $this->subject->_get('collection'));
    }

    /**
     * @test
     */
    public function addCollectionToObjectStorageHoldingCollection(): void
    {
        $collection = new \T3einfachmacher\Calculator\Domain\Model\Contribution();
        $collectionObjectStorageMock = $this->getMockBuilder(\TYPO3\CMS\Extbase\Persistence\ObjectStorage::class)
            ->onlyMethods(['attach'])
            ->disableOriginalConstructor()
            ->getMock();

        $collectionObjectStorageMock->expects(self::once())->method('attach')->with(self::equalTo($collection));
        $this->subject->_set('collection', $collectionObjectStorageMock);

        $this->subject->addCollection($collection);
    }

    /**
     * @test
     */
    public function removeCollectionFromObjectStorageHoldingCollection(): void
    {
        $collection = new \T3einfachmacher\Calculator\Domain\Model\Contribution();
        $collectionObjectStorageMock = $this->getMockBuilder(\TYPO3\CMS\Extbase\Persistence\ObjectStorage::class)
            ->onlyMethods(['detach'])
            ->disableOriginalConstructor()
            ->getMock();

        $collectionObjectStorageMock->expects(self::once())->method('detach')->with(self::equalTo($collection));
        $this->subject->_set('collection', $collectionObjectStorageMock);

        $this->subject->removeCollection($collection);
    }
}
