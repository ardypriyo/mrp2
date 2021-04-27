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

        function loadMaster($table, $tipe)
        {
            $this->db->where('tipe_material', $tipe);
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

        function getBOM($id)
        {
            $this->db->select('bom.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi,satuan.nama as nama_satuan');
            $this->db->from('bom');
            $this->db->where('bom.id', $id);
            $this->db->join('material', 'bom.material = material.id', 'LEFT');
            $this->db->join('satuan', 'bom.satuan = satuan.id', 'LEFT');
            
            return $this->db->get()->result();
        }

        function loadMixing()
        {
            $this->db->select('*');
            $this->db->from('material');
            $this->db->where('tipe_material', '2');
            $this->db->where('other', '5');
            $this->db->order_by('kode', 'ASC');

            return $this->db->get()->result();
        }

        function getMixing($id)
        {
            $this->db->select('mixing.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi, satuan.nama as nama_satuan, material.virgin, material.mb, material.regrind');
            $this->db->from('mixing');
            $this->db->join('material', 'mixing.material = material.id', 'LEFT');
            $this->db->join('satuan', 'mixing.satuan = satuan.id', 'LEFT');
            $this->db->where('mixing.id', $id);

            return $this->db->get()->result();
        }

        function cekMixing($material)
        {
            $this->db->select('*');
            $this->db->from('mixing');
            $this->db->where('material', $material);

            return $this->db->get()->result();
        }

        function loadRM()
        {
            $this->db->select('*');
            $this->db->from('material');
            $this->db->where('tipe_material', '2');
            $this->db->where('other', '3');
            $this->db->or_where('other', '4');
            $this->db->or_where('other', '6');
            $this->db->where('status', '1');
            $this->db->order_by('kode', 'ASC');

            return $this->db->get()->result();
        }

        function loadMixingChild($id)
        {
            $this->db->select('mixing_child.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi, satuan.nama as nama_satuan');
            $this->db->from('mixing_child');
            $this->db->join('material', 'mixing_child.material = material.id', 'LEFT');
            $this->db->join('satuan', 'mixing_child.satuan = satuan.id', 'LEFT');
            $this->db->where('mixing_child.transID', $id);

            return $this->db->get()->result();
        }

        function daftarMixing()
        {
            $this->db->select('mixing.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi, satuan.nama as nama_satuan');
            $this->db->from('mixing');
            $this->db->join('material', 'mixing.material = material.id', 'LEFT');
            $this->db->join('satuan', 'mixing.satuan = satuan.id', 'LEFT');
            $this->db->order_by('mixing.kode', 'ASC');

            return $this->db->get()->result();
        }

        function cekKodeMixing($kode)
        {
            $this->db->select('*');
            $this->db->from('mixing');
            $this->db->where('kode', $kode);

            return $this->db->get()->result();
        }

        function loadMaterial()
        {
            $tipe = array('2','3','4');

            $this->db->select('*');
            $this->db->from('material');
            $this->db->where_in('tipe_material', $tipe);
            $this->db->order_by('kode', 'ASC');

            return $this->db->get()->result();
        }

        function cekDetailMixing($id)
        {
            $this->db->select('*');
            $this->db->from('mixing_child');
            $this->db->where('transID', $id);

            return $this->db->get()->result();
        }

        function loadBom()
        {
            $this->db->select('bom.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi, satuan.nama as nama_satuan');
            $this->db->from('bom');
            $this->db->join('material', 'bom.material = material.id', 'LEFT');
            $this->db->join('satuan', 'bom.satuan = satuan.id', 'LEFT');
            $this->db->order_by('bom.kode', 'ASC');

            return $this->db->get()->result();
        }

        function loadDetailBom($id)
        {
            $this->db->select('bom_child.*, material.kode as kode_material, material.nama as nama_material, material.spesifikasi, satuan.nama as nama_satuan');
            $this->db->from('bom_child');
            $this->db->join('material', 'bom_child.material = material.id', 'LEFT');
            $this->db->join('satuan', 'bom_child.satuan = satuan.id', 'LEFT');
            $this->db->where('bom_child.bom_id', $id);

            return $this->db->get()->result();
        }
    }