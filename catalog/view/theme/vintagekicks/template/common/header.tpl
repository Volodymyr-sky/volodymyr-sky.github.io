<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">

<head>

<title><?php echo $title; ?></title>

<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>

<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>

    <meta name="viewport" content="width=devce-width, initial-scale=1.0">

<base href="<?php echo $base; ?>" />
<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
	<link href="<?php echo str_replace('&', '&amp;', $link['href']); ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<!-- Load our StyleSheets -->
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/stylesheet.css" />
	<!--[if lt IE 8]>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/ie7-and-down.css" />
	<![endif]-->
	<!--[if IE 6]>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/vintagekicks/stylesheet/ie6.css" />
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/thickbox/thickbox.css" />
	<?php foreach ($styles as $style) { ?>
		<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
<!-- End StyleSheets -->

<!-- Load Our Javascript files -->
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/thickbox/thickbox-compressed.js"></script>
	<?php foreach ($scripts as $script) { ?>
		<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	
	<!-- Twitter Plugin Scripts -->
		<script type='text/javascript' src="catalog/view/theme/vintagekicks/jquery.tweet.js" charset="utf-8"></script>
		<script type='text/javascript'>
	    $(document).ready(function(){
	        $(".tweet").tweet({
	            username: "eurosushi",
	            join_text: "auto",
	            avatar_size: 32,
	            count: 3,
	            auto_join_text_default: "we said,", 
	            auto_join_text_ed: "we",
	            auto_join_text_ing: "we were",
	            auto_join_text_reply: "we replied to",
	            auto_join_text_url: "we were checking out",
	            loading_text: "loading tweets..."
	        });
	    });
	    </script>
		
	<!-- End Twitter Plugin Scripts -->
 <!-- End JavaScripts -->

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">

 <!-- Google Analytics -->

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-21068909-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<!-- Begun -->

<script type="text/javascript">
_bacct = "UA-21068909-1";
</script>
<script type="text/javascript" src="http://u.begun.ru/begun.js"></script>

</head>
<body>


<!-- Currency And Language Selectors -->
<div id="currency_language">
	<?php if ($currencies) { ?>
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="currency_form">
        	<div class="switcher">
            	<?php foreach ($currencies as $currency) { ?>
            		<?php if ($currency['code'] == $currency_code) { ?>
            			<div class="selected"><a><?php echo $currency['title']; ?></a></div>
            		<?php } ?>
            	<?php } ?>
            	<div class="option">
              		<?php foreach ($currencies as $currency) { ?>
              			<a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a>
              		<?php } ?>
            	</div>
          	</div>
          	<div style="display: inline;">
            	<input type="hidden" name="currency_code" value="" />
            	<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          	</div>
        </form>
	<?php } ?>
    <?php if ($languages) { ?>
    	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="language_form">
        	<div class="switcher">
           		<?php foreach ($languages as $language) { ?>
            		<?php if ($language['code'] == $language_code) { ?>
            			<div class="selected"><a><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />&nbsp;&nbsp;<?php echo $language['name']; ?></a></div>
            		<?php } ?>
            	<?php } ?>
            	<div class="option">
              		<?php foreach ($languages as $language) { ?>
              			<a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />&nbsp;&nbsp;<?php echo $language['name']; ?></a>
              		<?php } ?>
            	</div>
          	</div>
          	<div>
            	<input type="hidden" name="language_code" value="" />
            	<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          	</div>
        </form>
	<?php } ?>
</div><!-- End Currency and Language Selectors -->

<div class="wrapper" id="wrapper" ><!-- Begin wrapper -->
	<div id="header"><!-- Begin Header -->
	<button class="open-menu">
		<img src="/image/nav-img/open-menu.svg" title="Меню" alt="Меню"/>
	</button>
	<button class="open-right-col">
		<img src="/image/nav-img/shopping-cart.svg" title="Корзина" alt="Корзина"/>
	</button>
		<div id="logo">			
      		<?php if ($logo) { ?>
      			<a href="<?php echo str_replace('&', '&amp;', $home); ?>"><img src="<?php echo $logo; ?>" title="<?php echo $store; ?>" alt="<?php echo $store; ?>" /></a>
      		<?php } else { ?>
      			<a href="<?php echo str_replace('&', '&amp;', $home); ?>"><?php echo $logo; ?></a>
      		<?php } ?>
      	</div>
		<div id="header_content">
      		<ul class="top-navigation">
				<li>
					<?php if (!$logged) { ?>
		      			<a href="<?php echo str_replace('&', '&amp;', $login); ?>" id="tab_login"><?php echo $text_login; ?></a>
		     		<?php } else { ?>
		      			<a href="<?php echo str_replace('&', '&amp;', $logout); ?>" id="tab_logout"><?php echo $text_logout; ?></a>
					<?php } ?>
				</li>
   				<li><a href="<?php echo str_replace('&', '&amp;', $account); ?>" id="tab_account"><?php echo $text_account; ?></a></li>
   				<li><a href="<?php echo str_replace('&', '&amp;', $cart); ?>" id="tab_cart"><?php echo $text_cart; ?></a></li>
   				<li><a href="<?php echo str_replace('&', '&amp;', $checkout); ?>" id="tab_checkout"><?php echo $text_checkout; ?></a></li>
   			</ul>
   			
   			<div id="phone">
    			<img src="/catalog/view/theme/vintagekicks/image/phone.png">
			</div>
		</div>        
	</div><!-- End Header -->
	<div id="main_navigation"><!-- Begin Main Navigation -->
			<?php
				$this->load->model('tool/seo_url');
				$results = $this->model_catalog_category->getCategories();
				if ($results) {$output = '<ul class="sf-menu">';}
				foreach ($results as $result) {
					$output .= '<li>';
					$new_path = $result['category_id'];
					$unrewritten = HTTP_SERVER.'index.php?route=product/category&amp;path=' . $new_path;
					$rewritten = $this->model_tool_seo_url->rewrite($unrewritten);
					$output .= '<a href="' . $rewritten . '">' . $result['name'] . '</a>';
					$sub_results = $this->model_catalog_category->getCategories($new_path);
					if ($sub_results) {$output .= '<ul>'; 
						foreach ($sub_results as $sub_result) {
							$output .= '<li>';
							$new_sub_path = $sub_result['category_id'];
							$sub_unrewritten = $unrewritten.'_'. $new_sub_path;
							$sub_rewritten = $this->model_tool_seo_url->rewrite($sub_unrewritten);
							$output .= '<a href="' . $sub_rewritten . '">' . $sub_result['name'] . '</a>';						
							$sub2_results = $this->model_catalog_category->getCategories($new_sub_path);
							if ($sub2_results) {
								$output .= '<ul>';
								foreach ($sub2_results as $sub2_result) {
									$output .= '<li>';
									$new2_sub_path = $sub2_result['category_id'];
									$sub2_unrewritten = $sub_unrewritten.'_'. $new2_sub_path;
									$sub2_rewritten = $this->model_tool_seo_url->rewrite($sub2_unrewritten);
									$output .= '<a href="' . $sub2_rewritten . '">' . $sub2_result['name'] . '</a>';					
									$output .= '</li>';
								}
								$output .= '</ul>';
							}
							$output .= '</li>';														
						}						
						
						$output .= '</ul>';
					}			
					$output .= '</li>'; 
				}
			?>
 			<?php if ($results) {
				$output .= '<li></li></ul>';
			}	
			echo $output;
			?>     
		</div><!-- End Main Navigation -->
		<?php if (isset($common_error)) { ?>
			<div class="warning"><?php echo $common_error; ?></div>
		<?php } ?>
		
		<!-- Breadcrumbs -->
		<div id="breadcrumb">
	        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
	        	<?php echo $breadcrumb['separator']; ?><a href="<?php echo str_replace('&', '&amp;', $breadcrumb['href']); ?>"><?php echo $breadcrumb['text']; ?></a>
	        <?php } ?>
        </div><div id="breadcrumb-line"></div>
        <div id="container">
<script type="text/javascript"><!-- 
function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');

		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) {
				var urlVarPair = urlVars[i].split('=');
				
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
					urlVarValue = urlVarPair[1];
				}
			}
		}
	}
	
	return urlVarValue;
} 

$(document).ready(function() {
	route = getURLVar('route');
	
	if (!route) {
		$('#tab_home').addClass('selected');
	} else {
		part = route.split('/');
		
		if (route == 'common/home') {
			$('#tab_home').addClass('selected');
		} else if (route == 'account/login') {
			$('#tab_login').addClass('selected');	
		} else if (part[0] == 'account') {
			$('#tab_account').addClass('selected');
		} else if (route == 'checkout/cart') {
			$('#tab_cart').addClass('selected');
		} else if (part[0] == 'checkout') {
			$('#tab_checkout').addClass('selected');
		} else {
			$('#tab_home').addClass('selected');
		}
	}
});
//--></script>
<script type="text/javascript"><!--
$('#search input').keydown(function(e) {
	if (e.keyCode == 13) {
		moduleSearch();
	}
});

function moduleSearch() {
	url = 'index.php?route=product/search';
	
	var filter_keyword = $('#filter_keyword').attr('value')
	
	if (filter_keyword) {
		url += '&keyword=' + encodeURIComponent(filter_keyword);
	}
	
	var filter_category_id = $('#filter_category_id').attr('value');
	
	if (filter_category_id) {
		url += '&category_id=' + filter_category_id;
	}
	
	location = url;
}
//--></script>
<script type="text/javascript"><!--
$('.switcher').bind('click', function() {
	$(this).find('.option').slideToggle('fast');
});
$('.switcher').bind('mouseleave', function() {
	$(this).find('.option').slideUp('fast');
}); 
//--></script>
