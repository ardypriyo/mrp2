<?php   
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Satuan extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();

            $this->load->model(array('M_master', 'M_crud'));
            $table = 'satuan';
        }

        function index()
        {
            $data['judul'] = "Master Satuan";
            $data['data'] = $this->M_master->loadData('satuan');
            $this->load->view('include/header',$data);
            $this->load->view('include/sidebar');
            $this->load->view('Satuan/index', $data);
            $this->load->view('include/footer');
        }

        function insert()
        {
            $kode = htmlspecialchars(htmlentities(html_escape(strtoupper($this->input->post('kode')))));
            $nama = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('nama')))));

            $result = $this->M_master->cekKode('satuan', $kode);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Kode <strong><b>'.$kode.'</b></strong> Sudah Digunakan, Silahkan Gunakan Kode Lain');
                redirect('Satuan', 'refresh');
            }
            else
            {
                $data = array(
                    'kode'   => $kode,
                    'nama'   => $nama,
                    'status' => '1'
                );

                $insert = $this->M_crud->insert('satuan', $data);
                if($insert)
                {
                    $this->session->set_flashdata('sukses', 'Data Satuan Berhasil Ditambahkan');
                    redirect('Satuan', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal menambahkan Data Satuan');
                    redirect('Satuan', 'refresh');
                }
            }
        }

        function edit($id)
        {
            $result = $this->M_master->cekID('satuan', $id);
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

                $data['judul'] = "Edit Master Satuan";
                $data['data'] = $this->M_master->loadData('satuan');
                $this->load->view('include/header',$data);
                $this->load->view('include/sidebar');
                $this->load->view('Satuan/edit', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Satuan', 'refresh');
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
            $update = $this->M_crud->update('satuan', $data, $where);
            if($update)
            {
                $this->session->set_flashdata('sukses', 'Berhasil merubah data');
                redirect('Satuan', 'refresh');
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal merubah data');
                redirect('Satuan', 'refresh');
            }
        }

        function delete()
        {
            $id = $this->input->post('id');
            
            $result = $this->M_master->cekSatuan('material', $id);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Gagal menghapus data');
                redirect('Satuan', 'refresh');
            }
            else
            {
                $where = array('id' => $id);
                $delete = $this->M_crud->delete('satuan', $where);
                if($delete)
                {
                    $this->session->set_flashdata('sukses', 'Berhasil menghapus data');
                    redirect('Satuan', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal menghapus data');
                    redirect('Satuan', 'refresh');
                }
            }
        }
    }