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
            $data['part'] = $this->M_master->loadMaster('material', '1');
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Bom/index', $data);
            $this->load->view('include/footer');
        }

        function getMasterData()
        {
            $id = $this->input->post('kode');
            $result = $this->M_master->cekID('material', $id);
            if(count($result) > 0)
            {
                foreach($result as $row)
                {
                    $nama = $row->nama;
                    $spesifikasi = $row->spesifikasi;
                    $berat = $row->berat;
                    $qtyBag = $row->qtyBag;
                    $qty = $row->qty;
                    $satuan = $row->satuan;
                }

                $get = $this->M_master->cekID('satuan', $satuan);
                if(count($get) > 0)
                {
                    foreach($get as $g)
                    {
                        $nama_satuan = $g->nama;
                    }
                }

                $data = array(
                    'nama' => $nama,
                    'spesifikasi' => $spesifikasi,
                    'berat' => $berat,
                    'qty' => $qty,
                    'qty2' => $qtyBag,
                    'satuan' => $satuan,
                    'nama_satuan' => $nama_satuan,
                    'satuan2' => 'Gram'
                );

                echo json_encode($data);
            }
            else
            {
                $data = array(
                    'nama' => '',
                    'spesifikasi' => '',
                    'berat' => '',
                    'qty' => '',
                    'qty2' => '',
                    'satuan' => '',
                    'nama_satuan' => '',
                    'satuan2' => ''
                );

                echo json_encode($data);
            }
        }

        function insertParent()
        {
            $part   = $this->input->post('part');
            $berat = $this->input->post('berat');
            $qty    = $this->input->post('qty');
            $qty2   = $this->input->post('qty2');
            $satuan = $this->input->post('satuan');

            $ambilMaster = $this->M_master->cekID('material', $part);
            if(count($ambilMaster) > 0)
            {
                foreach($ambilMaster as $a)
                {
                    $nama_part = $a->kode;
                }
            }

            $cekKode = $this->M_master->cekKode('bom', $part);
            if(count($cekKode) > 0)
            {
                $this->session->set_flashdata('error', 'Kode BOM '.$nama_part.' Sudah Ada, Silahkan Buat BOM untuk Part Lain');
                redirect('Bom', 'refresh');
            }
            else
            {
                $data = array(
                    'kode'      => $nama_part,
                    'material'  => $part,
                    'berat'     => $berat,
                    'qty'       => $qty,
                    'qty2'      => $qty2,
                    'satuan'    => $satuan,
                    'status'    => '1'
                );

                $insert = $this->M_crud->insert('bom', $data);
                if($insert)
                {
                    $result = $this->M_master->cekKode('bom', $nama_part);
                    if(count($result) > 0)
                    {
                        foreach($result as $row)
                        {
                            $id = $row->id;
                        }

                        redirect('Bom/detail/'.$id, 'refresh');
                    }
                    else
                    {
                        $this->session->set_flashdata('sukses', 'Berhasil Menyimpan Data');
                        redirect('Bom', 'refresh');
                    }
                }
            }
        }

        function detail($id)
        {
            $result = $this->M_master->getBOM( $id);
            if(count($result) > 0)
            {
                foreach($result as $row)
                {
                    $kode           = $row->kode;
                    $material       = $row->material;
                    $nama_material  = $row->nama_material;
                    $berat          = $row->berat;
                    $qty            = $row->qty;
                    $qty2           = $row->qty2;
                    $satuan         = $row->satuan;
                    $nama_satuan    = $row->nama_satuan;
                    $status         = $row->status;
                    $use       = $row->use_status;
                }

                $data['detail'] = array(
                    'id'            => $id,
                    'kode'          => $kode,
                    'material'      => $material,
                    'nama_material' => $nama_material,
                    'berat'         => $berat,
                    'qty'           => $qty,
                    'qty2'          => $qty2,
                    'satuan'        => $satuan,
                    'nama_satuan'   => $nama_satuan,
                    'status'        => $status,
                    'use'           => $use
                );

                $data['judul'] = 'Detail Master Bill of Materials';
                $data['part'] = $this->M_master->loadMaster('material', '1');
                $this->load->view('include/header', $data);
                $this->load->view('include/sidebar');
                $this->load->view('Bom/detail', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Bom', 'refresh');
            }
        }
    }