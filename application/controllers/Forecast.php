<?php 
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Forecast extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();
            $this->load->model(array('M_crud', 'M_master', 'M_forecast'));
        }

        function index()
        {
            $prefix = "FRC-";
            $getMaxNo = $this->M_forecast->getMaxNo('forecast');
            
            foreach($getMaxNo as $G)
            {
                $nomor = $G->kode;
            }

            $hari = date("d");
            $bulan = date("m");
            $tahun = date("y");

            $nourut = substr($nomor, 14, 8);
            $kodeSekarang = $nourut + 1;
            $noUrutBaru = sprintf("%08s", $kodeSekarang);
            $data['kodeTransaksi'] = $prefix.$tahun."-".$bulan."-".$hari."-".$noUrutBaru;
            $data['judul'] = 'Forecast';
            $data['customer'] = $this->M_master->loadData('customer');
            $data['project'] = $this->M_master->loadData('project');

            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Forecast/index', $data);
            $this->load->view('include/footer');
        }

        function insertHeader()
        {
            $kode = $this->input->post('kode');
            $tanggal = date("Y-m-d", strtotime($this->input->post('tanggal')));
            $customer = $this->input->post('customer');
            $tipe = $this->input->post('tipe');
            $project = $this->input->post('project');

            $data = array(
                'kode'      => $kode,
                'tanggal'   => $tanggal,
                'customer'  => $customer,
                'project'   => $project,
                'tipe'      => $tipe,
                'status'    => '0'
            );

            $insert = $this->M_crud->insert('forecast', $data);
            if($insert)
            {
                $getID = $this->M_forecast->getID($kode);
                if(count($getID) > 0)
                {
                    foreach($getID as $row)
                    {
                        $id = $row->id;
                    }

                    redirect('Forecast/detail/'.$id, 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal Memproses Data');
                    redirect('Forecast', 'refresh');
                }
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal Memproses Data');
                redirect('Forecast', 'refresh');
            }
        }

        function detail($id)
        {
            $getData = $this->M_forecast->getData($id);
            if(count($getData) > 0)
            {
                foreach($getData as $row)
                {
                    $kode           = $row->kode;
                    $customer       = $row->nama_customer;
                    $id_Customer    = $row->customer;
                    $project        = $row->kode_project;
                    $id_project     = $row->project;
                    $tanggal        = $row->tanggal;
                    $tipe           = $row->tipe;
                }

                $data['detail'] = array(
                    'id'            => $id,
                    'kode'          => $kode,
                    'tanggal'       => date("d-M-Y", strtotime($tanggal)),
                    'customer'      => $customer,
                    'tipe'          => $tipe,
                    'project'       => $project,
                    'id_project'    => $id_project,
                    'id_customer'   => $id_Customer
                );
                $data['judul'] = "Detail Forecast";
                $data['child'] = $this->M_forecast->loadDetail($id);
                $this->load->view('include/header', $data);
                $this->load->view('include/sidebar');
                $this->load->view('Forecast/detail', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Forecast', 'refresh');
            }
        }

        function downloadData()
        {
            $id = $this->input->post('id');
            $customer = $this->input->post('customer');
            $id_project = $this->input->post('project');
            $tipe = $this->input->post('tipe');

            if($id_project == "" and $tipe == '3')
            {
                $data = array(
                        'customer' => $customer
                    );  
            }
            elseif($id_project == "")
            {
                $data = array(
                        'customer' => $customer,
                        'other' => $tipe
                    );
            }
            elseif($tipe == '3')
            {
                $data = array(
                    'customer' => $customer,
                    'project' => $id_project
                );
            }

            $getMaterial = $this->M_forecast->getMaterial($data);
        }
    }