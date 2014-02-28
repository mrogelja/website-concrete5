<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>

<?
    foreach(array_slice($this->controller->getSubLevels(), 1) as $p) :
?>
    <a href="<?= $p["link"] !== false ? $p["link"] : "#" ?>"><?= $p["title"] ?></a>
<? endforeach; ?>