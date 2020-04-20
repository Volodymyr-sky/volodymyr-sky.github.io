<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<div class="product__wrapper">
		<!-- Product Image and Additional Product Images --> 
		<div id="product_images">
			<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="thickbox" rel="gallery"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
			<?php if ($images) { ?>
				<?php foreach ($images as $image) { ?>
					<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="thickbox" rel="gallery"><img src="<?php echo $image['thumb']; ?>" class="additional_image" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
				<?php } ?>
				<p><?php echo $text_enlarge; ?></p>
			<?php } else { ?>
				<p><?php echo $text_no_images; ?></p>
			<?php } ?>
		</div>
		
		<!-- Product Information -->
		<div id="product_details">
			<h1><?php echo $heading_title; ?></h1>
			<?php if ($display_price) { ?>
				<?php if (!$special) { ?>
					<span class="price"><?php echo $price; ?></span>
				<?php } else { ?>
					<span class="price special_price"><?php echo $price; ?></span> <span class="price"><?php echo $special; ?></span>
				<?php } ?>
			<?php } ?>
			<div id="product_meta">
				<?php if ($review_status) { ?>
					<?php echo $text_average; ?>
					<?php if ($average) { ?>
						<img src="catalog/view/theme/vintagekicks/image/stars_<?php echo $average . '.png'; ?>" alt="<?php echo $text_stars; ?>" style="margin-top: 2px;" />
					<?php } else { ?>
						<?php echo $text_no_rating; ?>
					<?php } ?>
				<?php } ?>
				<br/><?php echo $text_availability; ?> <?php echo $stock; ?>
				<br/>Категория: <?php echo $model; ?>
				<?php if ($manufacturer) { ?>
					<br/><?php echo $text_manufacturer; ?> <a href="<?php echo str_replace('&', '&amp;', $manufacturers); ?>"><?php echo $manufacturer; ?></a>
				<?php } ?>
				</div>
				<?php if ($display_price) { ?>			
						<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="product">
							<?php if ($options) { ?>
								<div id="options_box">
								<?php foreach ($options as $option) { ?>
									<?php echo $option['name']; ?>:
										<select name="option[<?php echo $option['option_id']; ?>]">
											<?php foreach ($option['option_value'] as $option_value) { ?>
												<option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?>
													<?php if ($option_value['price']) { ?>
														<?php echo $option_value['prefix']; ?><?php echo $option_value['price']; ?>
													<?php } ?>
												</option>
											<?php } ?>
										</select><br/>
									<?php } ?>
								</div>
							<?php } ?><br/>
							<?php if ($display_price) { ?>
								<?php if ($discounts) { ?>
									<?php echo $text_discount; ?>
									<?php echo $text_order_quantity; ?>
									<?php echo $text_price_per_item; ?>
									<?php foreach ($discounts as $discount) { ?>
										<?php echo $discount['quantity']; ?>
										<?php echo $discount['price']; ?>
									<?php } ?>
								<?php } ?>
							<?php } ?>
							<p>
							<?php echo $text_qty; ?>
							<input type="text" name="quantity" size="3" value="<?php echo $minimum; ?>" /><br/></p>
					
						<a onclick="$('#product').submit();" id="add_to_cart" class="button add_to_cart"></a>
						<?php if ($minimum > 1) { ?><?php echo $text_minimum; ?><?php } ?>
						
						<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
						<input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />                
						</form>
					<?php } ?>
			
			<div id="product_description">
				<h2><?php echo $tab_description; ?></h2> 
				<?php echo $description; ?>
			</div>
		</div>
		
		<?php if ($tags) { ?>
			<div id="product_tags">
				<h2><?php echo $text_tags; ?></h2>
				<?php foreach ($tags as $tag) { ?>
					<a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a> 
				<?php } ?>
			</div> 
	<?php } ?>

		<!-- Related Products -->
		<div id="product_related">
			<?php if ($products) { ?>
				<h2><?php echo $tab_related; ?></h2>
				<ul>
					<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
						<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
							<?php if (isset($products[$j])) { ?>
								<li>
									<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a>
									<!-- <a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><?php echo $products[$j]['name']; ?></a>
									<?php echo $products[$j]['model']; ?>
									<?php if ($display_price) { ?>
										<?php if (!$products[$j]['special']) { ?>
											<?php echo $products[$j]['price']; ?>
										<?php } else { ?>
											<?php echo $products[$j]['price']; ?><?php echo $products[$j]['special']; ?>
										<?php } ?>
										<a class="button_add_small" href="<?php echo $products[$j]['add']; ?>" title="<?php echo $button_add_to_cart; ?>" ></a>
									<?php } ?>
									<?php if ($products[$j]['rating']) { ?>
										<img src="catalog/view/theme/default/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
									<?php } ?> -->
								</li>
							<?php } ?>
						<?php } ?>
					<?php } ?>
				</ul>
			<?php } else { ?>
				<h2><?php echo $text_no_related; ?></h2>
			<?php } ?>
		</div>
		
		<!-- Product Reviews -->
		<?php if ($review_status) { ?>
			<div id="product_reviews">
				<div id="tab_review" class="tab_page">
					<h2><?php echo $tab_review; ?></h2>
					<div id="review"></div>
					         <div class="new-review">
							 <div class="heading" id="review_title">
							<h2><?php echo $text_write; ?></h2>
					</div>
					<div id="review_name">
							<?php echo $entry_name; ?>
					</div>
					<div id="review_name_input">
							<input type="text" name="name" value="" />
					</div>
					<div id="review_text">
							<?php echo $entry_review; ?>
					</div>
					<div id="review_text_input">
							<textarea name="text" style="width: 98%;" rows="8"></textarea>       
						<span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
					</div>
					<div id="review_rating">
							<b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
						<input type="radio" name="rating" value="1" style="margin: 0;" />
						&nbsp;
						<input type="radio" name="rating" value="2" style="margin: 0;" />
						&nbsp;
						<input type="radio" name="rating" value="3" style="margin: 0;" />
						&nbsp;
						<input type="radio" name="rating" value="4" style="margin: 0;" />
						&nbsp;
						<input type="radio" name="rating" value="5" style="margin: 0;" />
						&nbsp; <span><?php echo $entry_good; ?></span>
					</div>
					<div id="review_captcha">
							<p><b><?php echo $entry_captcha; ?></b><br /></p>
						<input type="text" name="captcha" value="" autocomplete="off" />
						<br />
						<img src="index.php?route=product/product/captcha" id="captcha" />
					</div>
					<a onclick="review();" class="button">Отправить</a>
							 </div>
				</div>
			</div>
		<?php } ?>

	</div>
</div><!-- End #content -->
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

function review() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#review_button').attr('disabled', 'disabled');
			$('#review_title').after('<div class="wait"><img src="catalog/view/theme/default/image/loading_1.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#review_button').attr('disabled', '');
			$('.wait').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review_title').after('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review_title').after('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
}
//--></script>

<?php echo $footer; ?> 