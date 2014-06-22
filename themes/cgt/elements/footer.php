<div class="clearfix"></div>
</section>  <!-- <section id="main"> -->

<footer>
    <div class="upper">
        <div class="container">
            <div class="col-lg-4">
                <?php
                $a = new GlobalArea('Pied de page supérieur gauche');
                $a->display($c);
                ?>
            </div>

            <div class="col-lg-4">
                <?php
                $a = new GlobalArea('Pied de page supérieur centre');
                $a->display($c);
                ?>
            </div>

            <div class="col-lg-4">
                <?php
                $a = new GlobalArea('Pied de page supérieur droit');
                $a->display($c);
                ?>
            </div>
        </div>
    </div>

    <div class="lower">
        <div class="container">
            <?php
            $a = new GlobalArea('Pied de page');
            $a->display($c);
            ?>
        </div>
    </div>
</footer>

<script src="<?php echo $this->getThemePath(); ?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script>
    $(document).foundation();
</script>

<?php Loader::element('footer_required'); ?>

</body>
</html>
