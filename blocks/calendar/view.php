<?php  defined('C5_EXECUTE') or die("Access Denied.");
$calendarId = uniqid("calendar_");

$fp = new Permissions($f);
if ($fp->canViewFile()) : ?>
    <div id="<?= $calendarId ?>" class="calendar-wrap">
        <div class="inner">
            <div class="header clearfix">
                <nav>
                    <span class="prev"></span>
                    <span class="next"></span>
                </nav>
                <h2 class="month"></h2>
                <h3 class="year"></h3>
            </div>
            <div class="fc-calendar-container"></div>
        </div>
    </div>

    <script>
        $(function () {

            var transEndEventNames = {
                    'WebkitTransition': 'webkitTransitionEnd',
                    'MozTransition': 'transitionend',
                    'OTransition': 'oTransitionEnd',
                    'msTransition': 'MSTransitionEnd',
                    'transition': 'transitionend'
                },
                transEndEventName = transEndEventNames[ Modernizr.prefixed('transition') ],
                $wrapper = $('#<?= $calendarId ?> .inner'),
                $calendar = $('#<?= $calendarId ?> .fc-calendar-container'),
                cal = $calendar.calendario({
                    onDayClick: function ($el, $contentEl, dateProperties) {

                        if ($contentEl.length > 0) {
                            showEvents($contentEl, dateProperties);
                        }

                    },
                    weeks : [ 'Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi' ],
                    weekabbrs : [ 'Dim', 'Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam' ],
                    months : [ 'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Decembre' ],
                    monthabbrs : [ 'Jan', 'Fév', 'Mar', 'Avr', 'Mai', 'Jui', 'Juil', 'Aôu', 'Sep', 'Oct', 'Nov', 'Dec' ],
                    caldata: codropsEvents,
                    displayWeekAbbr: true
                }),
                $month = $('#<?= $calendarId ?> .month').html(cal.getMonthName()),
                $year = $('#<?= $calendarId ?> .year').html(cal.getYear());

            $('#<?= $calendarId ?> .next').on('click', function () {
                cal.gotoNextMonth(updateMonthYear);
            });
            $('#<?= $calendarId ?> .prev').on('click', function () {
                cal.gotoPreviousMonth(updateMonthYear);
            });

            function updateMonthYear() {
                $month.html(cal.getMonthName());
                $year.html(cal.getYear());
            }

            // just an example..
            function showEvents($contentEl, dateProperties) {

                hideEvents();

                var $events = $('<div id="content-reveal" class="content-reveal"><h4>Events for ' + dateProperties.monthname + ' ' + dateProperties.day + ', ' + dateProperties.year + '</h4></div>'),
                    $close = $('<span class="content-close"></span>').on('click', hideEvents);

                $events.append($contentEl.html(), $close).insertAfter($wrapper);

                setTimeout(function () {
                    $events.css('top', '0%');
                }, 25);

            }

            function hideEvents() {

                var $events = $('#content-reveal');
                if ($events.length > 0) {

                    $events.css('top', '100%');
                    Modernizr.csstransitions ? $events.on(transEndEventName, function () {
                        $(this).remove();
                    }) : $events.remove();

                }

            }

        });
    </script>
<? endif ?>

