<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Bom extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();
            $this->load->model(array('M_crud', 'M_master'));
        }

        function index()
        {
            $data['judul'] = 'Master Bill of Materials';
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Bom/index', $data);
            $this->load->view('include/footer');
        }

        function add()
        {
            $data['judul'] = 'Buat BOM Baru';
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Bom/add', $data);
            $this->load->view('include/footer');
        }
    }