<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function index()
    {
        //echo '<pre>', print_r($this->input->post(), 1), '</pre>';

        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        if ($this->form_validation->run() == false) {
            $data = array(
                'title' => 'Login Page'
            );
            $this->load->view('auth/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('auth/auth_footer');
        } else {
            $this->_login();
        }
    }

    public function add()
    {
        $this->form_validation->set_rules('firstname', 'First Name', 'required|trim');
        $this->form_validation->set_rules('username', 'Username', 'required|trim|is_unique[user.username]', array(
            'is_unique' => 'Username already taken!'
        ));
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', array(
            'matches' => 'Password dont match!',
            'min_length' => 'Password too short!'
        ));
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', array(
            'is_unique' => 'This email has already registered!'
        ));

        if ($this->form_validation->run() == false) {
            $data = array(
                'title' => 'Registration'
            );
            $this->load->view('auth/auth_header', $data);
            $this->load->view('auth/registration');
            $this->load->view('auth/auth_footer');
        } else {
            $data = array(
                'firstname' => htmlspecialchars($this->input->post('firstname', true)),
                'lastname' => $this->input->post('lastname'),
                'username' => htmlspecialchars($this->input->post('username', true)),
                'password' => $this->input->post('password1'),
                'email' => htmlspecialchars($this->input->post('email', true)),
                'phone' => $this->input->post('phone'),
                'privilege' => $this->input->post('privilege'),
                'flag' => 1
            );

            $this->db->insert('user', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! your account has been created. Please Login</div>');
            redirect('auth');
        }
    }
}
