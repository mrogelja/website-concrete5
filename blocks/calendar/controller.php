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
    protected $btExportFileColumns = array('events');

    public function getBlockTypeDescription()
    {
        return t("Affiche un calendrier avec des évènements");
    }

    public function getBlockTypeName()
    {
        return t("Calendrier");
    }

    public function getEvents() {

        return $this->events;
    }

    public function on_page_view() {
        $html = Loader::helper('html');
        $uh = Loader::helper('concrete/urls');

        $blockAssetsUrl = $uh->getBlockTypeAssetsURL($this->getBlockObject()) . '/calendar/';

        $this->addHeaderItem($html->css($blockAssetsUrl.'css/calendar.css'));
        $this->addHeaderItem($html->css($blockAssetsUrl.'css/custom.css'));

        $this->addHeaderItem($html->javascript($blockAssetsUrl.'js/jquery.calendario.js'));
    }

    public function action_edit_events(){
        $date   = $_GET['date'];
        $allEvents = json_decode($this->events, true);

        $hours   = $_POST['hours'];
        $data  = $_POST['events'];

        $events = array_combine($hours, $data);

        ksort($events);

        $allEvents[$date] = $events;

        try{
            $this->save(array(
                'events' => json_encode($allEvents)
            ));

            echo json_encode(array(
                'status' => 200,
                'date'   => $date,
                'events' => $events
            ));
        } catch (\Exception $e) {
            echo json_encode(array(
                'status' => 500,
                'error' => $e->getMessage()
            ));
        }

        exit;
    }
}