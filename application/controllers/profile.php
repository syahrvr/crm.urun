<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        check_login();
        $this->load->helper(array('form', 'url'));
    }

    public function index()
    {
        $get = $this->db->get_where('user', array('username' => $this->session->userdata('username'), 'flag' => 1))->row_array();

        $this->form_validation->set_rules('firstname', 'First Name', 'required|trim');
        if ($this->input->post('username') != $get['username']) {
            $this->form_validation->set_rules('username', 'Username', 'required|trim|is_unique[user.username]', array(
                'is_unique' => 'Username already taken!'
            ));
        }
        if ($this->input->post('email') != $get['email']) {
            $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', array(
                'is_unique' => 'This email has already registered!'
            ));
        }
        $this->form_validation->set_rules('phone', 'Phone', 'required|trim');

        if ($this->form_validation->run() == false) {
            // Menampilkan halaman profile
            $data = array(
                'title' => 'My Profile',
                'css'   => array('custom'),
                'js'    => array('js/sweetalert.min', 'js/profile'),
                'notif' => notification('S', false),
                'user'  => $this->db->get_where('user', array('username' => $this->session->userdata('username'), 'flag' => 1))->row_array()
            );
            action_log($this->session->userdata('username'), 'user', 'View Profile', 'View Profile Successfully');
            //pre($data['user']);
            $this->load->view('admin/header', $data);
            $this->load->view('admin/profiles');
            $this->load->view('admin/footer');
        } else {
            // Ketika klik save profile button
            // Cek jika foto sudah ada maka save profile seperti biasa
            if ($get['photo'] != '' && $_FILES['photo']['name'] == '') {
                $data = array(
                    'firstname'  => htmlspecialchars($this->input->post('firstname', true)),
                    'lastname'   => $this->input->post('lastname'),
                    'phone'      => $this->input->post('phone'),
                    'updateby'   => htmlspecialchars($this->input->post('username', true)),
                    'updatedate' => date('Y-m-d H:i:s')
                );

                $this->db->where('id', $this->session->userdata('id'));
                $this->db->update('user', $data);

                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Profile updated successfully!</div>');
                action_log($this->session->userdata('username'), 'user', 'Update Account', 'Successfully update account without changing photo');

                redirect(base_url('profile'));
            } else {
                // Cek jika file upload tidak kosong
                // Simpan foto ke folder
                $allowedExts = array('jpeg', 'jpg', 'gif', 'png', 'JPG', 'JPEG', 'GIF', 'PNG');
                $extension = pathinfo($_FILES['photo']['name'], PATHINFO_EXTENSION);
                $ex_name = explode(".", $_FILES['photo']['name']);
                $ext = end($ex_name);
                $new_name = $this->session->userdata('username') . date('Ymdhis') . '.' . $ext;
                $config = array(
                    'upload_path'   => './assets/images',
                    'allowed_types' => 'jpg|jpeg|gif|png',
                    'file_name'     => $new_name
                );

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('photo') && in_array($extension, $allowedExts)) {
                    if ($_FILES['photo']['size'] >= 2097152) {
                        // Cek jika file lebih besar dari 2MB, balik ke halaman profile
                        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Failed to upload profile picture, file should not be more than 2MB</div>');
                        action_log($this->session->userdata('username'), 'user', 'Upload Profile Picture', 'Error upload photo, maximum capacity 2MB');

                        redirect(base_url('profile'));
                    } else if (in_array($extension, $allowedExts)) {
                        // Cek jika file kalau file extension belum sesuai, balik ke halaman profile

                        // Simpan data profile ke database
                        $data = array(
                            'firstname'  => htmlspecialchars($this->input->post('firstname', true)),
                            'lastname'   => $this->input->post('lastname'),
                            'phone'      => $this->input->post('phone'),
                            'photo'      => $new_name,
                            'updateby'   => htmlspecialchars($this->input->post('username', true)),
                            'updatedate' => date('Y-m-d H:i:s')
                        );

                        $this->db->where('id', $this->session->userdata('id'));
                        $this->db->update('user', $data);

                        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Profile updated successfully!</div>');
                        action_log($this->session->userdata('username'), 'user', 'Update Account', 'Successfully Update Account');

                        redirect(base_url('profile'));
                    } else {
                        // Cek jika file upload kosong
                        $data = array(
                            'title' => 'My Profile',
                            'css'   => array('custom.css'),
                            'js'    => array(),
                            'user'  => $this->db->get_where('user', array('username' => $this->session->userdata('username'), 'flag' => 1))->row_array()
                        );
                        $error = array('error' => $this->upload->display_errors('<small class="text-danger">', '</small>'));

                        $this->load->view('admin/header', $data);
                        $this->load->view('admin/profiles', $error);
                        $this->load->view('admin/footer');
                    }
                } else {
                    // Menampilkan error tipe extension
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Failed to upload profile picture, only "jpg/gif/png" file type allowed!</div>');
                    action_log($this->session->userdata('username'), 'user', 'Upload Profile Picture', 'Error upload photo, wrong file extension');

                    redirect(base_url('profile'));
                }
            }
        }
    }
}
