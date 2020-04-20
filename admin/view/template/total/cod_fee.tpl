<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
  <div class="heading">
    <h1 style="background-image: url('view/image/total.png');"><?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
  <div id="tab_general" class="page">
    <table class="form">
      <tr>
        <td><?php echo $entry_cod_free_type; ?></td>
        <td><?php if ($cod_free_type) { ?>
          <input type="radio" name="cod_free_type" value="1" checked="checked" />
          <?php echo $entry_cod_free_perc; ?>
          <input type="radio" name="cod_free_type" value="0" />
          <?php echo $entry_cod_free_fixed; ?>
          <?php } else { ?>
          <input type="radio" name="cod_free_type" value="1" />
          <?php echo $entry_cod_free_perc; ?>
          <input type="radio" name="cod_free_type" value="0" checked="checked" />
          <?php echo $entry_cod_free_fixed; ?>
          <?php } ?></td>
      </tr>
      <tr>
        <td width="25%"><?php echo $entry_cod_tax; ?></td>
        <td><input type="text" name="cod_tax" value="<?php echo $cod_tax; ?>" /></td>
      </tr>
      <tr>
        <td width="25%"><?php echo $entry_cod_tax_perc; ?></td>
        <td><input type="text" name="cod_tax_perc" value="<?php echo $cod_tax_perc; ?>" /></td>
      </tr>
      <tr>
        <td><?php echo $entry_cod_free; ?></td>
        <td><?php if ($cod_free) { ?>
          <input type="radio" name="cod_free" value="1" checked="checked" />
          <?php echo $text_yes; ?>
          <input type="radio" name="cod_free" value="0" />
          <?php echo $text_no; ?>
          <?php } else { ?>
          <input type="radio" name="cod_free" value="1" />
          <?php echo $text_yes; ?>
          <input type="radio" name="cod_free" value="0" checked="checked" />
          <?php echo $text_no; ?>
          <?php } ?></td>
      </tr>
      <tr>
        <td width="25%"><?php echo $entry_cod_free_value; ?></td>
        <td><input type="text" name="cod_free_value" value="<?php echo $cod_free_value; ?>" /></td>
      </tr>
      <tr>
        <td><?php echo $entry_tax; ?></td>
        <td><select name="cod_fee_tax_class_id">
            <option value="0"><?php echo $text_none; ?></option>
            <?php foreach ($tax_classes as $tax_class) { ?>
            <?php if ($tax_class['tax_class_id'] == $cod_fee_tax_class_id) { ?>
            <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
            <?php } ?>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td width="25%"><?php echo $entry_status; ?></td>
        <td><select name="cod_fee_status">
            <?php if ($cod_fee_status) { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $entry_sort_order; ?></td>
        <td><input type="text" name="cod_fee_sort_order" value="<?php echo $cod_fee_sort_order; ?>" size="1" /></td>
      </tr>
      </table>
    </form>
  </div>
   </div>
</div>
<script type="text/javascript"><!-- 
$.tabs('.tabs a');  
//--></script>
<?php echo $footer; ?>