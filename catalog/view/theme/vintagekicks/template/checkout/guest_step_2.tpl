<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<div class="content-inner">
	<h1><?php echo $heading_title; ?></h1>
	
	<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
	<?php } ?>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	
	<!-- Add a Coupon -->
	<?php if ($coupon_status) { ?>
		<div class="coupon">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
				<p><?php echo $text_coupon; ?></p>
				<p style="margin-top: 35px;"><?php echo $entry_coupon; ?> <input type="text" name="coupon" value="<?php echo $coupon; ?>" /></p>
				<p class="use-coupon" style="margin: -50px 0 0 200px;"><a onclick="$('#coupon').submit();" class="button-coupon"></a></p>
			</form>
		</div>
	<?php } ?>
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="guest">		
		<!-- Shipping Methods -->
		<?php if ($shipping_methods) { ?>
			<div class="shipping_methods">
				<p><b><?php echo $text_shipping_method; ?></b></p>
				<p><?php echo $text_shipping_methods; ?></p>
				<table width="100%" cellpadding="3">
				<?php foreach ($shipping_methods as $shipping_method) { ?>
					<tr>
						<td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
					</tr>
					<?php if (!$shipping_method['error']) { ?>
					<?php foreach ($shipping_method['quote'] as $quote) { ?>
					<tr>
						<td width="1"><label for="<?php echo $quote['id']; ?>"> <?php if ($quote['id'] == $shipping || !$shipping) { ?>
						<?php $shipping = $quote['id']; ?> <input type="radio"
							name="shipping_method" value="<?php echo $quote['id']; ?>"
							id="<?php echo $quote['id']; ?>" checked="checked"
							style="margin: 0px;" /> <?php } else { ?> <input type="radio"
							name="shipping_method" value="<?php echo $quote['id']; ?>"
							id="<?php echo $quote['id']; ?>" style="margin: 0px;" /> <?php } ?> </label></td>
						<td width="450"><label for="<?php echo $quote['id']; ?>"
							style="cursor: pointer;"><?php echo $quote['title']; ?></label></td>
						<td><label for="<?php echo $quote['id']; ?>"
							style="cursor: pointer;"><?php echo $quote['text']; ?></label></td>
					</tr>
					<?php } ?>
					<?php } else { ?>
					<tr>
						<td colspan="3">
						<div class="error"><?php echo $shipping_method['error']; ?></div>
						</td>
					</tr>
					<?php } ?>
					<?php } ?>
				</table>
			</div>
		<?php } ?>
		
		<!-- Payment Methods -->
		<?php if ($payment_methods) { ?>
			<div class="payment_methods">
				<p><b><?php echo $text_payment_method; ?></b></p>
				<p><?php echo $text_payment_methods; ?></p>
				<table width="536" cellpadding="3">
				<?php foreach ($payment_methods as $payment_method) { ?>
					<tr>
						<td width="1"><?php if ($payment_method['id'] == $payment || !$payment) { ?>
						<?php $payment= $payment_method['id']; ?> <input type="radio"
							name="payment_method" value="<?php echo $payment_method['id']; ?>"
							id="<?php echo $payment_method['id']; ?>" checked="checked"
							style="margin: 0px;" /> <?php } else { ?> <input type="radio"
							name="payment_method" value="<?php echo $payment_method['id']; ?>"
							id="<?php echo $payment_method['id']; ?>" style="margin: 0px;" /> <?php } ?></td>
						<td><label for="<?php echo $payment_method['id']; ?>"
							style="cursor: pointer;"><?php echo $payment_method['title']; ?></label></td>
					</tr>
				<?php } ?>
				</table>
			</div>
		<?php } ?>
		
		<!-- Comments -->
		<div class="comments">
			<p><b><?php echo $text_comments; ?></b></p>
			<textarea name="comment" rows="8" style="width: 99%;"><?php echo $comment; ?></textarea>
		</div>
		
		<?php if ($text_agree) { ?>
			<table>
				<tr>
					<td align="left"><a
						onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'"
						class="button"><span><?php echo $button_back; ?></span></a></td>
					<td align="right" style="padding-right: 5px;"><?php echo $text_agree; ?></td>
					<td width="5" style="padding-right: 10px;"><?php if ($agree) { ?> <input
						type="checkbox" name="agree" value="1" checked="checked" /> <?php } else { ?>
					<input type="checkbox" name="agree" value="1" /> <?php } ?></td>
					<td align="right" width="5"><a onclick="$('#guest').submit();"
						class="button"><span><?php echo $button_continue; ?></span></a></td>
				</tr>
			</table>
		<?php } else { ?>	
			<table>
				<tr>
					<td align="left"><a
						onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'"
						class="button"><span><?php echo $button_back; ?></span></a></td>
					<td align="right"><a onclick="$('#guest').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
				</tr>
			</table>
		
		<?php } ?>
	</form>

	</div>
</div><!-- End #content -->
<?php echo $footer; ?>