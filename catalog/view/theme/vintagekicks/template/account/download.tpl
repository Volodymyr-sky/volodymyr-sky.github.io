<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  
      <h1><?php echo $heading_title; ?></h1>
    
    <?php foreach ($downloads as $download) { ?>
    	<div class="download_item">
    
      <b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?>
      <b><?php echo $text_size; ?></b> <?php echo $download['size']; ?>
      
          <table width="100%">
            <tr>
              <td width="40%"><?php echo $text_name; ?> <?php echo $download['name']; ?></td>
              <td width="50%"><?php echo $text_remaining; ?> <?php echo $download['remaining']; ?></td>
              <td rowspan="2" style="text-align: right;"><a onclick="location = '<?php echo str_replace('&', '&amp;', $download['href']); ?>'" class="order_button"><span><?php echo $text_download; ?></span></a></td>
            </tr>
            <tr>
              <td colspan="2"><?php echo $text_date_added; ?> <?php echo $download['date_added']; ?></td>
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