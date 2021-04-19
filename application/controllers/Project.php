<?php   
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Project extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();

            $this->load->model(array('M_master', 'M_crud'));
            $table = 'Project';
        }

        function index()
        {
            $data['judul'] = "Master Project";
            $data['data'] = $this->M_master->loadData('project');
            $this->load->view('include/header',$data);
            $this->load->view('include/sidebar');
            $this->load->view('Project/index', $data);
            $this->load->view('include/footer');
        }

        function insert()
        {
            $kode = htmlspecialchars(htmlentities(html_escape(strtoupper($this->input->post('kode')))));
            $nama = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('nama')))));

            $result = $this->M_master->cekKode('Project', $kode);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Kode <strong><b>'.$kode.'</b></strong> Sudah Digunakan, Silahkan Gunakan Kode Lain');
                redirect('Project', 'refresh');
            }
            else
            {
                $data = array(
                    'kode'   => $kode,
                    'nama'   => $nama,
                    'status' => '1'
                );

                $insert = $this->M_crud->insert('Project', $data);
                if($insert)
                {
                    $this->session->set_flashdata('sukses', 'Data Project Berhasil Ditambahkan');
                    redirect('Project', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal menambahkan Data Project');
                    redirect('Project', 'refresh');
                }
            }
        }

        function edit($id)
        {
            $result = $this->M_master->cekID('Project', $id);
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

                $data['judul'] = "Edit Master Project";
                $data['data'] = $this->M_master->loadData('project');
                $this->load->view('include/header',$data);
                $this->load->view('include/sidebar');
                $this->load->view('Project/edit', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Project', 'refresh');
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
            $update = $this->M_crud->update('project', $data, $where);
            if($update)
            {
                $this->session->set_flashdata('sukses', 'Berhasil merubah data');
                redirect('Project', 'refresh');
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal merubah data');
                redirect('Project', 'refresh');
            }
        }

        function delete()
        {
            $id = $this->input->post('id');
            
            $result = $this->M_master->cekProject('material', $id);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Gagal menghapus data');
                redirect('Project', 'refresh');
            }
            else
            {
                $where = array('id' => $id);
                $delete = $this->M_crud->delete('Project', $where);
                if($delete)
                {
                    $this->session->set_flashdata('sukses', 'Berhasil menghapus data');
                    redirect('Project', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal menghapus data');
                    redirect('Project', 'refresh');
                }
            }
        }
    }