<?php $this->inc('elements/header.php'); ?>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <?php
            $a = new Area('Zone gauche');
            $a->display($c);
            ?>
        </div>
        <div class="col-md-8">
            <?php
            $a = new Area('Zone centre');
            $a->display($c);
            ?>
        </div>
    </div>
</div>

<?php $this->inc('elements/footer.php'); ?>
