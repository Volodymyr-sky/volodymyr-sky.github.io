<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

<h1><?php echo $heading_title; ?></h1>
<?php if ($success) { ?>
	<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<p><b style="margin-bottom: 2px; display: block;"><?php echo $text_address_book; ?></b></p>
<?php foreach ($addresses as $result) { ?>
	<table width="100%">
		<tr>
			<td><?php echo $result['address']; ?></td>
			<td style="text-align: right;" width="200px;"><a
				onclick="location = '<?php echo str_replace('&', '&amp;', $result['update']); ?>'"
				class="button"><span><?php echo $button_edit; ?></span></a>&nbsp;<a
				onclick="location = '<?php echo str_replace('&', '&amp;', $result['delete']); ?>'"
				class="button"><span><?php echo $button_delete; ?></span></a></td>
		</tr>
	</table>
<?php } ?>

<table>
	<tr>
		<td align="left"><a
			onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'"
			class="button address"><span><?php echo $button_back; ?></span></a></td>
		<td align="right"><a
			onclick="location = '<?php echo str_replace('&', '&amp;', $insert); ?>'"
			class="button address"><span><?php echo $button_new_address; ?></span></a></td>
	</tr>
</table>

</div>
<?php echo $footer; ?>