<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<h1><?php echo $text_critea; ?></h1>
    
    <!-- Search Box and Options -->
    <div id="content_search">
      <table>
        <tr>
         
          <td><?php if ($keyword) { ?>
            <input type="text" value="<?php echo $keyword; ?>" id="keyword" />
            <?php } else { ?>
            <input type="text" value="<?php echo $text_keyword; ?>" id="keyword" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
            <?php } ?>
            <select id="category_id">
              <option value="0"><?php echo $text_category; ?></option>
              <?php foreach ($categories as $category) { ?>
              <?php if ($category['category_id'] == $category_id) { ?>
              <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td colspan="2"><?php if ($description) { ?>
            <input type="checkbox" name="description" id="description" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="description" id="description" />
            <?php } ?>
            <?php echo $entry_description; ?></td>
        </tr>
		<tr>
          <td colspan="2"><?php if ($model) { ?>
            <input type="checkbox" name="model" id="model" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="model" id="model" />
            <?php } ?>
            <?php echo $entry_model; ?></td>
        </tr>
      </table>
    </div>
   
      <table>
        <tr>
          <td align="right"><a onclick="contentSearch();" class="button"><span><?php echo $button_search; ?></span></a></td>
        </tr>
      </table>
	
	<!-- Search Results -->   
    <h2><?php echo $text_search; ?></h2>
    <?php if (isset($products)) { ?>
    
    	<!-- Select box to sort products -->
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
	    
	    <!--  Display Products list that matches search criteria -->
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
						</li>
					<?php } ?>				
				<?php } ?>			    
			<?php } ?>
		</ul>
		    
    <div class="pagination"><?php echo $pagination; ?></div>
    
    <!-- If no search result found... -->
    <?php } else { ?>
    	<?php echo $text_empty; ?>
    <?php }?>
  
</div><!-- End #Content -->
<script type="text/javascript"><!--
$('#content_search input').keydown(function(e) {
	if (e.keyCode == 13) {
		contentSearch();
	}
});

function contentSearch() {
	url = 'index.php?route=product/search';
	
	var keyword = $('#keyword').attr('value');
	
	if (keyword) {
		url += '&keyword=' + encodeURIComponent(keyword);
	}

	var category_id = $('#category_id').attr('value');
	
	if (category_id) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	if ($('#description').attr('checked')) {
		url += '&description=1';
	}
	
	if ($('#model').attr('checked')) {
		url += '&model=1';
	}

	location = url;
}
//--></script>
<?php echo $footer; ?> 