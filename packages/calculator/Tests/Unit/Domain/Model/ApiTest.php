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
class ApiTest extends UnitTestCase
{
    /**
     * @var \T3einfachmacher\Calculator\Domain\Model\Api|MockObject|AccessibleObjectInterface
     */
    protected $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = $this->getAccessibleMock(
            \T3einfachmacher\Calculator\Domain\Model\Api::class,
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
    public function dummyTestToNotLeaveThisFileEmpty(): void
    {
        self::markTestIncomplete();
    }
}
