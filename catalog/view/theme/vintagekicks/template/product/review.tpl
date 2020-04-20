<?php if ($reviews) { ?>
	<?php foreach ($reviews as $review) { ?>
		<div class="review_entry">
			<div class="review_meta">
				<b><?php echo $review['author']; ?></b>
				<br/><img src="catalog/view/theme/vintagekicks/image/stars_<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['stars']; ?>" />
				<br/><span class="review_date"><?php echo $review['date_added']; ?></span>	
			</div>
 			<div class="review_text">
 				<?php echo $review['text']; ?>
 			</div>
  		</div>
	<?php } ?>
	<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
	<?php echo $text_no_reviews; ?>
<?php } ?>
