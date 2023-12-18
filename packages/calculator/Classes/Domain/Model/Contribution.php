<?php

declare(strict_types=1);

namespace T3einfachmacher\Calculator\Domain\Model;


/**
 * This file is part of the "Contribution-Calculator" Extension for TYPO3 CMS.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * (c) 2023 Timo Prüssing <timo.pruessing@t-online.de>
 */

/**
 * Contribution
 */
class Contribution extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity
{

    /**
     * name
     *
     * @var string
     * @TYPO3\CMS\Extbase\Annotation\Validate("NotEmpty")
     */
    protected $name = '';

    /**
     * monity
     *
     * @var int
     */
    protected $monity = 0;

    /**
     * age
     *
     * @var int
     */
    protected $age = 0;


    /**
     * contributions
     *
     * @var \T3einfachmacher\Calculator\Domain\Model\Contributions $contributions
     */
    protected $contributions;


    /**
     * Returns the name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Sets the name
     *
     * @param string $name
     * @return void
     */
    public function setName(string $name)
    {
        $this->name = $name;
    }

    /**
     * Returns the monity
     *
     * @return int
     */
    public function getMonity()
    {
        return $this->monity;
    }

    /**
     * Sets the monity
     *
     * @param int $monity
     * @return void
     */
    public function setMonity(int $monity)
    {
        $this->monity = $monity;
    }

    /**
     * Returns the age
     *
     * @return int
     */
    public function getAge()
    {
        return $this->age;
    }

    /**
     * Sets the age
     *
     * @param int $age
     * @return void
     */
    public function setAge(int $age)
    {
        $this->age = $age;
    }

    /**
     * @return Contributions
     */
    public function getContributions(): Contributions
    {
        return $this->contributions;
    }


}
