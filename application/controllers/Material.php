<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Material extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();
            $this->load->model(array('M_crud', 'M_master'));
        }

        function index()
        {
            $data['judul'] = 'Master Material';
            $data['material'] = $this->M_master->loadDataMaterial();
            $data['satuan'] = $this->M_master->loadData('satuan');
            $data['project'] = $this->M_master->loadData('project');
            $data['customer'] = $this->M_master->loadData('customer');

            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Material/index', $data);
            $this->load->view('include/footer');
        }

        function insert()
        {
            $kode = htmlspecialchars(htmlentities(html_escape(strtoupper($this->input->post('kode')))));
            $nama = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('nama')))));
            $spesifikasi = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('spesifikasi')))));
            $tipe = $this->input->post('tipe');
            $satuan = $this->input->post('satuan');
            $project = $this->input->post('project');
            $customer = $this->input->post('customer');
            $other = $this->input->post('other');
            $berat = $this->input->post('berat');
            $qty = $this->input->post('qty');
            $qty2 = $this->input->post('qty2');
            $virgin = $this->input->post('virgin');
            $mb = $this->input->post('mb');
            $regrind = $this->input->post('regrind');

            $result = $this->M_master->cekKode('material', $kode);
            //echo $kode;
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Kode Material <strong><b>'.$kode.'</b></strong> Sudah Digunakan, Silahkan Gunakan Kode Material Lain');
                redirect('Material', 'refresh');
            }
            else
            {
                $data = array(
                    'kode'          => $kode,
                    'nama'          => $nama,
                    'spesifikasi'   => $spesifikasi,
                    'tipe_material' => $tipe,
                    'satuan'        => $satuan,
                    'project'       => $project,
                    'customer'      => $customer,
                    'berat'         => $berat,
                    'qty'           => $qty,
                    'other'         => $other,
                    'status'        => '1',
                    'qtyBag'        => $qty2,
                    'virgin'        => $virgin,
                    'mb'            => $mb,
                    'regrind'       => $regrind
                );

                $insert = $this->M_crud->insert('material', $data);
                if($insert)
                {
                    $this->session->set_flashdata('sukses', 'Berhasil Menambahkan Data Material Baru');
                    redirect('Material', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal Menambahkan Data Material Baru');
                    redirect('Material', 'refresh');
                }
            }
        }
        function edit($id)
        {
            $result = $this->M_master->cekID('material', $id);
            if(count($result) > 0)
            {
                foreach($result as $row)
                {
                    $kode           = $row->kode;
                    $nama           = $row->nama;
                    $spesifikasi    = $row->spesifikasi;
                    $tipe_material  = $row->tipe_material;
                    $satuan         = $row-> satuan;
                    $project        = $row->project;
                    $customer       = $row->customer;
                    $berat          = $row->berat;
                    $qty            = $row->qty;
                    $other          = $row->other;
                    $qtyBag         = $row->qtyBag;
                    $virgin         = $row->virgin;
                    $mb             = $row->mb;
                    $regrind        = $row->regrind;
                }

                $data['edit'] = array(
                    'id' => $id,
                    'kode'          => $kode,
                    'nama'          => $nama,
                    'spesifikasi'   => $spesifikasi,
                    'tipe_material' => $tipe_material,
                    'satuan'        => $satuan,
                    'project'       => $project,
                    'customer'      => $customer,
                    'berat'         => $berat,
                    'qty'           => $qty,
                    'other'         => $other,
                    'qty2'          => $qtyBag,
                    'virgin'        => $virgin,
                    'mb'            => $mb,
                    'regrind'       => $regrind
                );

                $data['judul'] = 'Master Material';
                $data['material'] = $this->M_master->loadDataMaterial();
                $data['satuan'] = $this->M_master->loadData('satuan');
                $data['project'] = $this->M_master->loadData('project');
                $data['customer'] = $this->M_master->loadData('customer');

                $this->load->view('include/header', $data);
                $this->load->view('include/sidebar');
                $this->load->view('Material/edit', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Material', 'refresh');
            }
        }

        function update()
        {
            $id = $this->input->post('id');
            $kode = htmlspecialchars(htmlentities(html_escape(strtoupper($this->input->post('kode')))));
            $nama = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('nama')))));
            $spesifikasi = htmlspecialchars(htmlentities(html_escape(ucwords($this->input->post('spesifikasi')))));
            $tipe = $this->input->post('tipe');
            $satuan = $this->input->post('satuan');
            $project = $this->input->post('project');
            $customer = $this->input->post('customer');
            $other = $this->input->post('other');
            $berat = $this->input->post('berat');
            $qty = $this->input->post('qty');
            $virgin = $this->input->post('virgin');
            $mb = $this->input->post('mb');
            $regrind = $this->input->post('regrind');


            $data = array(
                'kode'          => $kode,
                'nama'          => $nama,
                'spesifikasi'   => $spesifikasi,
                'tipe_material' => $tipe,
                'satuan'        => $satuan,
                'project'       => $project,
                'customer'      => $customer,
                'berat'         => $berat,
                'qty'           => $qty,
                'other'         => $other,
                'status'        => '1',
                'virgin'        => $virgin,
                'mb'            => $mb,
                'regrind'       => $regrind
            );

            $where = array('id' => $id);
            $update = $this->M_crud->update('material', $data, $where);
            if($update)
            {
                $this->session->set_flashdata('sukses', 'Berhasil Merubah Data');
                redirect('Material', 'refresh');
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal Merubah Data');
                redirect('Material', 'refresh');
            }
        }

        function delete()
        {
            $id = $this->input->post('id');

            $data = array('status'=> '0');
            $where = array('id' => $id);

            $update = $this->M_crud->update('material', $data, $where);
            if($update)
            {
                $this->session->set_flashdata('sukses', 'Berhasil Menghapus Data');
                redirect('Material', 'refresh');
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal Menghapus Data');
                redirect('Material', 'refresh');
            }
        }
    }