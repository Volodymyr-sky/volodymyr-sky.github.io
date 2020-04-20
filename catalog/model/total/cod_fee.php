<?php
class ModelTotalCodFee extends Model {
	public function getTotal(&$total_data, &$total, &$taxes) {
		if ($this->config->get('cod_fee_status')) {

      if (isset($this->session->data['payment_method']['id'])&& $this->session->data['payment_method']['id'] == "cod" && $this->config->get('cod_tax') > 0) {
      
        if ($this->config->get('cod_free') == 0 || ($this->config->get('cod_free') == 1 && $this->cart->getSubTotal() < $this->config->get('cod_free_value'))) {
          
          $this->load->language('total/cod_fee');
          $this->load->model('localisation/currency');
          
          $cod_fee_tax_class_id = $this->config->get('cod_fee_tax_class_id');
          
          if (!empty($cod_fee_tax_class_id)) {
            $taxes[$cod_fee_tax_class_id['tax_class_id']]+= $this->config->get('cod_tax') / 100 * $this->tax->getRate($this->config->get('cod_fee_tax_class_id'));
          }
          
          if ($this->config->get('cod_free_type') == 1) {
            $cod_tax = $this->config->get('cod_tax_perc') / 100 * $this->cart->getSubTotal();
            
            if ($cod_tax < $this->config->get('cod_tax')) {
              $cod_tax = $this->config->get('cod_tax');
            }
          
          } else {
            $cod_tax = $this->config->get('cod_tax');
          }
          
          $total += $cod_tax;
          $total_data[] = array(
            'title'      => $this->language->get('text_cod_fee'),
            'text'       => $this->currency->format($cod_tax),
            'value'      => $cod_tax,
            'sort_order' => $this->config->get('cod_fee_sort_order')
          );
        }
      }
		}
	}
}
?>
