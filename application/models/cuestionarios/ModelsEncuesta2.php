<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelsEncuesta2 extends CI_Model {
    //put your code here


    public function __construct()
    {
        @parent::__construct();
        $this->load->database();
    }
	
	// Método público, forma de consultar los datos de todos los registros
    public function obtenerEncuestas2() {
		$query = $this->db->order_by("id", "desc");
        $query = $this->db->get('encuesta_parte_2');
        
        if($query->num_rows()>0) return $query->result();
         else return $query->result();
    }
    
    // Método público, forma de insertar los datos de un nuevo registro
    public function insertarEncuesta2($datos)
    {

        $result = $this->db->insert("encuesta_parte_2", $datos);
        return $result;
    }
    
    // Método público, forma de consultar los datos de un registro
    public function obtenerEncuesta2($id){
        $this->db->where('id',$id);    
        $query = $this->db->get('encuesta_parte_2');        
        if($query->num_rows()>0) return $query->result();
        else return $query->result();
    }
    
    // Método público, forma de consultar los datos de un registro
    public function obtenerEncuesta2Usu($id_usu){
        $this->db->where('usuario_id',$id_usu);    
        $query = $this->db->get('encuesta_parte_2');        
        if($query->num_rows()>0) return $query->result();
        else return $query->result();
    }
    
    // Método público, forma de actualizar los datos de un registro
    public function actualizarEncuesta2($datos) {
        
        $result = $this->db->where('id', $datos['id']);
        $result = $this->db->update('encuesta_parte_2', $datos);
        return $result;

    }
    
}
