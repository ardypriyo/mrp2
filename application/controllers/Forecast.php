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
            $data['data'] = $this->M_forecast->loadForecast();
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
                    $status         = $row->status;
                }

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


                $data['detail'] = array(
                    'id'            => $id,
                    'kode'          => $kode,
                    'tanggal'       => date("d-M-Y", strtotime($tanggal)),
                    'customer'      => $customer,
                    'tipe'          => $tipe,
                    'project'       => $project,
                    'id_project'    => $id_project,
                    'id_customer'   => $id_Customer,
                    'status'        => $status
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

            $getMaterial = $this->M_forecast->getMaterial($customer, $id_project, $tipe);
            if(count($getMaterial) > 0)
            {
                foreach($getMaterial as $row)
                {
                    $data = array(
                        'transID'   => $id,
                        'material'  => $row->id,
                        'qty'       => '0',
                        'satuan'   => $row->satuan
                    );

                    $insert = $this->M_crud->insert('forecast_child', $data);
                }

                if($insert)
                {
                    $this->session->set_flashdata('sukses', 'Berhasil Melakukan Download Data');
                    redirect('Forecast/detail/'.$id);
                }
                else
                {
                    $this->session->set_flashdata('error', 'Gagal Mendownload Data');
                    redirect('Forecast/detail/'.$id, 'refresh');    
                }
            }
            else
            {
                $this->session->set_flashdata('error', 'Gagal Mendownload Data');
                redirect('Forecast/detail/'.$id, 'refresh');
            }
        }

        function updateQtyDetail()
        {
            $data = array('qty' => $this->input->post('value'));

            $where = array('id' => $this->input->post('id'));

            $update = $this->M_crud->update('forecast_child', $data, $where);
        }

        function prosesForecast()
        {
            $idForecast = $this->input->post('id');
            
            //cek apakah sudah ada forecast?
            $cekForecast = $this->M_forecast->cekResult($idForecast);
            if(count($cekForecast) > 0)
            {
                $where = array('id_forecast' => $idForecast);
                $hapus = $this->M_crud->delete('forecast_result', $where);
                if($hapus)
                {
                    $loadDetail = $this->M_forecast->loadDetail($idForecast);
                    foreach($loadDetail as $detail)
                    {
                        $material = $detail->material;
                        $qtyForecast = $detail->qty;
                        $getBOM = $this->M_forecast->getBOM($material);
                        foreach($getBOM as $bom)
                        {
                            $idBom =  $bom->id;
                            $qtyBom = $bom->qty;

                            // echo $idBom."<br>";

                            $usage = $qtyForecast/$qtyBom;

                            $loadDetail = $this->M_master->loadDetailBom($idBom);
                            
                            foreach($loadDetail as $detailBom)
                            {
                                $rm = $detailBom->material;
                                $qtyBomDetail = $detailBom->qty_usage;
                                $satuan = $detailBom->satuan;

                                $data = array(
                                        'id_forecast' => $idForecast,
                                        'raw_material' => $rm,
                                        'qty'   => $qtyBomDetail * $usage,
                                        'satuan'    => $satuan
                                    );

                                $insert = $this->M_crud->insert('forecast_result', $data);
                            }
                        }
                    }
                    if($insert)
                    {
                        $data = array('status' => '1');
                        $where = array('id' => $idForecast);
                        $update = $this->M_crud->update('forecast', $data, $where);
                        if($update)
                        {
                            $this->session->set_flashdata('sukses', 'Berhasil Memproses Data');
                            redirect('Forecast/result/'.$idForecast, 'refresh');
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
                else
                {
                    $this->session->set_flashdata('error', 'Gagal Memproses Data');
                    redirect('Forecast/detail/'.$idForecast, 'refresh');
                }
            }
            else
            {
                $loadDetail = $this->M_forecast->loadDetail($idForecast);
                foreach($loadDetail as $detail)
                {
                    $material = $detail->material;
                    $qtyForecast = $detail->qty;
                    $getBOM = $this->M_forecast->getBOM($material);
                    foreach($getBOM as $bom)
                    {
                        $idBom =  $bom->id;
                        $qtyBom = $bom->qty;
                        // echo $idBom."<br>";

                        $usage = $qtyForecast/$qtyBom;

                        $loadDetail = $this->M_master->loadDetailBom($idBom);
                            
                        foreach($loadDetail as $detailBom)
                        {
                            $rm = $detailBom->material;
                            $qtyBomDetail = $detailBom->qty_usage;
                            $satuan = $detailBom->satuan;

                            $data = array(
                                    'id_forecast' => $idForecast,
                                    'raw_material' => $rm,
                                    'qty'   => $qtyBomDetail * $usage,
                                    'satuan'    => $satuan
                                );

                            $insert = $this->M_crud->insert('forecast_result', $data);
                        }
                    }
                }

                if($insert)
                {
                    $data = array('status' => '1');
                    $where = array('id' => $idForecast);
                    $update = $this->M_crud->update('forecast', $data, $where);
                    if($update)
                    {
                        $this->session->set_flashdata('sukses', 'Berhasil Memproses Data');
                        redirect('Forecast/result/'.$idForecast, 'refresh');
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
        }

        function result($id)
        {
            $data['rm'] = $this->M_forecast->forecastResult($id, '2');
            $data['cp'] = $this->M_forecast->forecastResult($id, '3');
            $data['aux'] = $this->M_forecast->forecastResult($id, '4');
            $data['judul'] = 'Summary MRP';
            $this->load->view('include/header', $data);
            $this->load->view('include/sidebar');
            $this->load->view('Forecast/result', $data);
            $this->load->view('include/footer');
        }

        // function result()
        // {
        //     $data['judul'] = 'Forecast Result';
        //     $this->load->view('include/header', $data);
        //     $this->load->view('include/sidebar');
        //     $this->load->view('Result/index');
        //     $this->load->view('include/footer');
        // }

        function report()
        {
            $tanggal = date("Y-m-d", strtotime($this->input->post('tanggal')));
            $result = $this->M_forecast->ambilData($tanggal);
            if(count($result) > 0)
            {
                foreach($result as $row)
                {
                    $idForecast = $row->id;
                }

                $data['judul'] = "Forecast Result";
                $data['result'] = $this->M_forecast->forecastResult($idForecast);
                $data['tanggal'] = $tanggal;
                $this->load->view('include/header', $data);
                $this->load->view('include/sidebar');
                $this->load->view('Result/hasil', $data);
                $this->load->view('include/footer');
            }
            else
            {
                $this->session->set_flashdata('error', 'Data Tidak Ditemukan');
                redirect('Forecast/result', 'refresh');
            }
        }
    }