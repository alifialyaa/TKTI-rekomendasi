<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Rekomendasi_model extends CI_Model
{
    private $_table = "rekomendasi";

    public $id_rekomendasi;
    public $id_pertanyaan;
    public $rekomendasi;

    public function getAll()
    {
        $this->db->select('id_rekomendasi, id_pertanyaan, rekomendasi');
        $this->db->from('rekomendasi');
        $query = $this->db->get();
        return $query->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_rekomendasi" => $id])->row();
    }
}
