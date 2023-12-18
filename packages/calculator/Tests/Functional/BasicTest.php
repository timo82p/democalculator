<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Tests\Functional;

use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

/**
 * Test case
 *
 * @author Timo Prüssing <timo.pruessing@t-online.de>
 */
class BasicTest extends FunctionalTestCase
{
    /**
     * @var array
     */
    protected $testExtensionsToLoad = [
        'typo3conf/ext/calculator',
    ];

    /**
     * Just a dummy to show that at least one test is actually executed
     *
     * @test
     */
    public function dummy(): void
    {
        $this->assertTrue(true);
    }
}
