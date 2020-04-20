<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	
	<h1><?php echo $heading_title; ?></h1>
	
	<!-- Specific Category thumb images are commented out. Remove the comment tags to enable them in your theme.  
	<?php if ($thumb) { ?>
		<img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" />	  
    <?php } ?> -->
    
    <!--  Category Description -->
    <?php if ($description) { ?>
    	<div id="category_description">
			<?php echo $description; ?>
		</div>
	<?php } ?>
	
	<!-- If there are no categories or products to display, show an error message. -->
	<?php if (!$categories && !$products) { ?>
   		<?php echo $text_error; ?>
    <?php } ?>
   
   <!-- If there are categories to display, output the list of categories -->
   <?php if ($categories) { ?>
		<ul id="category_list">
		<?php for ($i = 0; $i < sizeof($categories); $i = $i + 4) { ?>
			<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
				<?php if (isset($categories[$j])) { ?>
					<li>
						<b><a href="<?php echo $categories[$j]['href']; ?>" class="cat_title"><?php echo $categories[$j]['name']; ?></a></b>
						<a href="<?php echo $categories[$j]['href']; ?>"><img src="<?php echo $categories[$j]['thumb']; ?>" title="<?php echo $categories[$j]['name']; ?>" alt="<?php echo $categories[$j]['name']; ?>" style="margin-bottom: 3px;" /></a><br />
						
					</li>
				<?php } ?>
			<?php } ?>
			     
		<?php } ?>
		</ul>   
	<?php } ?>
	
	<!-- If there are Products to display, output the list of products -->
	<?php if ($products) { ?>
	
		<!-- Select Box for Sorting Products -->
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
		
		<!-- Product List -->
		<ul class="product_list">
		<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
			<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
				<?php if (isset($products[$j])) { ?>
					<li>
					<a href="<?php echo $products[$j]['href']; ?>"><img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a>
					<a href="<?php echo $products[$j]['href']; ?>"><?php echo $products[$j]['name']; ?></a><br />
					
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

<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>" id="order-button"></a>
					</li>
				<?php } ?>				
			<?php } ?>			    
		<?php } ?>
		</ul>    
		<div class="pagination">
			<?php echo $pagination; ?>
		</div>
	<?php } ?><!-- End if products -->
</div><!-- End #content -->
<?php echo $footer; ?> 