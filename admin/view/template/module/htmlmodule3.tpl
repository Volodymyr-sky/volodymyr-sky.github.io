<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
  <div class="heading">
    <h1 style="background-image: url('view/image/module.png');"><?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
	<?php foreach ($languages as $language) { ?>
	<tr>
	<td><?php echo $entry_title; ?></td>
	  <td>
	    <input type="text" name="htmlmodule3_title<?php echo $language['language_id']; ?>" id="htmlmodule3_title<?php echo $language['language_id']; ?>" size="30" value="<?php echo ${'htmlmodule3_title' . $language['language_id']}; ?>" />
	    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
     	  </td>
	</tr>
	<?php } ?>
	<tr>
	  <td><?php echo $entry_header; ?></td>
	  <td>
	    <?php
		if($htmlmodule3_header) {
		   $checked1 = ' checked="checked"';
		   $checked0 = '';
		}else{
		   $checked1 = '';
		   $checked0 = ' checked="checked"';
	    } ?>
		<label for="htmlmodule3_header_1"><?php echo $entry_yes; ?></label>
		<input type="radio"<?php echo $checked1; ?> id="htmlmodule3_header_1" name="htmlmodule3_header" value="1" />
		<label for="htmlmodule3_header_0"><?php echo $entry_no; ?></label>
		<input type="radio"<?php echo $checked0; ?> id="htmlmodule3_header_0" name="htmlmodule3_header" value="0" />
	  </td>
	</tr>
	<?php foreach ($languages as $language) { ?>
        <tr>
	  <td><?php echo $entry_code; ?></td>
          <td><textarea name="htmlmodule3_code<?php echo $language['language_id']; ?>" cols="40" rows="10"><?php echo isset(${'htmlmodule3_code' . $language['language_id']}) ? ${'htmlmodule3_code' . $language['language_id']} : ''; ?></textarea>
	<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
          </td>
        </tr>
	<?php } ?>
        <tr>
          <td><?php echo $entry_position; ?></td>
          <td><select name="htmlmodule3_position">
              <?php if ($htmlmodule3_position == 'left') { ?>
              <option value="left" selected="selected"><?php echo $text_left; ?></option>
              <?php } else { ?>
              <option value="left"><?php echo $text_left; ?></option>
              <?php } ?>
              <?php if ($htmlmodule3_position == 'right') { ?>
              <option value="right" selected="selected"><?php echo $text_right; ?></option>
              <?php } else { ?>
              <option value="right"><?php echo $text_right; ?></option>
              <?php } ?>
	      <?php if ($htmlmodule3_position == 'home') { ?>
              <option value="home" selected="selected"><?php echo $text_home; ?></option>
              <?php } else { ?>
              <option value="home"><?php echo $text_home; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="htmlmodule3_status">
              <?php if ($htmlmodule3_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_sort_order; ?></td>
          <td><input type="text" name="htmlmodule3_sort_order" value="<?php echo $htmlmodule3_sort_order; ?>" size="1" /></td>
        </tr>
      </table>
    </form>
  </div>
	<div style="text-align:center; color:#666666;">
		HTML Module v<?php echo $htmlmodule_version; ?> - <a href="http://www.riotreactions.eu/">Support</a>
	</div>
</div>
<?php echo $footer; ?>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('htmlmodule3_code<?php echo $language['language_id']; ?>', {
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.draggable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.resizable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.dialog.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/external/bgiframe/jquery.bgiframe.js"></script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();

	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');

	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};