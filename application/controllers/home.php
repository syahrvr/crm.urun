<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		check_login();
	}

	public function index()
	{
		$data = array(
			'title' => 'Dashboard',
			'user' => $this->db->get_where('user', array('flag' => 1, 'username' => $this->session->userdata('username')))->row_array(),
			'submitted' => $this->db->get_where('task', array('flag' => 4))->num_rows(),
			'checked' => $this->db->get_where('task', array('flag' => 3))->num_rows(),
			'approved' => $this->db->get_where('task', array('flag' => 2))->num_rows(),
			'rejected' => $this->db->get_where('task', array('flag' => 5))->num_rows()
		);

		$this->load->view('admin/admin_header', $data);
		$this->load->view('admin/dashboard');
		$this->load->view('admin/admin_footer');
	}
}
