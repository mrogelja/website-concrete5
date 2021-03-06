<?php
defined('C5_EXECUTE') or die("Access Denied.");
require(DIR_PACKAGES . '/ajax_form/' . DIRNAME_ELEMENTS . '/form_template_header.php'); //Kind of like calling Loader::packageElement(), except variables set in the element are actually available to us here (not so with Loader::packageElement)
?>

<?php  if ($isAjax): ?>
    <script type="text/javascript">
        function <?php  echo $template_onsubmit_funcname; ?>(form) {
            //This js code happens when user submits the form...
            $(form).find('div.errors').hide().html('');
            $(form).find('input.submit').hide();
            $(form).find('div.indicator').show();
        }

        function <?php  echo $template_onsuccess_funcname; ?>(form, thanks) {
            //This js code happens after form is successfully processed...
            $(form).find('div.success').html(thanks).show();
            $(form).find('div.indicator').hide();
            $(form).find('div.fields').hide();
        }

        function <?php  echo $template_onerror_funcname; ?>(form, errors) {
            //This js code happens after form is rejected due to validation errors...
            $(form).find('div.errors').html(errors).show();
            $(form).find('div.indicator').hide();
            $(form).find('input.submit').show();
        }
    </script>
<?php  endif; ?>

<div id="formblock<?php  echo $bID; ?>" class="formblock">
    <form class="form-inline" id="<?php  echo $formDomId; ?>" method="post" action="<?php  echo $formAction; ?>" <?php  echo ($hasFileUpload ? 'enctype="multipart/form-data"' : ''); ?>>

        <div class="success" <?php  echo !$success ? 'style="display: none;"' : ''; ?>>
            <?php  echo $thanksMsg; ?>
        </div>

        <div class="errors" <?php  echo !$errors ? 'style="display: none;"' : ''; ?>>
            <?php  echo $errorHeader; ?>
            <?php  echo $errorDivs; /* each error wrapped in <div class="error">...</div> */ ?>
        </div>

        <?php  foreach ($questions as $question): ?>
            <div class="form-group field field-<?php  echo $question['type']; ?>">
                <?php echo preg_replace('/<input/', '<input class="form-control" placeholder="'.  $question['question'] .'"', $question['input']); ?>
            </div>
        <?php  endforeach; ?>

        <?php  if ($captcha): ?>
            <div class="form-group field field-captcha">
                <label><?php  echo $translatedCaptchaLabel; ?></label>
                <?php  $captcha->display(); ?>
                <?php  $captcha->showInput(); ?>
            </div>
        <?php  endif; ?>

        <input type="submit" name="Submit" class="btn btn-default" value="<?php  echo $translatedSubmitLabel; ?>" />

        <div class="indicator" style="display: none;">
            <img src="<?php  echo ASSETS_URL_IMAGES; ?>/throbber_white_16.gif" width="16" height="16" alt="" />
            <span><?php  echo $translatedProcessingLabel; ?></span>
        </div>

        <input name="qsID" type="hidden" value="<?php  echo $qsID; ?>" />
        <input name="pURI" type="hidden" value="<?php  echo $pURI; ?>" />

    </form>
</div><!-- .formblock -->