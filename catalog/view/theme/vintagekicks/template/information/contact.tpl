<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
<h1><?php echo $heading_title; ?></h1>   
    <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="contact">      
          	<b><?php echo $text_address; ?></b>
            <br/><?php echo $store; ?>
            <br/><?php echo $address; ?>
         
            <?php if ($telephone) { ?>
            	<br/><b><?php echo $text_telephone; ?></b> <?php echo $telephone; ?>           
            <?php } ?>
            <?php if ($fax) { ?>
            	<br/><?php echo $text_fax; ?> <?php echo $fax; ?>
            <?php } ?><br/>
          	<h2>Send us a message!</h2>
      		<div id="contact_name">
      			<?php echo $entry_name; ?>
      		</div>
      		<div id="contact_name_input">
      			<input type="text" name="name" value="<?php echo $name; ?>" />
      		</div>
            <?php if ($error_name) { ?>
            	<span class="error"><?php echo $error_name; ?></span>
            <?php } ?>
            <div id="contact_email">
            	<?php echo $entry_email; ?>            
            </div>
            <div id="contact_email_input">
            	<input type="text" name="email" value="<?php echo $email; ?>" />
            </div>
            <?php if ($error_email) { ?>
            	<span class="error"><?php echo $error_email; ?></span>
            <?php } ?>
            <div id="contact_enquiry">
            	<?php echo $entry_enquiry; ?>
            </div>
            <div id="contact_enquiry_input">
            	<textarea name="enquiry"><?php echo $enquiry; ?></textarea>            
            </div>
              
              <?php if ($error_enquiry) { ?>
              <span class="error"><?php echo $error_enquiry; ?></span>
              <?php } ?>
              <div id="review_captcha">
	    			<b><?php echo $entry_captcha; ?></b><br />
        			<input type="text" name="captcha" value="" autocomplete="off" />
        			<br />
        			<img src="index.php?route=information/contact/captcha" />
        </div>
             
              <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
              <?php } ?>
             
              
              <a onclick="$('#contact').submit();" class="button"><?php echo $button_continue; ?></a>
    </form>
</div>
<?php echo $footer; ?> 