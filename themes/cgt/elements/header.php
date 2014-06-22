<!DOCTYPE html>

<html lang="<?= LANGUAGE ?>">
<head>
    <? Loader::element('header_required'); ?>

    <link rel="stylesheet" href="<?= $this->getThemePath(); ?>/bower_components/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="<?= $this->getThemePath(); ?>/bower_components/bootstrap/dist/css/bootstrap-theme-cgt.min.css"/>
    <link rel="stylesheet" href="<?= $this->getThemePath(); ?>/css/fontello.css"/>
    <link rel="stylesheet" href="<?= $this->getThemePath(); ?>/css/main.css"/>

    <script src="<?= $this->getThemePath(); ?>/bower_components/modernizr/modernizr.js"></script>
</head>

<body data-spy="scroll" data-target=".nav-spy">

<header>
    <nav class="externals">
        <div class="container">
            <? $u = new User(); ?>
            <? if (!$u->isRegistered()) : ?>
                <a class="pull-right" href="<?= $this->url('/login') ?>"><?= t('Connexion') ?></a>
            <? endif ?>
        </div>
    </nav>
    <nav class="navbar navbar-default" role="navigation">

        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="<?= $this->url('/') ?>">
                    <div class="logo">
                        <img height="70px" src="<?= $this->getThemePath(); ?>/images/logos/cgt_tsp.png"/>

                        <span>ina</span>
                    </div>
                </a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="navbar-collapse collapse" id="navbar-collapse">
                <form class="navbar-form" role="search">
                    <div class="form-group">
                        <?
                        $search = BlockType::getByHandle('extended_search');
                        $search->controller->title = '';
                        $search->controller->searchPlaceholder = 'Rechercher...';
                        $search->controller->resultsURL = 'recherche';
                        $search->controller->dontDisplayResults = true;
                        $search->render('view');
                        ?>
                    </div>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <?
                    $nav = BlockType::getByHandle('autonav');
                    $nav->controller->orderBy = 'display_asc';
                    $nav->controller->displayPages = 'top';
                    $nav->controller->displaySubPages = 'none';
                    $nav->render('view');
                    ?>
                </ul>

            </div>
        </div>
    </nav>
</header>

<nav class="breadcrumbs">
    <?
    $nav = BlockType::getByHandle('swp_breadcrumbs');
    $nav->render('view');
    ?>
</nav>

<section id="main">