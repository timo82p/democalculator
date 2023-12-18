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
class ContributionTest extends UnitTestCase
{
    /**
     * @var \T3einfachmacher\Calculator\Domain\Model\Contribution|MockObject|AccessibleObjectInterface
     */
    protected $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = $this->getAccessibleMock(
            \T3einfachmacher\Calculator\Domain\Model\Contribution::class,
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
    public function getNameReturnsInitialValueForString(): void
    {
        self::assertSame(
            '',
            $this->subject->getName()
        );
    }

    /**
     * @test
     */
    public function setNameForStringSetsName(): void
    {
        $this->subject->setName('Conceived at T3CON10');

        self::assertEquals('Conceived at T3CON10', $this->subject->_get('name'));
    }

    /**
     * @test
     */
    public function getMonityReturnsInitialValueForInt(): void
    {
        self::assertSame(
            0,
            $this->subject->getMonity()
        );
    }

    /**
     * @test
     */
    public function setMonityForIntSetsMonity(): void
    {
        $this->subject->setMonity(12);

        self::assertEquals(12, $this->subject->_get('monity'));
    }

    /**
     * @test
     */
    public function getAgeReturnsInitialValueForInt(): void
    {
        self::assertSame(
            0,
            $this->subject->getAge()
        );
    }

    /**
     * @test
     */
    public function setAgeForIntSetsAge(): void
    {
        $this->subject->setAge(12);

        self::assertEquals(12, $this->subject->_get('age'));
    }
}
