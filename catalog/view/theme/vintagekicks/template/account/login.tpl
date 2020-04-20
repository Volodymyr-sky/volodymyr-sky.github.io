<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content_login">

<h1><?php echo $heading_title; ?></h1>
<?php if ($success) { ?>
	<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error) { ?>
	<div class="warning"><?php echo $error; ?></div>
<?php } ?>
<div class="new_customer">
	<b><?php echo $text_i_am_new_customer; ?></b>
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="account">
		<p><?php echo $text_checkout; ?></p>
		<label for="register" style="cursor: pointer;">
			<?php if ($account == 'register') { ?>
				<input type="radio" name="account" value="register" id="register" checked="checked" />
			<?php } else { ?>
				<input type="radio" name="account" value="register" id="register" />
			<?php } ?>
			<b><?php echo $text_register; ?></b>
		</label>
		<br />
		<?php if ($guest_checkout) { ?>
			<label for="guest" style="cursor: pointer;">
				<?php if ($account == 'guest') { ?>
					<input type="radio" name="account" value="guest" id="guest" checked="checked" />
				<?php } else { ?>
					<input type="radio" name="account" value="guest" id="guest" />
				<?php } ?>
				<b><?php echo $text_guest; ?></b>
			</label>
			<br />
		<?php } ?>
		<br />
		
		<p><?php echo $text_create_account; ?></p>
		<a onclick="$('#account').submit();" class="button"><span><?php echo $button_continue; ?></span></a>
	</form>
</div>
<div class="returning_customer">
	<b><?php echo $text_returning_customer; ?></b>
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="login">
		<?php echo $text_i_am_returning_customer; ?><br />
		<br />
		<b><?php echo $entry_email; ?></b><br />
		<input type="text" name="email" />
		<br />
		<br />
		<b><?php echo $entry_password; ?></b><br />
		<input type="password" name="password" />
		<br />
		<a href="<?php echo str_replace('&', '&amp;', $forgotten); ?>"><?php echo $text_forgotten_password; ?></a><br />
		<a onclick="$('#login').submit();" class="button"><span><?php echo $button_login;?></span></a>
		<?php if ($redirect) { ?>
			<input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />
		<?php } ?>
	</form>
        
</div>

</div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script>
<?php echo $footer; ?> 