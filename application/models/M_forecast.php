<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class M_forecast extends CI_Model
    {
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

        function getMaterial($data)
        {
            $this->db->select('*');
            $this->db->from('material');
            $this->db->where($data);

            return $this->db->get()->result();
        }
    }