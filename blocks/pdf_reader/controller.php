<?php
defined('C5_EXECUTE') or die("Access Denied.");

/**
 * Controller for a block that displays a PDF Reader on a page (with pdf.js by mozilla).
 */
class PdfReaderBlockController extends BlockController
{

    protected $btInterfaceWidth = 600;
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btInterfaceHeight = 250;
    protected $btTable = 'btPdfReader';

    protected $btExportFileColumns = array('fID');

    public function getBlockTypeDescription()
    {
        return t("Reads a PDF file stored in the asset library.");
    }

    public function getBlockTypeName()
    {
        return t("PDF Reader");
    }

    public function getJavaScriptStrings()
    {
        return array('file-required' => t('You must select a pdf file.'));
    }

    public function getSearchableContent()
    {
        return $this->fileLinkText;
    }

    public function validate($args)
    {
        $e = Loader::helper('validation/error');
        if ($args['fID'] < 1) {
            $e->add(t('You must select a file.'));
        }
        return $e;
    }

    function getFileID()
    {
        return $this->fID;
    }

    function getFileObject()
    {
        return File::getByID($this->fID);
    }

    public function getPdfPath($cID) {
        $uh = Loader::helper('concrete/urls');

        $blockAssetsUrl = $uh->getBlockTypeAssetsURL($this->getBlockObject());

        return $blockAssetsUrl . "/pdf/web/viewer.html?file=" .  View::url('/download_file', $this->getFileID(), $cID);
    }
}