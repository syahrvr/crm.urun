<?php defined('BASEPATH') or exit('No direct script access allowed');

class Logout extends CI_Controller
{

    public function index()
    {
        action_log($this->session->userdata('name'), 'user', 'Logout', 'Logout Successful');

        $session = array(
            'check_login' => '',
            'id'          => '',
            'name'        => '',
            'username'    => '',
            'privilege'   => ''
        );
        $this->session->set_userdata($session);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have been logged out!</div>');
        redirect('login');
    }
}
