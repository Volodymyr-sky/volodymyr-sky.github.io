<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div id="content">
	<!-- Display Welcome Message -->
	<div id="welcome_home">
		<?php if ($welcome) { ?>
			<h1><?php echo $heading_title; ?></h1>
		 	<?php echo $welcome; ?>
		<?php } ?>
	</div>
	
	<!-- Display any modules we have set to show on home page. -->
	<?php foreach ($modules as $module) { ?>
		<?php echo ${$module['code']}; ?>
	<?php } ?>
</div>
<?php echo $footer; ?> 