<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<div class="content-inner">
		<h1><?php echo $heading_title; ?></h1>
		<?php echo $text_message; ?>	
		<a onclick="location = '<?php echo str_replace('&', '&amp;', $continue); ?>'" class="button"><?php echo $button_continue; ?></a>	
	</div>
</div>
<?php echo $footer; ?> 