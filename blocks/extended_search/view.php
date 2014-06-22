<?php    defined('C5_EXECUTE') or die("Access Denied."); 
	Loader::model('attribute/categories/collection');
	// grab all tags in use based on the path
	$ak = CollectionAttributeKey::getByHandle('tags');
	$akc = $ak->getController();
	$pp = false;
	
	$tagCounts = array();
	
	if ($baseSearchPath != '') {
		$pp = Page::getByPath($baseSearchPath);
	}
	$ttags = $akc->getOptionUsageArray($pp);
	$tags = array();
	foreach($ttags as $t) {
		$tagCounts[] = $t->getSelectAttributeOptionUsageCount();
		$tags[] = $t;
	}
	shuffle($tags);
	$tagSizes = array();
	$count = count($tagCounts);
	foreach($tagCounts as $tagCount => $pos) {
		$tagSizes[$pos] = 20;//setFontPx(($pos + 1) / $count);
	}
	

    if( !function_exists('setFontPx')) {
        function setFontPx($weight) {
            $tagMinFontPx = '10';
            $tagMaxFontPx = '24';


            $em = ($weight * ($tagMaxFontPx - $tagMinFontPx)) + $tagMinFontPx;
            $em = round($em);
            return $em;
        }
    } else {
        $searchBarRenderedOnce = true;
    }
?>
  <script>
  $(document).ready(function(){
    var availableTags = [<?php    for ($i = 0; $i < $ttags->count(); $i++) {
    			echo '"';
				$akct = $tags[$i];
				echo $akct;
				echo '",';
				} ?>];
//		$( "#suggest" ).autocomplete({
//			source: availableTags
//		});
	});
	</script> 
  </script>

<?php    if (isset($error)) { ?>
	<?php   echo $error?><br/><br/>
<?php    } ?><?php    echo $content; ?>

<?php if (!isset($searchBarRenderedOnce)) : ?>
<form action="<?php   echo $this->url( $resultTargetURL )?>" method="get" class="navbar-form ccm-search-block-form">
    <div class="form-group">
	<?php    if( strlen($title)>0){ ?><h3><?php   echo $title?></h3><?php    } ?>
	
	<?php    if(strlen($query)==0){ ?>
	<input name="search_paths[]" type="hidden" value="<?php   echo htmlentities($baseSearchPath, ENT_COMPAT, APP_CHARSET) ?>" />
	<?php    } else if (is_array($_REQUEST['search_paths'])) { 
		foreach($_REQUEST['search_paths'] as $search_path){ ?>
			<input name="search_paths[]" type="hidden" value="<?php   echo htmlentities($search_path, ENT_COMPAT, APP_CHARSET) ?>" />
	<?php     }
	} ?>
	
	<input name="query" type="search" value="<?php   echo htmlentities($query, ENT_COMPAT, APP_CHARSET)?>" class="form-control ccm-search-block-text" id="suggest" placeholder="<?php  echo $searchPlaceholder;?>"/>
    </div>
</form>
<?php endif ?>

<?php if (!$dontDisplayResults) : ?>
<div class="search-results">
<?php
$tt = Loader::helper('text');

if ($do_search) {
	if(count($results)==0){ ?>
		<p> Désolé, aucun résultat ne correspond à votre recherche </p>
	<?php    }else{ ?>
		<div id="searchResults">
		<?php    foreach($results as $r) { 
			$currentPageBody = $this->controller->highlightedExtendedMarkup($r->getBodyContent(), $query);?>
			<div class="searchResult">
				<h3><a href="<?php   echo $r->getPath()?>"><?php   echo $r->getName()?></a></h3>
				<p>
					<?php    echo ($currentPageBody ? $currentPageBody .'<br />' : '')?>
					<?php    echo $this->controller->highlightedMarkup($tt->shortText($r->getDescription()),$query)?>
					<a href="<?php    echo $r->getPath(); ?>" class="pageLink"><?php    echo $this->controller->highlightedMarkup($r->getPath(),$query)?></a>
				</p>
			</div>
		<?php    	}//foreach search result ?>
		</div>
		
		<?php   
		if($paginator && strlen($paginator->getPages())>0){ ?>	
		<div class="pagination">	
			 <span class="pageLeft"><?php   echo $paginator->getPrevious()?></span>
			 <span class="pageRight"><?php   echo $paginator->getNext()?></span>
			 <?php   echo $paginator->getPages()?>
		</div>	
		<?php    } ?>

	<?php   				
	} //results found
} else { ?>
    <p> Désolé, aucun résultat ne correspond à votre recherche </p>
<?}?>
</div>

<?php endif ?>