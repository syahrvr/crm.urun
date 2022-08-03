<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Task extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		check_login();
		$this->load->model('task_model', 'task');
	}

	public function index()
	{
		//echo '<pre>', print_r($_SESSION, 1), '</pre>';
		if ($this->form_validation->run() == false) {
			$data = array(
				'title' => 'Task',
				'user' => $this->db->get_where('user', array('flag' => 1, 'username' => $this->session->userdata('username')))->row_array(),
				'task'  => $this->db->get_where('task', array('flag !=' => 0))->result_array()
			);

			$this->load->view('admin/admin_header', $data);
			$this->load->view('admin/task_view');
			$this->load->view('admin/admin_footer');
		} else {
			redirect('auth');
		}
	}

	public function ajax_list()
	{
		$list = $this->task->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $task) {
			$no++;
			$row = array();
			$row[] = $task->name;
			$row[] = $task->description;
			$row[] = $task->flag;
			$row[] = $task->createby;

			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_task(' . "'" . $task->id . "'" . ')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_task(' . "'" . $task->id . "'" . ')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->task->count_all(),
			"recordsFiltered" => $this->task->count_filtered(),
			"data" => $data,
		);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->task->get_by_id($id);
		//$data->dob = ($data->dob == '0000-00-00') ? '' : $data->dob; // if 0000-00-00 set tu empty for datepicker compatibility
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
			'name' => $this->input->post('name'),
			'description' => $this->input->post('description'),
			'flag' => 1,
			'createby' => $this->session->userdata('username')
		);
		$insert = $this->task->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
			'name' => $this->input->post('name'),
			'description' => $this->input->post('description'),
			'flag' => 1,
			'updateby' => $this->session->userdata('username')
		);
		$this->task->update(array('id' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$data = array(
			'flag' => 0,
			'updateby' => $this->session->userdata('username')
		);
		$this->task->delete_by_id(array('id' => $id), $data);
		echo json_encode(array("status" => TRUE));
	}


	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if ($this->input->post('name') == '') {
			$data['inputerror'][] = 'name';
			$data['error_string'][] = 'Task name is required';
			$data['status'] = FALSE;
		}

		if ($this->input->post('description') == '') {
			$data['inputerror'][] = 'description';
			$data['error_string'][] = 'Description is required';
			$data['status'] = FALSE;
		}

		if ($data['status'] === FALSE) {
			echo json_encode($data);
			exit();
		}
	}
}
