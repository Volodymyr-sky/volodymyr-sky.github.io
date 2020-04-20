<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

<h1><?php echo $heading_title; ?></h1>

<div class="edit">
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="edit">
		<p><b><?php echo $text_your_details; ?></b></p>
		<table>
			<tr>
				<td width="150"><span class="required">*</span> <?php echo $entry_firstname; ?></td>
				<td><input type="text" name="firstname"
					value="<?php echo $firstname; ?>" /> <?php if ($error_firstname) { ?>
				<span class="error"><?php echo $error_firstname; ?></span> <?php } ?></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
				<td><input type="text" name="lastname"
					value="<?php echo $lastname; ?>" /> <?php if ($error_lastname) { ?> <span
					class="error"><?php echo $error_lastname; ?></span> <?php } ?></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_email; ?></td>
				<td><input type="text" name="email" value="<?php echo $email; ?>" /> <?php if ($error_email) { ?>
				<span class="error"><?php echo $error_email; ?></span> <?php } ?></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
				<td><input type="text" name="telephone"
					value="<?php echo $telephone; ?>" /> <?php if ($error_telephone) { ?>
				<span class="error"><?php echo $error_telephone; ?></span> <?php } ?></td>
			</tr>
			<tr>
				<td><?php echo $entry_fax; ?></td>
				<td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
			</tr>
		</table>
	
	
	<table>
		<tr>
			<td align="left"><a
				onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'"
				class="button"><span><?php echo $button_back; ?></span></a></td>
			<td align="right"><a onclick="$('#edit').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
		</tr>
	</table>
	
	</form>
</div>
</div>
<?php echo $footer; ?>