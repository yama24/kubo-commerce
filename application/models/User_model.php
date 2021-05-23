<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User_model extends CI_Model
{

	public function getUsers($number, $offset)
	{
		$this->db->order_by('id', 'desc');
		return $this->db->get('user', $number, $offset);
	}

	public function getProfile()
	{
		$id = $this->session->userdata('id');
		return $this->db->get_where('user', ['id' => $id])->row_array();
	}

	public function getOrder()
	{
		$id = $this->session->userdata('id');
		$this->db->where('status !=', 4);
		$this->db->where('user', $id);
		$this->db->order_by('id', 'desc');
		return $this->db->get('invoice');
	}

	public function getFinishOrder()
	{
		$id = $this->session->userdata('id');
		$this->db->where('status', 4);
		$this->db->where('user', $id);
		$this->db->order_by('id', 'desc');
		return $this->db->get('invoice');
	}

	public function getOrderByInvoice($id)
	{
		$user = $this->session->userdata('id');
		return $this->db->get_where('invoice', ['invoice_code' => $id, 'user' => $user])->row_array();
	}

	public function register()
	{
		$email = addslashes(htmlspecialchars($this->input->post('email', true)));
		$checkEmail = $this->db->get_where('user', ['email' => $email])->row_array();
		if ($checkEmail) {
			$this->session->set_flashdata('failed', '<div class="alert alert-danger" role="alert">
            Email sudah ada!
            </div>');
			redirect(base_url() . 'register');
		} else {
			$name = addslashes(htmlspecialchars($this->input->post('name', true)));
			$password = $this->input->post('password');
			$token = sha1(rand());
			function textToSlug($text = '')
			{
				$text = trim($text);
				if (empty($text)) return '';
				$text = preg_replace("/[^a-zA-Z0-9\-\s]+/", "", $text);
				$text = strtolower(trim($text));
				$text = str_replace(' ', '-', $text);
				$text = $text_ori = preg_replace('/\-{2,}/', '-', $text);
				return $text;
			}
			$username = textToSlug($name);
			$checkUsername = $this->db->get_where('user', ['username' => $username])->row_array();
			if ($checkUsername) {
				$username = $username . substr(rand(), 0, 3);
			}
			$data = [
				'name' => $name,
				'username' => $username,
				'email' => $email,
				'password' => password_hash($password, PASSWORD_DEFAULT),
				'date_register' => date('Y-m-d H:i:s'),
				'token' => $token,
				'photo_profile' => 'default.png'
			];
			$this->db->insert('user', $data);

			$mesg = $this->load->view('email/verifikasi.php', $data, TRUE);

			$data = [
				'email' => $email,
				'date_subs' => date('Y-m-d H:i:s'),
				'code' => time() . rand()
			];
			$this->db->insert('subscriber', $data);

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

			$this->load->library('email', $config);
			$this->email->from($this->config->item('mail_account'), $this->config->item('app_name'));
			$this->email->to($email);
			$this->email->subject('Verifikasi Alamat Email ' . $this->config->item("app_name"));
			$this->email->message($mesg);
			$this->email->send();
		}
	}

	public function getProductByInvoice($id)
	{
		$user = $this->session->userdata('id');
		return $this->db->get_where('transaction', ['user' => $user, 'id_invoice' => $id]);
	}

	public function uploadPhoto()
	{
		$config['upload_path'] = './assets/images/profile/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['max_size'] = '2048';
		$config['file_name'] = round(microtime(true) * 1000);

		$this->load->library('upload', $config);
		if ($this->upload->do_upload('newphoto')) {
			$return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
			return $return;
		} else {
			$return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
			return $return;
		}
	}

	public function updateProfile($file)
	{
		if ($file == "") {
			$name = $this->input->post('name');
			$this->db->set('name', $name);
			$this->db->where('id', $this->session->userdata('id'));
			$this->db->update('user');
		} else {
			$name = $this->input->post('name');
			$this->db->set('name', $name);
			$this->db->set('photo_profile', $file);
			$this->db->where('id', $this->session->userdata('id'));
			$this->db->update('user');
		}
	}
}
