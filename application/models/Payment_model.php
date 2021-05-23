<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Payment_model extends CI_Model
{

	public function getCity($id)
	{
		$curl = curl_init();

		curl_setopt_array($curl, array(
			CURLOPT_URL => "https://api.rajaongkir.com/starter/city?province=" . $id,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_ENCODING => "",
			CURLOPT_MAXREDIRS => 10,
			CURLOPT_TIMEOUT => 30,
			CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			CURLOPT_CUSTOMREQUEST => "GET",
			CURLOPT_HTTPHEADER => array(
				"key: " . $this->config->item('api_rajaongkir')
			),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		if ($err) {
			echo "cURL Error #:" . $err;
		} else {
			$response =  json_decode($response, true);
			return $response['rajaongkir']['results'];
		}
		// $this->db->get_where('kota', array('provisi_id' => $id));
	}

	public function getProvinces()
	{
		$curl = curl_init();

		curl_setopt_array($curl, array(
			CURLOPT_URL => "https://api.rajaongkir.com/starter/province",
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_ENCODING => "",
			CURLOPT_MAXREDIRS => 10,
			CURLOPT_TIMEOUT => 30,
			CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			CURLOPT_CUSTOMREQUEST => "GET",
			CURLOPT_HTTPHEADER => array(
				"key: " . $this->config->item('api_rajaongkir')
			),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		if ($err) {
			echo "cURL Error #:" . $err;
		} else {
			$response =  json_decode($response, true);
			return $response['rajaongkir']['results'];
		}
	}

	public function getService($kurir)
	{
		$dbSetting = $this->db->get('settings')->row_array();
		$origin = $dbSetting['regency_id'];
		$destination = $this->input->post('destination');

		$getcart = $this->db->get_where('cart', ['user' => $this->session->userdata('id')]);
		$weight = 0;
		foreach ($getcart->result_array() as $key) {
			$weight += (intval($key['weight']) * intval($key['qty']));
		}

		$curl = curl_init();
		curl_setopt_array($curl, array(
			CURLOPT_URL => "https://api.rajaongkir.com/starter/cost",
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_ENCODING => "",
			CURLOPT_MAXREDIRS => 10,
			CURLOPT_TIMEOUT => 30,
			CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			CURLOPT_CUSTOMREQUEST => "POST",
			CURLOPT_POSTFIELDS => "origin=" . $origin . "&destination=" . $destination . "&weight=" . $weight . "&courier=" . $kurir . "",
			CURLOPT_HTTPHEADER => array(
				"content-type: application/x-www-form-urlencoded",
				"key: " . $this->config->item('api_rajaongkir')
			),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		if ($err) {
			return "cURL Error #:" . $err;
		} else {
			$response = json_decode($response, true);
			return $response['rajaongkir']['results'][0]['costs'];
		}
	}

	public function succesfully()
	{
		$getuser = $this->db->get_where('user', ['id' => $this->session->userdata('id')])->row_array();
		$invoice = $getuser['id'] .  substr(rand(), 0, 5) . substr(time(), 7);;
		$label = $this->input->post('label', true);
		$name = $this->input->post('name', true);
		$email = $getuser['email'];
		$telp = $this->input->post('telp', true);
		$province = $this->input->post('paymentSelectProvinces', true);
		$regency = $this->input->post('paymentSelectRegencies', true);
		$district = $this->input->post('district', true);
		$village = $this->input->post('village', true);
		$zipcode = $this->input->post('zipcode', true);
		$address = $this->input->post('address', true);
		$courier = $this->input->post('paymentSelectKurir', true);
		$service1 = explode("-", $courier);
		$service2 = $service1[2];
		$ongkir = $service1[0];
		$kurir = $service1[1];
		$dateInput = date('Y-m-d H:i:s');
		$getcart = $this->db->get_where('cart', ['user' => $this->session->userdata('id')]);
		foreach ($getcart->result_array() as $key) {
			$price += (intval($key['price']) * intval($key['qty']));
		}
		$totalPrice = $price;
		$totalAll = intval($ongkir) + intval($totalPrice);

		if ($service2 == 'cod') {
			$numOne = 1;
		} else {
			$numOne = 0;
		}

		$data = [
			'user' => $this->session->userdata('id'),
			'invoice_code' => $invoice,
			'label' => $label,
			'name' => $name,
			'email' => $email,
			'telp' => $telp,
			'province' => $province,
			'regency' => $regency,
			'district' => $district,
			'village' => $village,
			'zipcode' => $zipcode,
			'address' => $address,
			'courier' => $service2,
			'courier_service' => $kurir,
			'ongkir' => $ongkir,
			'total_price' => $totalPrice,
			'total_all' => $totalAll,
			'date_input' => $dateInput,
			'resi' => '0'
		];
		$this->db->insert('invoice', $data);

		foreach ($getcart->result_array() as $c) {
			$data = [
				'id_invoice' => $invoice,
				'user' => $this->session->userdata('id'),
				'product_name' => $c['product_name'],
				'price' => $c['price'],
				'qty' => $c['qty'],
				'slug' => $c['slug'],
				'ket' => $c['ket'],
				'img' => $c['img']
			];
			$this->db->insert('transaction', $data);
		}

		$data['user'] = $name;
		$data['invoice_code'] = $invoice;
		$data['invoice'] = $this->db->get_where('invoice', ['invoice_code' => $invoice]);
		$data['transaction'] = $this->db->get_where('transaction', ['id_invoice' => $invoice]);
		$data['rekening'] = $this->db->get('rekening');


		$config['charset'] = 'utf-8';
		$config['useragent'] = $this->config->item('app_name');
		$config['smtp_crypto'] = $this->config->item('smtp_crypto');
		$config['protocol'] = 'smtp';
		$config['mailtype'] = 'html';
		$config['smtp_host'] = $this->config->item('host_mail');
		$config['smtp_port'] = $this->config->item('port_mail');
		$config['smtp_timeout'] = '5';
		$config['smtp_user'] = $this->config->item('mail_account');
		$config['smtp_pass'] = $this->config->item('pass_mail');
		$config['crlf'] = "\r\n";
		$config['newline'] = "\r\n";
		$config['wordwrap'] = TRUE;

		$mesg = $this->load->view('email/konfirmasi_pesanan.php', $data, TRUE);
		$this->load->library('email', $config);

		$this->email->from($this->config->item('mail_account'), $this->config->item('app_name'));
		$this->email->to($email);
		$this->email->subject('Konfirmasi Pesanan ' . $invoice);
		$this->email->message($mesg);
		$this->email->send();

		$config['charset'] = 'utf-8';
		$config['useragent'] = $this->config->item('app_name');
		$config['smtp_crypto'] = $this->config->item('smtp_crypto');
		$config['protocol'] = 'smtp';
		$config['mailtype'] = 'html';
		$config['smtp_host'] = $this->config->item('host_mail');
		$config['smtp_port'] = $this->config->item('port_mail');
		$config['smtp_timeout'] = '5';
		$config['smtp_user'] = $this->config->item('mail_account');
		$config['smtp_pass'] = $this->config->item('pass_mail');
		$config['crlf'] = "\r\n";
		$config['newline'] = "\r\n";
		$config['wordwrap'] = TRUE;

		if ($service2 == "cod") {
			$metpeng = "COD/Cash of Delivery";
		} else {
			$metpeng = "pengiriman " . strtoupper($service2);
		}

		$this->email->initialize($config);
		$this->email->from($this->config->item('mail_account'), $this->config->item('app_name'));
		$this->email->to($this->config->item('email_contact'));
		$this->email->subject('Pesanan Masuk ' . $invoice);
		$this->email->message(
			'<p>Halo admin, <br/>Telah masuk pesanan dengan ORDER ID ' . $invoice . ' menggunakan metode ' . $metpeng . ', total belanjaan Rp' . number_format($totalAll, 0, ",", ".") . '. Silakan cek pesanan dengan <a href="' . base_url() . 'administrator/order/' . $invoice . '" target="_blank">klik disini</a> </p>
            '
		);
		$this->email->send();

		$this->db->where('user', $this->session->userdata('id'));
		$this->db->delete('cart');
		return ['invoice' => $invoice, 'total' => $totalAll];
	}
}
