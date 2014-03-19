<?php  defined('C5_EXECUTE') or die("Access Denied.");
$calendarId = uniqid("calendar_");
$page = Page::getCurrentPage();
$p = new Permissions($page);
$th = Loader::helper('concrete/urls');
$bt = $b->getBlockTypeObject();
?>

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
        <div class="fc-calendar-container">
        </div>
    </div>
</div>

<div id="calendar-reveal" class="reveal-modal" data-reveal></div>

<script>
    $(function () {
        var codropsEvents = <?= $this->controller->getEvents() ?>;
        var $events;

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
                    showEvents($contentEl, dateProperties);
                },
                weeks: [ 'Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi' ],
                weekabbrs: [ 'Dim', 'Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam' ],
                months: [ 'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Decembre' ],
                monthabbrs: [ 'Jan', 'Fév', 'Mar', 'Avr', 'Mai', 'Jui', 'Juil', 'Aôu', 'Sep', 'Oct', 'Nov', 'Dec' ],
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

        function pad(number, length) {
            var str = '' + number;
            while (str.length < length) {
                str = '0' + str;
            }
            return str;
        }

        function updateMonthYear() {
            $month.html(cal.getMonthName());
            $year.html(cal.getYear());
        }

        // just an example..
        function showEvents($contentEl, dateProperties) {
            hideEvents();

            $eventsWrapper = $('<div id="content-reveal" class="content-reveal"><h4>Événements le ' + dateProperties.monthname + ' ' + dateProperties.day + ', ' + dateProperties.year + '</h4></div>');
            var $close = $('<span class="content-close"></span>').on('click', hideEvents);

            $wrapper.append($eventsWrapper);
            $eventsWrapper.append($close);

            <? if ($p->canWrite()) : ?>
                var url = "<?= html_entity_decode($this->action("edit_events", "&date=+date+")); ?>".replace("+date+", pad(dateProperties.day, 2) + '-' + pad(dateProperties.month, 2) + '-' + dateProperties.year);
                var $edit = $('<div class="button small">Editer</div>');
                $eventsWrapper.append($edit);
                $edit.on("click", $.proxy(editEvents, this, $contentEl, dateProperties, url));
            <? endif ?>


            $events = $('<div class="content-reveal-body">' + ( $contentEl.length != 0 ? $contentEl.html() : ''  )+ '</div>');

            $eventsWrapper.append($events);

            setTimeout(function () {
                $eventsWrapper.css('top', '0%');
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

        function editEvents($contentEl, dateProperties, url) {
            hideEvents();

            $events = $('<div id="content-reveal" class="content-reveal"><h4>Événements le ' + dateProperties.monthname + ' ' + dateProperties.day + ', ' + dateProperties.year + '</h4></div>');
            var $close = $('<span class="content-close"></span>').on('click', hideEvents);
            var eventID = pad(dateProperties.day, 2) + '-' + pad(dateProperties.month, 2) + '-' + dateProperties.year;

            $events.append($close).insertAfter($wrapper);

            $form = $('<form class="fc-event-form" method="post"></form>');

            $add    = $('<button class=" success small">Ajouter</button>');
            $submit = $('<button class="small">Enregistrer</button>');

            $add.on("click", function(e){
                e.preventDefault();

                $newRow = $('<div class="row"></div>');
                $delete = $('<div class="large-1 columns"><label class="inline">&#215;</label></div>');

                $newRow.append($('<div class="large-2 columns"><input class="hour" type="text" name="hours[]"  placeholder="Heure"></div>'));
                $newRow.append($('<div class="large-9 columns"><input class="event" type="text" name="events[]" placeholder="Évèvement"></div>'));
                $newRow.append($delete);

                $form.append($newRow);

                $delete.on("click", function(){
                    $(this).parent('.row').remove();
                });
            });

            $submit.on("click", function(e){
                e.preventDefault();

                $.post(url, $form.serialize(), function(data){
                    if (data.status == 200) {
                        var hour, content = '', events = data.events;

                        codropsEvents[data.date] = events;

                        $.each(events, function(hour, value) {
                            content += '<div class="fc-event" data-event><span class="fc-event-hour" data-hour>' + hour + '</span><span class="fc-event-data" data-event-data>' + value + '</span></div>';
                        });

                        $('[data-events="'+ data.date +'"]').html(content);
                    } else {

                    }
                }, 'json');
            });

            $form.append($add);
            $form.append($submit);

            if( codropsEvents[eventID] ) {
                for (hour in codropsEvents[eventID]) {
                    $row = $('<div class="row"></div>');
                    $delete = $('<div class="large-1 columns"><label class="inline">&#215;</label></div>');

                    $row.append($('<div class="large-2 columns"><input class="hour" type="text" name="hours[]" placeholder="Heure" value="' + hour + '"></div>'));
                    $row.append($('<div class="large-9 columns"><input class="event" type="text" name="events[]" placeholder="Évèvement" value="' + codropsEvents[eventID][hour] + '"></div>'));
                    $row.append($delete);

                    $form.append($row);

                    $delete.on("click", function(){
                        $(this).parent('.row').remove();
                    });
                }
            }

            $events.append($form).insertAfter($wrapper);

            setTimeout(function () {
                $events.css('top', '0%');
            }, 25);
        }
    });
</script>

