</section>  <!-- <section id="main"> -->

<footer>
    <div>
    <?php
        $a = new GlobalArea('Pied de page');
        $a->display($c);
        ?>
    </div>
</footer>

<script src="<?php echo $this->getThemePath(); ?>/js/foundation.min.js"></script>

<?php Loader::element('footer_required'); ?>

</body>
</html>