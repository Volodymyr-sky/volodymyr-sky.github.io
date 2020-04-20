<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
 
      <h1><?php echo $heading_title; ?></h1>
   
    <?php if ($error) { ?>
    <div class="warning"><?php echo $error; ?></div>
    <?php } ?>
    <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="forgotten">
      <p><?php echo $text_email; ?></p>
      <b><?php echo $text_your_email; ?></b>
      
        <table>
          <tr>
            <td width="150"><?php echo $entry_email; ?></td>
            <td><input type="text" name="email" /></td>
          </tr>
        </table>
     
        <table>
          <tr>
            <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
            <td align="right"><a onclick="$('#forgotten').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
          </tr>
        </table>
      
    </form>
  
</div>
<?php echo $footer; ?> 