<? defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="rss">

    <? if( strlen($title)>0 ){ ?>
        <h6><?=$title?></h6>
    <? } ?>

    <?
    $rssObj=$controller;
    $textHelper = Loader::helper("text");

    if (!$dateFormat) {
        $dateFormat = t('F jS');
    }

    if( strlen($errorMsg) <= 0 ){
        foreach($posts as $itemNumber=>$item) {

            if( intval($itemNumber) >= intval($rssObj->itemsToDisplay) ) break;
            ?>

            <div class="item">
                <div>
                    <span class="date"><?= $item->get_date($dateFormat); ?></span>
                    <a class="title" href="<?= $item->get_permalink(); ?>" <? if($rssObj->launchInNewWindow) echo 'target="_blank"' ?> >
                        <?= $item->get_title(); ?>
                    </a>
                </div>
                <div class="summary">
                    <?
                    if( $rssObj->showSummary ){
                        echo $textHelper->shortText( strip_tags($item->get_description()) );
                    }
                    ?>
                </div>
            </div>

        <?  }
    }
    ?>
</div>