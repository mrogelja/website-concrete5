<?php $this->inc('elements/header.php'); ?>

<!-- Layout pleine largeur -->
<div class="row">
    <div class="columns small-12">
        <?php
        $a = new Area('Zone principale');
        $a->display($c);
        ?>
    </div>
</div>

<?php $this->inc('elements/footer.php'); ?>
