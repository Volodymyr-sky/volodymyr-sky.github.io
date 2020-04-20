<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<h1><?php echo $heading_title; ?></h1>
    <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="newsletter">
    	<table>
        	<tr>
            	<td width="150"><?php echo $entry_newsletter; ?></td>
            	<td><?php if ($newsletter) { ?>
		       			<input type="radio" name="newsletter" value="1" checked="checked" />
              			<?php echo $text_yes; ?>&nbsp;
              			<input type="radio" name="newsletter" value="0" />
              			<?php echo $text_no; ?>
              		<?php } else { ?>
              			<input type="radio" name="newsletter" value="1" />
              			<?php echo $text_yes; ?>&nbsp;
              			<input type="radio" name="newsletter" value="0" checked="checked" />
              			<?php echo $text_no; ?>
              		<?php } ?>
              	</td>
          	</tr>
        </table>      
        <table>
          <tr>
            <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
            <td align="right"><a onclick="$('#newsletter').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
          </tr>
        </table>      
    </form>  
</div>
<?php echo $footer; ?> 