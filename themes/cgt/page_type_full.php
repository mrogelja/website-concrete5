<?php $this->inc('elements/header.php'); ?>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <?php
            $a = new Area('Zone centre');
            $a->display($c);
            ?>
        </div>
    </div>
</div>
<?php $this->inc('elements/footer.php'); ?>
