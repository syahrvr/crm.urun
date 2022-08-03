<?php
defined('BASEPATH') or exit('No direct script access allowed');

if (!function_exists('check_login')) {
    function check_login()
    {
        $ci = &get_instance();

        if ($ci->session->userdata('check_login') == FALSE) {
            $ci->session->set_userdata('session_login', current_url());
            $ci->session->set_flashdata('message', 'Harap login terlebih dahulu');
            redirect('login');
        }
    }
}

if (!function_exists('action_log')) {
    function action_log($name, $tablename, $action, $description)
    {
        $ci = &get_instance();

        $data = array(
            'name' => $name,
            'username' => $ci->session->userdata('username'),
            'tablename' => $tablename,
            'action' => $action,
            'description' => $description,
            'ip_address' => $ci->input->ip_address(),
            'user_agent' => $ci->input->user_agent()
        );

        $ci->db->insert('log', $data);
    }
}

if (!function_exists('notification')) {
    function notification($status, $read)
    {
        if ($status) {
            $ci = &get_instance();

            $data = $ci->db->get_where('task', array('status' => $status, 'read' => $read))->result_array();
            return $data;
        }
    }
}

if (!function_exists('upload_image')) {
    function upload_image($field_name, $folder, $debug = FALSE)
    {
        $ci = &get_instance();

        $config = array(
            'upload_path'    => $folder,
            'allowed_types'    => 'gif|jpeg|jpg|png'
        );

        $ci->load->library('upload');
        $ci->upload->initialize($config);

        // If upload failed, whether it's permission problem OR no chosen files,
        if (!$ci->upload->do_upload($field_name)) {
            // Return errors if debug is true.
            return ($debug == TRUE) ? $ci->upload->display_errors() : '';
        } else return $ci->upload->data();
    }
}

if (!function_exists('resize_image')) {
    function resize_image($image, $width, $height, $keep_ratio = TRUE)
    {
        if ($image) {
            // Does the current resolution exceed limit?
            if ($image['image_width'] > $width || $image['image_height'] > $height) {
                $config = array(
                    'height'        => $height,
                    'width'            => $width,
                    'source_image'    => $image['full_path'],
                    'new_image'        => $image['file_path'],
                    'maintain_ratio' => $keep_ratio
                );

                $ci = &get_instance();
                $ci->load->library('image_lib');

                $ci->image_lib->initialize($config);
                $ci->image_lib->resize();
            }
            return $image;
        }
    }
}

if (!function_exists('pre')) {
    function pre($array = array(), $exit = true)
    {
        echo '<pre>';
        print_r($array);
        echo '</pre>';
        if ($exit) exit;
    }
}
