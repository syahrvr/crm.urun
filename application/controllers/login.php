<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	public function index()
	{
		$data = array(
			'title'	=> 'Login Page',
			'js'	=> array('jquery.validate.min', 'login'),
			'css'	=> array(),
		);

		$this->load->view('login/header', $data);

		if ($this->session->userdata('check_login') == FALSE) {
			$this->form_validation->set_rules('username', 'Username', 'required|trim');
			$this->form_validation->set_rules('password', 'Password', 'required|trim');

			$this->load->view('login/logins');
		} elseif ($this->session->userdata('check_login') == TRUE) {
			redirect('home');
			$data['title'] = 'Dashboard';

			if ($this->session->userdata('login_session')) {
				$url = $this->session->userdata('login_session');
				$this->session->unset_userdata('login_session');
				redirect($url);
			}
			//$this->load->view('login/top');
			//$this->load->view('login/menu');
		}

		$this->load->view('login/footer');
	}

	public function validate()
	{
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));

		$user = $this->db->get_where('user', array('username' => $username))->row_array();
		//pre($query);
		if ($user) {
			// Jika usernya aktif
			if ($user['flag'] == 1) {
				// Jika password benar
				if ($user['password'] == $password) {
					$session = array(
						'check_login' => TRUE,
						'id'          => $user['id'],
						'name'        => $user['firstname'] . ' ' . $user['lastname'],
						'username'    => $user['username'],
						'photo'   	  => $user['photo'],
						'privilege'   => $user['privilege']
					);
					$this->session->set_userdata($session);
					action_log($this->session->userdata('name'), 'user', 'Login', 'Login Successful');

					redirect('home');
				} else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong password!</div>');
					redirect('login');
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This account has not been activated!</div>');
				redirect('login');
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Your account is not registered!</div>');
			redirect('login');
		}
	}
}
