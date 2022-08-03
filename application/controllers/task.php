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
		$data = array(
			'title' => 'Task List',
			'css'	=> array('custom.css', 'dataTables.bootstrap.css'),
			'js'	=> array('datatables/js/jquery.dataTables.min.js', 'datatables/js/dataTables.bootstrap.js', 'datepicker/js/bootstrap-datepicker.min.js', 'js/task.js'),
			'notif'	=> notification('S', false),
			'user'  => $this->db->get_where('user', array('username' => $this->session->userdata('username'), 'flag' => 1))->row_array(),
			'task'  => $this->db->get_where('task', array('createby' => $this->session->userdata('username'), 'flag' => 1))->result_array()
		);

		action_log($this->session->userdata('username'), 'task', 'View Task', 'View Task Successfully');

		$this->load->view('admin/header', $data);
		$this->load->view('admin/tasks');
		$this->load->view('admin/footer');
	}

	public function ajax_list()
	{
		$list = $this->task->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $task) {
			if ($task->status == 'D') {
				$flag = 'Draft';
				$icon = 'folder';
				$bg   = 'primary';
			} else if ($task->status == 'S') {
				$flag = 'Submitted';
				$icon = 'upload';
				$bg   = 'secondary';
			} else if ($task->status == 'C') {
				$flag = 'Checked';
				$icon = 'check';
				$bg   = 'info';
			} else if ($task->status == 'A') {
				$flag = 'Approved';
				$icon = 'thumbs-up';
				$bg   = 'success';
			} else {
				$flag = 'Rejected';
				$icon = 'exclamation-triangle';
				$bg   = 'warning';
			}

			$no++;
			$row = array();
			$row[] = $task->name;
			$row[] = $task->description;
			$row[] = '<a href="javascript:;" class="btn btn-' . "$bg" . ' btn-icon-split btn-sm"><span class="icon text-white-50"><i class="fa fa-' . "$icon" . '"></i></span><span class="text">' . "$flag" . '</span></a>';
			$row[] = date('j F Y H.i', strtotime($task->createdate));

			//add html for action
			if ($task->status == 'D') {
				$row[] = '<a href="javascript:;" class="btn btn-primary btn-circle btn-sm" title="Edit" onclick="edit_task(' . "'" . $task->id . "'" . ')"><i class="fas fa-pen"></i></a>
				  <a href="javascript:;" class="btn btn-danger btn-circle btn-sm" title="Delete" onclick="delete_task(' . "'" . $task->id . "'" . ')"><i class="fas fa-trash"></i></a>';
			} else if ($task->status == 'A') {
				$row[] = '';
			} else {
				$row[] = '<a href="javascript:;" class="btn btn-danger btn-circle btn-sm" title="Delete" onclick="delete_task(' . "'" . $task->id . "'" . ')"><i class="fas fa-trash"></i></a>';
			}

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
			'name' 		  => $this->input->post('name'),
			'description' => $this->input->post('description'),
			'status' 	  => 'D',
			'flag' 		  => 1,
			'createby' 	  => $this->session->userdata('username')
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
			'status' => 'S',
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
		//pre('<script>alert("del");</script>');
		$this->task->delete_by_id(array('id', $id), $data);
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
