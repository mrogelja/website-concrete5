<? 
defined('C5_EXECUTE') or die("Access Denied.");
$includeAssetLibrary = true;
$al = Loader::helper('concrete/asset_library');
?>
<h2><?=t('Fichier PDF')?></h2>
<?=$al->file('ccm-b-file', 'fID', t('Choose File'));?>