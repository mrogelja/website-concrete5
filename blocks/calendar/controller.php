<?php
defined('C5_EXECUTE') or die("Access Denied.");

/**
 * Controller for a block that displays a Calendar
 */
class CalendarBlockController extends BlockController
{

    protected $btInterfaceWidth = 600;
    protected $btInterfaceHeight = 250;
    protected $btTable = 'btCalendar';

    public function getBlockTypeDescription()
    {
        return t("Affiche un calendrier avec des évènements");
    }

    public function getBlockTypeName()
    {
        return t("Calendrier");
    }
}