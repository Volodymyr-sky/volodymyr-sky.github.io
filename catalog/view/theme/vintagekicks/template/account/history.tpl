<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  
      <h1><?php echo $heading_title; ?></h1>
   
    <?php foreach ($orders as $order) { ?>
    	<div class="order_history_entry">
      <b><?php echo $text_order; ?></b> # <?php echo $order['order_id']; ?>
      <b><?php echo $text_status; ?></b> <?php echo $order['status']; ?>
      
        
          <table width="100%">
            <tr>
              <td><?php echo $text_date_added; ?> <?php echo $order['date_added']; ?></td>
              <td><?php echo $text_customer; ?> <?php echo $order['name']; ?></td>
              <td rowspan="2" style="text-align: right;"><a onclick="location = '<?php echo str_replace('&', '&amp;', $order['href']); ?>'" class="order_button"><?php echo $button_view; ?></a></td>
            </tr>
            <tr class="border">
              <td><?php echo $text_products; ?> <?php echo $order['products']; ?></td>
              <td><?php echo $text_total; ?> <?php echo $order['total']; ?></td>
            </tr>
          </table>
       	</div>
    <?php } ?>
    <div class="pagination"><?php echo $pagination; ?></div>
   
      <table>
        <tr>
          <td align="right"><a onclick="location = '<?php echo str_replace('&', '&amp;', $continue); ?>'" class="button"><span><?php echo $button_continue; ?></span></a></td>
        </tr>
      </table>
    
</div>
<?php echo $footer; ?> 