<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
<h1><?php echo $heading_title; ?></h1>
<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="shipping">

	<!-- Shipping Address -->
	<div class="shipping_address">
		<b><?php echo $text_shipping_address; ?></b>     
		<table width="100%">
			<tr>
		    	<td width="50%" valign="top">
		        	<?php echo $text_shipping_to; ?>
		            <br/><a onclick="location = '<?php echo str_replace('&', '&amp;', $change_address); ?>'" class="button shipping"><?php echo $button_change_address; ?></a>
		        </td>
		        <td width="50%" valign="top">
		           	<b><?php echo $text_shipping_address; ?></b><br/>
		           	<?php echo $address; ?>
		        </td>
		    </tr>
		</table>
	</div>
	
	<!-- Shipping Methods -->
	<?php if ($shipping_methods) { ?>
		<div class="shipping_methods">
	    	<b><?php echo $text_shipping_method; ?></b>
	      	<p><?php echo $text_shipping_methods; ?></p>
	        <table width="100%" cellpadding="3">
	        	<?php foreach ($shipping_methods as $shipping_method) { ?>
	          		<tr>
	            		<td colspan="3" class="shipping_method"><b><?php echo $shipping_method['title']; ?></b></td>
	          		</tr>
	          		<?php if (!$shipping_method['error']) { ?>
	          			<?php foreach ($shipping_method['quote'] as $quote) { ?>
	          				<tr>
	            				<td width="1" class="shipping_option">
	            					<label for="<?php echo $quote['id']; ?>">
		                				<?php if ($quote['id'] == $shipping || !$shipping) { ?>
											<?php $shipping = $quote['id']; ?>
		                					<input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" checked="checked" style="margin: 0px;" />
		                				<?php } else { ?>
		                					<input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" style="margin: 0px;" />
		                				<?php } ?>
	              					</label>
	              				</td>
	            				<td class="shipping_method_name"><label for="<?php echo $quote['id']; ?>" style="cursor: pointer;"><?php echo $quote['title']; ?></label></td>
	            				<td><label for="<?php echo $quote['id']; ?>" style="cursor: pointer;"><?php echo $quote['text']; ?></label></td>
	          				</tr>
	          			<?php } ?>
	          		<?php } else { ?>
	          			<tr>
	            			<td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
	          			</tr>
	          		<?php } ?>
	       		<?php } ?>
			</table>
		</div>
	<?php } ?>
	
	<!-- Shipping Comments -->
	<div class="comments">
	    <b><?php echo $text_comments; ?></b>
	    <textarea name="comment" rows="8" style="width: 99%;"><?php echo $comment; ?></textarea>
	    <table>
	    	<tr>
	    		<td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
	            <td align="right"><a onclick="$('#shipping').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
	        </tr>
	    </table>
    </div>
</form>
  
</div><!-- End #Content -->
<?php echo $footer; ?> 