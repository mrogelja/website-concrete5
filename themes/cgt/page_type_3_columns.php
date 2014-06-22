<?php $this->inc('elements/header.php'); ?>
<div class="container">
    <div class="col-lg-6 col-md-12 col-lg-push-3">
        <?php
        $a = new Area('Zone centre');
        $a->display($c);
        ?>
    </div>

    <div class="col-lg-3 col-md-6 col-lg-pull-6">
        <?php
        $a = new Area('Zone gauche');
        $a->display($c);
        ?>
    </div>

    <div class="col-lg-3 col-md-6">
        <?php
        $a = new Area('Zone droite');
        $a->display($c);
        ?>
    </div>
</div>
<?php $this->inc('elements/footer.php'); ?>
