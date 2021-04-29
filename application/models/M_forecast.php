<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class M_forecast extends CI_Model
    {
        function loadForecast()
        {
            $this->db->select('forecast.*, customer.nama as nama_customer');
            $this->db->from('forecast');
            $this->db->join('customer', 'forecast.customer = customer.id', 'LEFT');
            $this->db->order_by('kode', 'ASC');

            return $this->db->get()->result();
        }

        function getMaxNo($table)
        {
            $this->db->select_max('kode');
            $this->db->from($table);
            
            return $this->db->get()->result();
        }

        function getID($kode)
        {
            $this->db->select('*');
            $this->db->from('forecast');
            $this->db->where('kode', $kode);

            return $this->db->get()->result();
        }

        function getData($id)
        {
            $this->db->select('forecast.*, customer.nama as nama_customer, project.kode as kode_project');
            $this->db->from('forecast');
            $this->db->join('customer', 'forecast.customer = customer.id', 'LEFT');
            $this->db->join('project', 'forecast.project = project.id', 'LEFT');

            return $this->db->get()->result();
        }

        function loadDetail($id)
        {
            $this->db->select('forecast_child.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi, satuan.nama as nama_satuan');
            $this->db->from('forecast_child');
            $this->db->join('material', 'forecast_child.material = material.id', 'LEFT');
            $this->db->join('satuan', 'forecast_child.satuan = satuan.id', 'LEFT');
            $this->db->where('forecast_child.transID', $id);

            return $this->db->get()->result();
        }

        function getMaterial($customer, $id_project, $tipe)
        {
           if($id_project == '0' AND $tipe == '3')
           {
               $this->db->select('*');
               $this->db->from('material');
               $this->db->where('customer', $customer);

               return $this->db->get()->result();
           }
           elseif($tipe == '3')
           {
               $this->db->select('*');
               $this->db->from('material');
               $this->db->where('customer', $customer);
               $this->db->where('project', $id_project);

               return $this->db->get()->result();
           }
           elseif ($id_project == '0')
           {
                $this->db->select('*');
                $this->db->from('material');
                $this->db->where('customer', $customer);
                $this->db->where('other', $tipe);

                return $this->db->get()->result();
           }
           else
           {
                $this->db->select('*');
                $this->db->from('material');
                $this->db->where('customer', $customer);
                $this->db->where('project', $id_project);
                $this->db->where('other', $tipe);

                return $this->db->get()->result();
           }
        }

        function getBOM($material)
        {
            $this->db->select('*');
            $this->db->from('bom');
            $this->db->where('material', $material);

            return $this->db->get()->result();
        }

        function cekResult($id)
        {
            $this->db->select('*');
            $this->db->from('forecast_result');
            $this->db->where('id_forecast', $id);

            return $this->db->get()->result();
        }

        function ambilData($tanggal)
        {
            $this->db->select('*');
            $this->db->from('forecast');
            $this->db->where('tanggal', $tanggal);
            $this->db->where('status', '1');

            return $this->db->get()->result();
        }

        function forecastResult($idForecast, $tipe)
        {
            $query = "SELECT SUM(forecast_result.qty) AS qty, material.kode AS kode_material, material.nama AS nama_material, material.spesifikasi, satuan.nama AS nama_satuan FROM forecast_result LEFT JOIN material ON forecast_result.raw_material = material.id LEFT JOIN satuan ON forecast_result.satuan = satuan.id WHERE forecast_result.id_forecast=$idForecast AND material.tipe_material = $tipe GROUP BY material.kode, material.nama, material.spesifikasi, satuan.nama";
            return $this->db->query($query)->result();
        }
    }