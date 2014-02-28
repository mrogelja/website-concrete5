<!DOCTYPE html>

<html lang="<?= LANGUAGE ?>">
<head>
    <? Loader::element('header_required'); ?>

    <link rel="stylesheet" href="<?= $this->getThemePath(); ?>/css/foundation.css"/>
    <link rel="stylesheet" href="<?= $this->getThemePath(); ?>/css/fontello.css"/>
    <link rel="stylesheet" href="<?= $this->getThemePath(); ?>/css/main.css"/>

    <script src="<?= $this->getThemePath(); ?>/js/modernizr.js"></script>
</head>

<body>
<nav class="top-bar" data-topbar>
    <ul class="title-area">
        <li class="name">
            <h1><a href="<?= $this->url('/') ?>">CGT Ina</a></h1>
        </li>
    </ul>
    <section class="top-bar-section">
        <?
        $nav = BlockType::getByHandle('autonav');
        $nav->controller->orderBy = 'display_asc';
        $nav->controller->displayPages = 'top';
        $nav->controller->displaySubPages = 'none';
        $nav->render('view');
        ?>

        <ul class="right">
            <li class="has-form search">
                <?
                    $search = BlockType::getByHandle('extended_search');
                    $search->controller->title  = '';
                    $search->controller->searchPlaceholder  = 'Rechercher...';
                    $search->controller->resultsURL = 'recherche' ;
                    $search->controller->dontDisplayResults = true;
                    $search->render('view');
                ?>
            </li>
            <li class="important">
            <? $u = new User(); ?>
            <? if (!$u->isRegistered()) : ?>
                <a href="<?= $this->url('/login') ?>"><?= t('Connexion') ?></a>
            <? endif ?>
            </li>
        </ul>
    </section>
    </div>
</nav>

<header class="header">
    <?php
    $a = new Area('En tête');
    $a->display($c);
    ?>
</header>

<nav class="breadcrumbs">
    <?
        $nav = BlockType::getByHandle('swp_breadcrumbs');
        $nav->render('view');
    ?>
</nav>

<section id="main">