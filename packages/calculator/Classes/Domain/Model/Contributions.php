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
 * Api
 */
class Contributions extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity
{

    /**
     * fullname
     *
     * @var string
     */
    protected $fullname = '';

    /**
     * apiroute
     *
     * @var string
     */
    protected $apiroute = '';

    /**
     * collection
     *
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\T3einfachmacher\Calculator\Domain\Model\Contribution>
     * @TYPO3\CMS\Extbase\Annotation\ORM\Cascade("remove")
     */
    protected $collection = null;

    /**
     * Returns the fullname
     *
     * @return string
     */
    public function getFullname()
    {
        return $this->fullname;
    }

    /**
     * Sets the fullname
     *
     * @param string $fullname
     * @return void
     */
    public function setFullname(string $fullname)
    {
        $this->fullname = $fullname;
    }

    /**
     * __construct
     */
    public function __construct()
    {

        // Do not remove the next line: It would break the functionality
        $this->initializeObject();
    }

    /**
     * Initializes all ObjectStorage properties when model is reconstructed from DB (where __construct is not called)
     * Do not modify this method!
     * It will be rewritten on each save in the extension builder
     * You may modify the constructor of this class instead
     *
     * @return void
     */
    public function initializeObject()
    {
        $this->collection = $this->collection ?: new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
    }

    /**
     * Adds a Contribution
     *
     * @param \T3einfachmacher\Calculator\Domain\Model\Contribution $collection
     * @return void
     */
    public function addCollection(\T3einfachmacher\Calculator\Domain\Model\Contribution $collection)
    {
        $this->collection->attach($collection);
    }

    /**
     * Removes a Contribution
     *
     * @param \T3einfachmacher\Calculator\Domain\Model\Contribution $collectionToRemove The Contribution to be removed
     * @return void
     */
    public function removeCollection(\T3einfachmacher\Calculator\Domain\Model\Contribution $collectionToRemove)
    {
        $this->collection->detach($collectionToRemove);
    }

    /**
     * Returns the collection
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\T3einfachmacher\Calculator\Domain\Model\Contribution>
     */
    public function getCollection()
    {
        return $this->collection;
    }

    /**
     * Sets the collection
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\T3einfachmacher\Calculator\Domain\Model\Contribution> $collection
     * @return void
     */
    public function setCollection(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $collection)
    {
        $this->collection = $collection;
    }

    /**
     * Returns the apiroute
     *
     * @return string
     */
    public function getApiroute()
    {
        return $this->apiroute;
    }

    /**
     * Sets the apiroute
     *
     * @param string $apiroute
     * @return void
     */
    public function setApiroute(string $apiroute)
    {
        $this->apiroute = $apiroute;
    }
}
