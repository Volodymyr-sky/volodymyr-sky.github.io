<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

<h1><?php echo $heading_title; ?></h1>

<div class="password">
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="password">
	
	<p><b><?php echo $text_password; ?></b></p>
	
	<table>
		<tr>
			<td width="150"><span class="required">*</span> <?php echo $entry_password; ?></td>
			<td><input type="password" name="password"
				value="<?php echo $password; ?>" /> <?php if ($error_password) { ?> <span
				class="error"><?php echo $error_password; ?></span> <?php } ?></td>
		</tr>
		<tr>
			<td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
			<td><input type="password" name="confirm"
				value="<?php echo $confirm; ?>" /> <?php if ($error_confirm) { ?> <span
				class="error"><?php echo $error_confirm; ?></span> <?php } ?></td>
		</tr>
	</table>
	
	
	<table>
		<tr>
			<td align="left"><a
				onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'"
				class="button"><span><?php echo $button_back; ?></span></a></td>
			<td align="right"><a onclick="$('#password').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
		</tr>
	</table>
	
	</form>
</div>

</div>
<?php echo $footer; ?>