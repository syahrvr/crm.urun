<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Activity extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		check_login();
		$this->load->model('activity_model', 'activity');
	}

	public function index()
	{
		$data = array(
			'title' => 'Activity Log',
			'css'	=> array('custom', 'dataTables.bootstrap'),
			'js'	=> array('datatables/js/jquery.dataTables.min', 'datatables/js/dataTables.bootstrap', 'js/activity'),
			'notif'	=> notification('S', false),
			'user'  => $this->db->get_where('user', array('username' => $this->session->userdata('username'), 'flag' => 1))->row_array(),
			'log'   => $this->db->get_where('log', array('username' => $this->session->userdata('username')))->result_array()
		);

		$this->load->view('admin/header', $data);
		$this->load->view('admin/activities');
		$this->load->view('admin/footer');
	}

	public function ajax_list()
	{
		$list = $this->activity->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $activity) {
			$no++;
			$row = array();
			$row[] = $activity->name;
			$row[] = $activity->tablename;
			$row[] = $activity->action;
			$row[] = $activity->description;
			$row[] = date('j F Y H.i', strtotime($activity->createdate));

			//add html for action
			$row[] = '';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->activity->count_all(),
			"recordsFiltered" => $this->activity->count_filtered(),
			"data" => $data,
		);
		//output to json format
		echo json_encode($output);
	}
}
