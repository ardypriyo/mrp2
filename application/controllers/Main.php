<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Main extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();
        }

        function index()
        {
            $data['judul'] = 'Main Page';
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Main', $data);
            $this->load->view('include/footer');
        }
    }