<div class="module bestseller_module">
	<h2><?php echo $heading_title; ?></h2>
	<?php if ($products) { ?>
		<?php foreach ($products as $product) { ?>
			<div class="module_product">
				<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" /></a>
				<b><a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a></b>
				<?php if ($display_price) { ?>
					<?php if (!$product['special']) { ?>
						<br/><?php echo $product['price']; ?>
					<?php } else { ?>
						<br/><span class="special_price"><?php echo $product['price']; ?></span><?php echo $product['special']; ?>
					<?php } ?>
				<?php } ?>
			</div>			
		<?php } ?>
	<?php } ?>
</div>
 