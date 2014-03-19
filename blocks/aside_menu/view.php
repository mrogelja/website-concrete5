<?php  defined('C5_EXECUTE') or die("Access Denied.");

$page = Page::getCurrentPage();

$anchors = array();

foreach ($page->getBlocks() as $block) {
    if (!$block->isGlobal() and $block->getBlockTypeHandle() == "content") {
        $content = $block->getController()->getContent();

        $dom = new DOMDocument();
        $dom->loadXML("<div>$content</div>");

        $xpath = new DOMXPath($dom);
        $anchorsNodes = $xpath->query("//a[@name]");
        if ($anchorsNodes->length != 0) {
            foreach ($anchorsNodes as $anchorNode)
            $anchors[] = array(
                "target" => $anchorNode->getAttribute("name"),
                "title"  => $anchorNode->parentNode->textContent
            );
        }
    }
}

if (!empty($anchors)) : ?>
    <div class="aside-menu hide-for-small" <? if ($this->controller->isSticky()) : ?>data-magellan-expedition="fixed"<? endif ?>>
        <? if (!empty($this->controller->getTitle())) : ?>
        <h6><?= $this->controller->getTitle()?></h6>
        <? endif ?>

        <ul class="no-bullet">
            <? foreach ($anchors as $anchor): ?>
                <li>
                    <a data-magellan-arrival="<?= $anchor["target"] ?>" href="#<?= $anchor["target"] ?>">
                        <?= $anchor["title"] ?>
                    </a>
                </li>
            <? endforeach; ?>
        </ul>
    </div>
<? endif ?>

