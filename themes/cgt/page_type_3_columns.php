<?php $this->inc('elements/header.php'); ?>

        <div class="columns large-3">
            <?php
            $a = new Area('Zone gauche');
            $a->display($c);
            ?>
        </div>

        <div class="columns large-6">
            <?php
            $a = new Area('Zone centre');
            $a->display($c);
            ?>
        </div>

        <div class="columns large-3">
            <?php
            $a = new Area('Zone droite');
            $a->display($c);
            ?>
        </div>
<?php $this->inc('elements/footer.php'); ?>
