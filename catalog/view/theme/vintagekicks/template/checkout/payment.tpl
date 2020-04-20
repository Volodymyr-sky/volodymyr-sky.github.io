<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<h1><?php echo $heading_title; ?></h1>
	<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
	<?php } ?>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	
	<!-- Payment Address -->
	<div class="payment_address">
		<b><?php echo $text_payment_address; ?></b>
		<table width="100%">
			<tr>
				<td width="50%" valign="top">
					<?php echo $text_payment_to; ?><br />
					<br />
					<a onclick="location = '<?php echo str_replace('&', '&amp;', $change_address); ?>'" class="button"><?php echo $button_change_address; ?></a>
				</td>
				<td width="50%" valign="top">
					<b><?php echo $text_payment_address; ?></b><br />
					<?php echo $address; ?>
				</td>
			</tr>
		</table>
	</div>
	
	<!-- Add a coupon -->
	<div class="coupon">
		<?php if ($coupon_status) { ?>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
		    	<b>Coupons</b>
		    	<p><?php echo $text_coupon; ?></p>
		        <?php echo $entry_coupon; ?>
		        <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
		        <br/><a onclick="$('#coupon').submit();" class="button coupon"><?php echo $button_coupon; ?></a>
		    </form>
		<?php } ?>
	</div>
	
	<!-- Payment Methods -->
	<div class="payment_methods">
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="payment">
			<?php if ($payment_methods) { ?>
		    	<b style="margin-bottom: 2px; display: block;"><?php echo $text_payment_method; ?></b>
		      	<p><?php echo $text_payment_methods; ?></p>
		        <table width="100%" cellpadding="3">
		        	<?php foreach ($payment_methods as $payment_method) { ?>
		          		<tr>
		            		<td width="1">
		              			<?php if ($payment_method['id'] == $payment || !$payment) { ?>
					  				<?php $payment = $payment_method['id']; ?>
		              				<input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" checked="checked" style="margin: 0px;" />
		              			<?php } else { ?>
		              				<input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" style="margin: 0px;" />
		              			<?php } ?>
		              		</td>
		            		<td><label for="<?php echo $payment_method['id']; ?>" style="cursor: pointer;"><?php echo $payment_method['title']; ?></label></td>
		          		</tr>
		          	<?php } ?>
		    	</table>
			<?php } ?>
			
			<!-- Payment Comments -->
			<div class="comments">
		    	<b><?php echo $text_comments; ?></b>
		    	<textarea name="comment" rows="8" style="width: 99%;"><?php echo $comment; ?></textarea>
		    </div>
		    <?php if ($text_agree) { ?>
		    	<table>
		        	<tr>
		            	<td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
		            	<td align="right" style="padding-right: 5px;"><?php echo $text_agree; ?></td>
		            	<td width="5" style="padding-right: 10px;">
		            		<?php if ($agree) { ?>
		              			<input type="checkbox" name="agree" value="1" checked="checked" />
		              		<?php } else { ?>
		              			<input type="checkbox" name="agree" value="1" />
		              		<?php } ?></td>
		            	<td align="right" width="5"><a onclick="$('#payment').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
		          	</tr>
		        </table>
			<?php } else { ?>
		    	<table>
		        	<tr>
		            	<td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
		            	<td align="right"><a onclick="$('#payment').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
		          	</tr>
		        </table>
			<?php } ?>
		</form>
	</div>
	
</div><!-- End #content -->
<?php echo $footer; ?> 