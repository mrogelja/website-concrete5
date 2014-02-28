<? 
defined('C5_EXECUTE') or die("Access Denied.");
?>
<h2><?=t('Aside Menu')?></h2>

<label><?= t('Titre')?></label>
<?=$form->text('title', ''); ?>
<br/>
<?=$form->checkbox('isSticky', 1, true); ?>
<?=t('Le menu reste visible durant toute la navigation ?')?>