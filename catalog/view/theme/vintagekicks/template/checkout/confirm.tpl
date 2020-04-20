<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<h1><?php echo $heading_title; ?></h1>
	
	<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
	<?php } ?>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	
	<!-- Confirm Shipping/Payment Methods and Addresses -->
	<table width="100%">
		<tr>
			<td width="33.3%" valign="top">
				<?php if ($shipping_method) { ?>
					<b><?php echo $text_shipping_method; ?></b><br />
					<?php echo $shipping_method; ?><br />
					<a href="<?php echo str_replace('&', '&amp;', $checkout_shipping); ?>"><?php echo $text_change; ?></a><br />
					<br />
				<?php } ?>
				<b><?php echo $text_payment_method; ?></b><br />
				<?php echo $payment_method; ?><br />
				<a href="<?php echo str_replace('&', '&amp;', $checkout_payment); ?>"><?php echo $text_change; ?></a>
			</td>
			<td width="33.3%" valign="top">
				<?php if ($shipping_address) { ?>
					<b><?php echo $text_shipping_address; ?></b><br />
					<?php echo $shipping_address; ?><br />
					<a href="<?php echo str_replace('&', '&amp;', $checkout_shipping_address); ?>"><?php echo $text_change; ?></a>
				<?php } ?>
			</td>
			<td width="33.3%" valign="top">
				<b><?php echo $text_payment_address; ?></b><br />
				<?php echo $payment_address; ?><br />
				<a href="<?php echo str_replace('&', '&amp;', $checkout_payment_address); ?>"><?php echo $text_change; ?></a>
			</td>
		</tr>
	</table>
	
	<!-- Order Summary -->
	<div class="order_summary">
		<table width="95%">
			<tr>
				<th align="left"><?php echo $column_product; ?></th>
				<th align="left"><?php echo $column_model; ?></th>
				<th align="right"><?php echo $column_quantity; ?></th>
				<th align="right"><?php echo $column_price; ?></th>
				<th align="right"><?php echo $column_total; ?></th>
			</tr>
			<?php foreach ($products as $product) { ?>
				<tr>
					<td align="left" valign="top">
						<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a>
						<?php foreach ($product['option'] as $option) { ?>
							<br />
							&nbsp;<small> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
						<?php } ?>
					</td>
					<td align="left" valign="top"><?php echo $product['model']; ?></td>
					<td align="right" valign="top"><?php echo $product['quantity']; ?></td>
					<td align="right" valign="top"><?php echo $product['price']; ?></td>
					<td align="right" valign="top"><?php echo $product['total']; ?></td>
				</tr>
			<?php } ?>
		</table>
		<br />
		      
		<table width="95%" display: inline-block;">
			<?php foreach ($totals as $total) { ?>
				<tr>
					<td align="right"><?php echo $total['title']; ?></td>
					<td align="right"><?php echo $total['text']; ?></td>
				</tr>
			<?php } ?>
		</table>	
	</div>
	
	<!-- Coupons -->
	<div class="coupon">
		<?php if ($coupon_status) { ?>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
				<b>Купон</b>
				<p><?php echo $text_coupon; ?></p>
				<p style="margin-top: 35px;"><?php echo $entry_coupon; ?>&nbsp;
				<input type="text" name="coupon" value="<?php echo $coupon; ?>" /></p>
				&nbsp;<p class="use-coupon" style="margin: -65px 0 0 200px;"><a onclick="$('#coupon').submit();" class="button-coupon"><span></span></a></p>
			</form>
		<?php } ?>
	</div>
	
	<!-- Comments -->
	<div class="comments">
	<?php if ($comment) { ?>
		<b><?php echo $text_comment; ?></b>
		<?php echo $comment; ?>
	<?php } ?>
	</div>
	
	<div id="payment"><?php echo $payment; ?></div>
 
</div><!-- End #content -->
<?php echo $footer; ?>