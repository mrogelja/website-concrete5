<?php
defined('C5_EXECUTE') or die("Access Denied.");

/**
 * Controller for a block that displays an aside menu.
 */
class AsideMenuBlockController extends BlockController
{

    protected $btInterfaceWidth = 600;
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btInterfaceHeight = 250;
    protected $btTable = 'btAsideMenu';

    protected $btExportFileColumns = array('isSticky', 'title');

    public function getBlockTypeDescription()
    {
        return t("Ce menu permet de scanner tous les blocks de type « Contenu », trouver les ancres et en faire des liens dans un menu de navigation");
    }

    public function getBlockTypeName()
    {
        return t("Menu interne à la page");
    }

    public function isSticky() {

        return $this->isSticky;
    }

    public function getTitle() {

        return $this->title;
    }
}