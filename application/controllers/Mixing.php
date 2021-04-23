<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Mixing extends  CI_Controller
    {
        function __construct()
        {
            parent::__construct();
            $this->load->model(array('M_crud', 'M_master'));
        }

        function index()
        {
            $data['judul'] = 'Mixing';
            $data['data'] = $this->M_master->daftarMixing();
            $data['detail'] = array(
                'id'            => '',
                'kode'          => '',
                'kode_material' => '',
                'nama_material' => '',
                'spesifikasi'   => '',
                'qty'           => '',
                'satuan'        => '',
                'nama_satuan'   => '',
                'status'        => '',
                'use_status'    => '',
                'virgin'        => '',
                'mb'            => '',
                'regrind'       => ''
            );

            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Mixing/index', $data);
            $this->load->view('include/footer');
        }

        function add()
        {
            $data['judul'] = 'Tambah Mixing';
            $data['mix'] = $this->M_master->loadMixing();
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Mixing/add', $data);
            $this->load->view('include/footer');
        }

        function getData()
        {
            $id = $this->input->post('kode');

            $result = $this->M_master->cekID('material',$id);
            if(count($result) > 0)
            {
                foreach($result as $row)
                {
                    $nama = $row->nama;
                    $kode = $row->kode;
                    $spesifikasi = $row->spesifikasi;
                    $berat = $row->berat;
                    $qtyBag = $row->qtyBag;
                    $qty = $row->qty;
                    $satuan = $row->satuan;
                    $virgin = $row->virgin;
                    $mb = $row->mb;
                    $regrind = $row->regrind;
                    $total = $virgin + $mb + $regrind;
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
                    'qty' => $total,
                    'qty2' => $qtyBag,
                    'satuan' => $satuan,
                    'nama_satuan' => $nama_satuan,
                    'satuan2' => 'Gram',
                    'total' => $total,
                    'kode_material' => $kode
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
                    'satuan2' => '',
                    'total' => ''
                );

                echo json_encode($data);
            }
        }

        function insertParent()
        {
            $material = $this->input->post('kode');
            $nama = $this->input->post('nama');
            $spesifikasi = $this->input->post('spesifikasi');
            $qty = $this->input->post('qty');
            $satuan = $this->input->post('satuan');
            $status = '0';
            $use_status = '0';
            $kode_material = $this->input->post('kode_material');

            $result = $this->M_master->cekMixing($material);
            if(count($result) > 0)
            {
                $this->session->set_flashdata('error', 'Material '.$kode_material.' Sudah Ada, Silahkan Edit Data atau Buat Material Mixing Lainnya');
                redirect('Mixing', 'refresh');                
            }
            else
            {
                $data = array(
                    'kode'          => $kode_material,
                    'material'      => $material,
                    'qty'           => $qty,
                    'satuan'        => $satuan,
                    'status'        => $status,
                    'use_status'    => $use_status
                );

                $insert = $this->M_crud->insert('mixing', $data);
                if($insert)
                {
                    $cekKode = $this->M_master->cekKodeMixing($this->input->post('kode_material'));
                    if(count($cekKode) > 0)
                    {
                        foreach($cekKode as $c)
                        {
                            $id_mixing = $c->id;
                        }

                        redirect('Mixing/detail/'.$id_mixing, 'refresh');
                    }
                    else
                    {
                        redirect('Mixing', 'refresh');
                    }
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal Menyimpan Data Mixing');
                    redirect('Mixing', 'refresh');
                }
            }
        }

        function detail($id)
        {
            $result = $this->M_master->getMixing($id);
            if(count($result) > 0)
            {
                foreach($result as $r)
                {
                    $kode           = $r->kode;
                    $kode_material  = $r->kode_material;
                    $nama_material  = $r->nama_material;
                    $spesifikasi    = $r->spesifikasi;
                    $qty            = $r->qty;
                    $satuan         = $r->satuan;
                    $nama_satuan    = $r->nama_satuan;
                    $status         = $r->status;
                    $use_status     = $r->use_status;
                    $virgin         = $r->virgin;
                    $mb             = $r->mb;
                    $regrind        = $r->regrind;
                }

                $data['detail'] = array(
                    'id'            => $id,
                    'kode'          => $kode,
                    'kode_material' => $kode_material,
                    'nama_material' => $nama_material,
                    'spesifikasi'   => $spesifikasi,
                    'qty'           => $qty,
                    'satuan'        => $satuan,
                    'nama_satuan'   => $nama_satuan,
                    'status'        => $status,
                    'use_status'    => $use_status,
                    'virgin'        => $virgin,
                    'mb'            => $mb,
                    'regrind'       => $regrind
                );

                $data['judul'] = 'Detail Mixing';
                $data['mix'] = $this->M_master->loadMixing();
                $data['material'] = $this->M_master->loadRM();
                $data['child'] = $this->M_master->loadMixingChild($id);
                $this->load->view('include/header', $data);
                $this->load->view('include/sidebar', $data);
                $this->load->view('Mixing/detail', $data);
                $this->load->view('include/footer', $data);
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Mixing', 'refresh');
            }
        }

        function insertDetail()
        {
            $material = $this->input->post('material');
            $id_mixing = $this->input->post('id_mixing');
            $virgin = $this->input->post('virgin');
            $mb = $this->input->post('mb');
            $regrind = $this->input->post('regrind');
            $total = $this->input->post('total');

            $result = $this->M_master->cekID('material', $material);
            if(count($result) > 0)
            {
                foreach($result as $r)
                {
                    $tipe = $r->other;
                    $satuan = $r->satuan;
                }

                if($tipe == '3')
                {
                    $qty = $virgin;
                }
                elseif($tipe == '4')
                {
                    $qty = $mb;
                }
                elseif($tipe == '6')
                {
                    $qty = $regrind;
                }

                $data = array(
                    'material'     => $material,
                    'qty'          => $qty,
                    'satuan'       => $satuan,
                    'transID'    => $id_mixing
                );

                $simpan = $this->M_crud->insert('mixing_child', $data);
                redirect('Mixing/detail/'.$id_mixing);
            }
            else
            {
                redirect('Mixing/detail/'.$id_mixing);
            }
        }

        function deleteDetail()
        {
            $id_detail = $this->input->post('id_detail');
            $id_mixing = $this->input->post('id_mixing');

            $where = array('id' => $id_detail);
            $delete = $this->M_crud->delete('mixing_child', $where);
            if($delete)
            {
                redirect('Mixing/detail/'.$id_mixing, 'refresh');
            }
            else
            {
                redirect('Mixing/detail/'.$id_mixing, 'refresh');
            }
        }

        function updateDetail()
        {
            $material = $this->input->post('material');
            $id_mixing = $this->input->post('id_mixing');
            $id_detail = $this->input->post('id_detail');
            $virgin = $this->input->post('virgin');
            $mb = $this->input->post('mb');
            $total = $this->input->post('total');

            // echo $id_detail;
            // // echo $material;
            $result = $this->M_master->cekID('material', $material);
            echo count($result);
            if(count($result) > 0)
            {
                foreach($result as $r)
                {
                    $tipe = $r->other;
                    $satuan = $r->satuan;
                }

                if($tipe == '3')
                {
                    $qty = $virgin;
                }
                elseif($tipe == '4')
                {
                    $qty = $mb;
                }

                $data = array(
                    'material'     => $material,
                    'qty'          => $qty,
                    'satuan'       => $satuan,
                );

                $where = array('id' => $id_detail);

                $udpate = $this->M_crud->update('mixing_child', $data, $where);
                if($udpate)
                {
                    // $this->session->set_flashdata('sukses', 'Berhasil Merubah Detail');
                    redirect('Mixing/detail/'.$id_mixing);
                }
                else
                {
                    // $this->session->set_flashdata('error', 'Gagal Merubah Detail');
                    redirect('Mixing/detail/'.$id_mixing);
                }
                
            }
            else
            {
                redirect('Mixing/detail/'.$id_mixing);
            }
        }

        function updateParent()
        {
            $material = $this->input->post('kode');
            $nama = $this->input->post('nama');
            $spesifikasi = $this->input->post('spesifikasi');
            $qty = $this->input->post('qty');
            $satuan = $this->input->post('satuan');
            $status = '1';
            $kode_material = $this->input->post('kode_material');
            $id_mixing = $this->input->post('id_mixing');

            $data = array(
                'kode'      => $kode_material,
                'material'  => $material,
                'qty'       => $qty,
                'satuan'    => $satuan
            );

            $where = array('id' => $id_mixing);

            $this->M_crud->update('mixing', $data, $where);
            redirect('Mixing/detail/'.$id_mixing, 'refresh');
        }
    }