  <div class="top" <? if (!$title) {echo "style=\"height: 5px; overflow: hidden;\""; }; ?>>
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
	  <h1><?php
	  if($title) { ?>
		<?php echo $title; ?>
	  <?php
	  } ?></h1>
    </div>
  </div>

  <div class="middle" style="text-align: left;">
    <?php echo $code; ?>
  </div>

  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
