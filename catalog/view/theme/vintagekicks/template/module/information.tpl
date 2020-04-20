<div class="module information_module">
<h2><?php echo $heading_title; ?></h2>
  
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo str_replace('&', '&amp;', $information['href']); ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
</div>