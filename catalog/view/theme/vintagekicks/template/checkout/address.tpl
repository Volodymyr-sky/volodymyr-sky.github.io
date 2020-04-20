<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
<h1><?php echo $heading_title; ?></h1>
<?php if ($addresses) { ?>
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address_1">
	    <b style="margin-bottom: 2px; display: block;"><?php echo $text_entries; ?></b>
	    <table width="536" cellpadding="3">
	    	<?php foreach ($addresses as $address) { ?>
		        <?php if ($address['address_id'] == $default) { ?>
		        	<tr>
		        		<td class="address_option" width="1"><input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" checked="checked" style="margin: 0px;" /></td>
		            	<td class="address"><label for="address_id[<?php echo $address['address_id']; ?>]" style="cursor: pointer;"><?php echo $address['address']; ?></label></td>
		          	
		            </tr>
		        <?php } else { ?>
		        	<tr>
		            	<td width="1" class="address_option"><input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" style="margin: 0px;" /></td>
		            	<td class="address"><label for="address_id[<?php echo $address['address_id']; ?>]" style="cursor: pointer;"><?php echo $address['address']; ?></label></td>
		          	</tr>
		       	<?php } ?>
	        <?php } ?>
	   	</table>
	    <table>
	    	<tr>
	        	<td align="right"><a onclick="$('#address_1').submit();" class="button"><?php echo $button_continue; ?></a></td>
	        </tr>
	    </table>
	</form>
<?php } ?>
<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address_2">
	<div class="new_address">
		<b><?php echo $text_new_address; ?></b>
	    <table>
	    	<tr>
	        	<td width="150"><span class="required">*</span> <?php echo $entry_firstname; ?></td>
	            <td>
	            	<input type="text" name="firstname" value="<?php echo $firstname; ?>" />
	            	<?php if ($error_firstname) { ?>
	            		<br/><span class="error"><?php echo $error_firstname; ?></span>
	              	<?php } ?>
	            </td>
	     	</tr>
	        <tr>
	        	<td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
	            <td>
	            	<input type="text" name="lastname" value="<?php echo $lastname; ?>" />
	              	<?php if ($error_lastname) { ?>
	              		<br /><span class="error"><?php echo $error_lastname; ?></span>
	              	<?php } ?>
	       		</td>
	  		</tr>
	        <tr>
	        	<td><?php echo $entry_company; ?></td>
	            <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
	      	</tr>
	        <tr>
	        	<td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
	            <td>
	            	<input type="text" name="address_1" value="<?php echo $address_1; ?>" />
	              	<?php if ($error_address_1) { ?>
	              		<br/><span class="error"><?php echo $error_address_1; ?></span>
	              	<?php } ?>
	            </td>
	        </tr>
	        <tr>
	        	<td><?php echo $entry_address_2; ?></td>
	            <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
	       	</tr>
	        <tr>
	        	<td><span class="required">*</span> <?php echo $entry_city; ?></td>
	            <td>
	            	<input type="text" name="city" value="<?php echo $city; ?>" />
	              	<?php if ($error_city) { ?>
	              		<br/><span class="error"><?php echo $error_city; ?></span>
	              	<?php } ?>
	          	</td>
	      	</tr>
	        <tr>
	        	<td id="postcode"><?php echo $entry_postcode; ?></td>
	            <td>
	            	<input type="text" name="postcode" value="<?php echo $postcode; ?>" />
				  	<?php if ($error_postcode) { ?>
	              		<br/><span class="error"><?php echo $error_postcode; ?></span>
	              	<?php } ?>
	            </td>
	        </tr>
	        <tr>
	        	<td><span class="required">*</span> <?php echo $entry_country; ?></td>
	            <td>
	            	<select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>'); $('#postcode').load('index.php?route=checkout/address/postcode&country_id=' + this.value);">
		                <option value="FALSE"><?php echo $text_select; ?></option>
		                <?php foreach ($countries as $country) { ?>
		                	<?php if ($country['country_id'] == $country_id) { ?>
		                		<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
		                	<?php } else { ?>
		                		<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
		                	<?php } ?>
		                <?php } ?>
	              	</select>
	              	<?php if ($error_country) { ?>
	              		<br/><span class="error"><?php echo $error_country; ?></span>
	              	<?php } ?>
	         	</td>
	     	</tr>
	        <tr>
	        	<td><span class="required">*</span> <?php echo $entry_zone; ?></td>
	            <td>
	            	<select name="zone_id">
	              	</select>
	              	<?php if ($error_zone) { ?>
	              		<br/><span class="error"><?php echo $error_zone; ?></span>
	              	<?php } ?>
	            </td>
	    	</tr>
		</table>
	    <table>
	    	<tr>
	        	<td align="right"><a onclick="$('#address_2').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
	        </tr>
	    </table>
    </div>
 </form>
  
</div><!-- End #content -->
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
$('#postcode').load('index.php?route=checkout/create/postcode&country_id=<?php echo $country_id; ?>');
//--></script>
<?php echo $footer; ?> 