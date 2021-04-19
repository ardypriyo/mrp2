<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Customer extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();
            $this->load->model(array('M_crud', 'M_master'));
        }

        function index()
        {
            $data['judul'] = 'Master Customer';
            $data['data'] = $this->M_master->loadData('customer');
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Customer/index', $data);
            $this->load->view('include/footer');
        }

        function insert()
        {
            $kode = htmlspecialchars(htmlentities(html_escape(strtoupper($this->input->post('kode')))));
            $nama = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('nama')))));

            $result = $this->M_master->cekKode('customer', $kode);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Kode <strong><b>'.$kode.'</b></strong> Sudah Digunakan, Silahkan Gunakan Kode Lain');
                redirect('Customer', 'refresh');
            }
            else
            {
                $data = array(
                    'kode'   => $kode,
                    'nama'   => $nama,
                    'status' => '1'
                );

                $insert = $this->M_crud->insert('customer', $data);
                if($insert)
                {
                    $this->session->set_flashdata('sukses', 'Data Customer Berhasil Ditambahkan');
                    redirect('Customer', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal menambahkan Data Customer');
                    redirect('Customer', 'refresh');
                }
            }
        }

        function edit($id)
        {
            $result = $this->M_master->cekID('customer', $id);
            if(count($result) > 0)
            {
                foreach($result as $row)
                {
                    $kode = $row->kode;
                    $nama = $row->nama;
                }

                $data['edit'] = array(
                    'id'    => $id,
                    'kode'  => $kode,
                    'nama'  => $nama
                );

                $data['judul'] = "Edit Master Customer";
                $data['data'] = $this->M_master->loadData('customer');
                $this->load->view('include/header',$data);
                $this->load->view('include/sidebar');
                $this->load->view('Customer/edit', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Customer', 'refresh');
            }
        }

        function update()
        {
            $id = $this->input->post('id');
            $kode = htmlspecialchars(htmlentities(html_escape(strtoupper($this->input->post('kode')))));
            $nama = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('nama')))));

            $data = array(
                'kode' => $kode,
                'nama' => $nama
            );

            $where = array('id' => $id);
            $update = $this->M_crud->update('customer', $data, $where);
            if($update)
            {
                $this->session->set_flashdata('sukses', 'Berhasil merubah data');
                redirect('Customer', 'refresh');
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal merubah data');
                redirect('Customer', 'refresh');
            }
        }

        function delete()
        {
            $id = $this->input->post('id');
            
            $result = $this->M_master->cekCustomer('material', $id);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Gagal menghapus data');
                redirect('Customer', 'refresh');
            }
            else
            {
                $where = array('id' => $id);
                $delete = $this->M_crud->delete('customer', $where);
                if($delete)
                {
                    $this->session->set_flashdata('sukses', 'Berhasil menghapus data');
                    redirect('Customer', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal menghapus data');
                    redirect('Customer', 'refresh');
                }
            }
        }
    }