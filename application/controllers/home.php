<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	var $table = 'task';

	public function __construct()
	{
		parent::__construct();
		check_login();
	}

	public function index()
	{
		if ($this->session->userdata('privilege') == 4) {
			$query = array(
				'submitted' => $this->db->get_where($this->table, array('createby' => $this->session->userdata('username'), 'status' => 'S', 'flag' => 1))->num_rows(),
				'checked'   => $this->db->get_where($this->table, array('createby' => $this->session->userdata('username'), 'status' => 'C', 'flag' => 1))->num_rows(),
				'approved'  => $this->db->get_where($this->table, array('createby' => $this->session->userdata('username'), 'status' => 'A', 'flag' => 1))->num_rows(),
				'rejected'  => $this->db->get_where($this->table, array('createby' => $this->session->userdata('username'), 'status' => 'R', 'flag' => 1))->num_rows(),
				'areachart' => $this->db->query('select * from `task` where month(`createdate`) = date("m") and `flag` = 1 and createby =' . "'" . $this->session->userdata('username') . "'")->num_rows()
			);
		} else {
			$query = array(
				'submitted' => $this->db->get_where($this->table, array('status' => 'S', 'flag' => 1))->num_rows(),
				'checked'   => $this->db->get_where($this->table, array('status' => 'C', 'flag' => 1))->num_rows(),
				'approved'  => $this->db->get_where($this->table, array('status' => 'A', 'flag' => 1))->num_rows(),
				'rejected'  => $this->db->get_where($this->table, array('status' => 'R', 'flag' => 1))->num_rows(),
				'areachart' => $this->db->query('select * from `task` where month(`createdate`) = date("m") and `flag` = 1')->num_rows()
			);
		}
		$data = array(
			'title' 	=> 'My Dashboard',
			'css'		=> array(),
			'js'		=> array(),
			'notif'		=> notification('S', false),
			'user' 		=> $this->db->get_where('user', array('username' => $this->session->userdata('username'), 'flag' => 1))->row_array()
		);
		//pre($data['notif']);
		action_log($this->session->userdata('username'), 'task', 'View Dashboard', 'View Dashboard Successfully');

		$this->load->view('admin/header', $data);
		$this->load->view('admin/dashboard', $query);
		$this->load->view('admin/footer');
	}
}
