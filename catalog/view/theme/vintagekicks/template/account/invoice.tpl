<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<h1><?php echo $heading_title; ?></h1>
    <table width="500">
        <tr>
          <td width="33.3%" valign="top"><?php if ($invoice_id) { ?>
            <b><?php echo $text_invoice_id; ?></b><br />
            <?php echo $invoice_id; ?><br />
            <br />
            <?php } ?>
            <b><?php echo $text_order_id; ?></b><br />
            #<?php echo $order_id; ?><br />
            <br />
            <b><?php echo $text_email; ?></b><br />
            <?php echo $email; ?><br />
            <br />
            <b><?php echo $text_telephone; ?></b><br />
            <?php echo $telephone; ?><br />
            <br />
            <?php if ($fax) { ?>
            <b><?php echo $text_fax; ?></b><br />
            <?php echo $fax; ?><br />
            <br />
            <?php } ?>
            <?php if ($shipping_method) { ?>
            <b><?php echo $text_shipping_method; ?></b><br />
            <?php echo $shipping_method; ?><br />
            <br />
            <?php } ?>
            <b><?php echo $text_payment_method; ?></b><br />
            <?php echo $payment_method; ?></td>
          <td width="33.3%" valign="top"><?php if ($shipping_address) { ?>
            <b><?php echo $text_shipping_address; ?></b><br />
            <?php echo $shipping_address; ?><br />
            <?php } ?></td>
          <td width="33.3%" valign="top"><b><?php echo $text_payment_address; ?></b><br />
            <?php echo $payment_address; ?><br /></td>
        </tr>
      </table>
    
   <div class="order_summary">
      <table width="100%">
        <tr>
          <th align="left"><?php echo $text_product; ?></th>
          <th align="left"><?php echo $text_model; ?></th>
          <th align="right"><?php echo $text_quantity; ?></th>
          <th align="right"><?php echo $text_price; ?></th>
          <th align="right"><?php echo $text_total; ?></th>
        </tr>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td align="left" valign="top"><?php echo $product['name']; ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            &nbsp;<small> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?></td>
          <td align="left" valign="top"><?php echo $product['model']; ?></td>
          <td align="right" valign="top"><?php echo $product['quantity']; ?></td>
          <td align="right" valign="top"><?php echo $product['price']; ?></td>
          <td align="right" valign="top"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
      </table>
      
      
        <table width="100%">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td align="right"><?php echo $total['title']; ?></td>
            <td align="right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
    </div>
     
   
	    <?php if ($comment) { ?>
	    	 <div class="comments">
	    		<b><?php echo $text_comment; ?></b>
	  			<?php echo $comment; ?>
	    	</div>
	  	<?php } ?>
    
    
    <?php if ($historys) { ?>
    	<div class="order_history">
    <b><?php echo $text_order_history; ?></b>
   
      <table width="500">
        <tr>
          <th align="left"><?php echo $column_date_added; ?></th>
          <th align="left"><?php echo $column_status; ?></th>
          <th align="left"><?php echo $column_comment; ?></th>
        </tr>
        <?php foreach ($historys as $history) { ?>
        <tr>
          <td valign="top"><?php echo $history['date_added']; ?></td>
          <td valign="top"><?php echo $history['status']; ?></td>
          <td valign="top"><?php echo $history['comment']; ?></td>
        </tr>
        <?php } ?>
      </table>
   </div>
    <?php } ?>
    
      <table>
        <tr>
          <td align="right"><a onclick="location = '<?php echo str_replace('&', '&amp;', $continue); ?>'" class="button"><span><?php echo $button_continue; ?></span></a></td>
        </tr>
      </table>
   
  
</div>
<?php echo $footer; ?> 