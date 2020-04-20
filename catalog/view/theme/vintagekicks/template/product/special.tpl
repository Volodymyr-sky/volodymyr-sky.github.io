<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<h1><?php echo $heading_title; ?></h1>
	
	<!-- Select box for sorting items -->
    <div class="sort">
			<?php echo $text_sort; ?>
			<select name="sort" onchange="location = this.value">
				<?php foreach ($sorts as $sorts) { ?>
					<?php if (($sort . '-' . $order) == $sorts['value']) { ?>
						<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
					<?php } else { ?>
						<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
					<?php } ?>
				<?php } ?>
			</select>
	</div>
	
	<!-- List of Products -->
	<ul class="product_list">
		<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
			<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
				<?php if (isset($products[$j])) { ?>
					<li>
					<a href="<?php echo $products[$j]['href']; ?>"><img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a>
					<b><a href="<?php echo $products[$j]['href']; ?>"><?php echo $products[$j]['name']; ?></a></b><br />
					
					<?php if ($display_price) { ?>
						
							<?php if (!$products[$j]['special']) { ?>
								<?php echo $products[$j]['price']; ?>
							<?php } else { ?>
								<span class="special_price"><?php echo $products[$j]['price']; ?></span><?php echo $products[$j]['special']; ?>
							<?php } ?><br/>
						
					<?php } ?>
					
					<!-- <?php echo $products[$j]['model']; ?><br />
					<?php if ($products[$j]['rating']) { ?>
						<img src="catalog/view/theme/default/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
					<?php } ?> -->
					</li>
				<?php } ?>				
			<?php } ?>			    
		<?php } ?>
	</ul>    
   <?php echo $pagination; ?>
</div><!-- End #content -->
<?php echo $footer; ?> 