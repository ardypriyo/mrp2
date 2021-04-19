<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class M_master extends CI_Model
    {
        function loadData($table)
        {
            $this->db->where('status', '1');
            $this->db->order_by('kode', 'ASC');

            return $this->db->get($table)->result();
        }

        function cekKode($table, $kode)
        {
            $this->db->where('kode', $kode);
            $this->db->where('status', '1');

            return $this->db->get($table)->result();
        }

        function cekID($table, $id)
        {
            $this->db->where('id', $id);

            return $this->db->get($table)->result();
        }

        function cekSatuan($table, $id)
        {
            $this->db->where('satuan', $id);

            return $this->db->get($table)->result();
        }

        function cekCustomer($table, $id)
        {
            $this->db->where('customer', $id);

            return $this->db->get($table)->result();
        }

        function cekProject($table, $id)
        {
            $this->db->where('project', $id);

            return $this->db->get($table)->result();
        }

        Function loadDataMaterial()
        {
            $this->db->select('material.*, satuan.nama as namaSatuan, project.nama as namaProject, customer.nama as namaCustomer');
            $this->db->from('material');
            $this->db->join('satuan', 'material.satuan = satuan.id', 'LEFT');
            $this->db->join('project', 'material.project = project.id', 'LEFT');
            $this->db->join('customer', 'material.customer = customer.id', 'LEFT');
            $this->db->where('material.status', '1');
            $this->db->order_by('material.kode', 'ASC');
            
            return $this->db->get()->result();
        }
    }