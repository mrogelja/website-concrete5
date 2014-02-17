<?php     

defined('C5_EXECUTE') or die(_("Access Denied."));

class JacksExtendedSearchPackage extends Package {

	protected $pkgHandle = 'jacks_extended_search';
	protected $appVersionRequired = '5.3';
	protected $pkgVersion = '1.0';
	
	public function getPackageDescription() {
		return t("Provides a more advanced Search block ");
	}
	
	public function getPackageName() {
		return t("Extended Search");
	}
	
	public function install() {
		$pkg = parent::install();
		
		// install block		
		BlockType::installBlockTypeFromPackage('extended_search', $pkg);
	}
}