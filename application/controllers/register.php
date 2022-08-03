<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Register extends CI_Controller
{

    public function index()
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
            $this->load->view('login/header', $data);
            $this->load->view('login/registers');
            $this->load->view('login/footer');
        } else {
            $data = array(
                'firstname' => htmlspecialchars($this->input->post('firstname', true)),
                'lastname'  => $this->input->post('lastname'),
                'username'  => htmlspecialchars($this->input->post('username', true)),
                'password'  => md5($this->input->post('password1')),
                'email'     => htmlspecialchars($this->input->post('email', true)),
                'phone'     => $this->input->post('phone'),
                'privilege' => $this->input->post('privilege'),
                'flag'      => 2,
                'createby'  => htmlspecialchars($this->input->post('username', true))
            );

            $this->db->insert('user', $data);
            action_log($data['firstname'] . ' ' . $data['lastname'], 'user', 'Create Account', 'Successfully Added New Account' . $data['username']);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! your account has been created. Please contact your administrator to activate your account!</div>');
            redirect('login');
        }
    }
}
