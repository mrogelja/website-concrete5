<?php  defined('C5_EXECUTE') or die("Access Denied.");
$canvasId = uniqid("pdf_");

$f = $controller->getFileObject();
$fp = new Permissions($f);
if ($fp->canViewFile()) :
    $c = Page::getCurrentPage();
    if ($c instanceof Page) {
        $cID = $c->getCollectionID();
    }
    ?>
    <iframe width="100%" height="900px" src="<?= $controller->getPdfPath($cID) ?>" frameborder="0" ></iframe>
<? endif ?>

