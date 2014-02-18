<?
	defined('C5_EXECUTE') or die("Access Denied.");
	$al = Loader::helper('concrete/asset_library');
	$bf = null;
	if ($controller->getFileID() > 0) { 
		$bf = $controller->getFileObject();
	}
?>
<h2><?=t('File')?></h2>
<?=$al->file('ccm-b-file', 'fID', t('Choose File'), $bf);?>