<?php if ($products) { ?>
	<div id="latest_home">
		<h1><?php echo $heading_title; ?></h1>
		  
		<ul class="product_list">
			<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
				<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
					<?php if (isset($products[$j])) { ?>
						<li>
			      			<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a>
			      			<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><?php echo $products[$j]['name']; ?></a><br/>
			     			
			     			<?php if ($display_price) { ?>
								<?php if (!$products[$j]['special']) { ?>
									<span class="current_price"><?php echo $products[$j]['price']; ?></span>
								<?php } else { ?>
									<span class="has_special"><?php echo $products[$j]['price']; ?></span><span class="current_price"><?php echo $products[$j]['special']; ?></span>
								<?php } ?>
							<?php } ?>
			      			<!-- <?php echo $products[$j]['model']; ?>
			     			<?php if ($products[$j]['rating']) { ?>
			      				<img src="catalog/view/theme/default/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
			      			<?php } ?> --><br/>
<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>" id="order-button"></a>
		      			</li>
		      		<?php } ?>
		      	<?php } ?>
			<?php } ?>
		</ul>
	</div>
<?php } ?>
