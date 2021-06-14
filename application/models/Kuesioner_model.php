<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Kuesioner_model extends CI_Model
{
    private $_table = "pertanyaan";

    public $id_pertanyaan;
    public $id_it_process;
    public $pertanyaan;
    public $level;

    public function getAll($id_it_process)
    {
        $this->db->select('id_pertanyaan, id_it_process, pertanyaan, level');
        // $this->db->distinct();
        $this->db->from('pertanyaan');
        $this->db->where('id_it_process', $id_it_process);
        $query = $this->db->get();
        return $query->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_pertanyaan" => $id])->row();
    }
}
