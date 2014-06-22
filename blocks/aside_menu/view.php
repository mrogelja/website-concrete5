<?php  defined('C5_EXECUTE') or die("Access Denied.");

$page = Page::getCurrentPage();

$anchors = array();

foreach ($page->getBlocks() as $block) {
    if (!$block->isGlobal() and $block->getBlockTypeHandle() == "content") {

        $styles   = $block->getBlockCustomStyleRule();

        if(!isset($styles) or false  === strpos($styles->getCustomStyleRuleClassName(), 'aside-menu-item')) {
            continue;
        }

        $content = $block->getController()->getContent();

        $dom = new DOMDocument();
        $dom->loadXML("<div>$content</div>");

        $xpath = new DOMXPath($dom);
        $titleNodes = $xpath->query("//h2");

        if ($titleNodes->length != 0) {
            foreach ($titleNodes as $titleNode)
                $anchors[] = array(
                    "target" => $styles->getCustomStyleRuleCSSID(true),
                    "title"  => $titleNode->textContent
                );
        }
    }
}

if (!empty($anchors)) : ?>
    <div class="aside-menu hidden-xs nav-spy" <? if ($this->controller->isSticky()) : ?>data-spy="affix" data-offset-top="200"<? endif ?>>
        <? if (!empty($this->controller->getTitle())) : ?>
        <h6><?= $this->controller->getTitle()?></h6>
        <? endif ?>

        <ul class="nav">
            <? foreach ($anchors as $anchor): ?>
                <li>
                    <a href="#<?= $anchor["target"] ?>">
                        <?= $anchor["title"] ?>
                    </a>
                </li>
            <? endforeach; ?>
        </ul>
    </div>
<? endif ?>

