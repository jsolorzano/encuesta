<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelsCuestionarios extends CI_Model {
    //put your code here


    public function __construct()
    {
        @parent::__construct();
        $this->load->database();
    }
	
	// Método público, forma de consultar los datos de todos los registros
    public function obtenerCuestionarios() {
		$query = $this->db->order_by("id", "desc");
        $query = $this->db->get('cuestionario');
        
        if($query->num_rows()>0) return $query->result();
         else return $query->result();
    }
    
    // Método público, forma de insertar los datos de un nuevo registro
    public function insertarCuestionario($datos)
    {

        $result = $this->db->insert("cuestionario", $datos);
        return $result;
    }
    
    // Método público, forma de consultar los datos de un registro por id
    public function obtenerCuestionario($id){
        $this->db->where('id',$id);    
        $query = $this->db->get('cuestionario');        
        if($query->num_rows()>0) return $query->result();
        else return $query->result();
    }
    
    // Método público, forma de consultar los datos de un registro por id de usuario
    public function obtenerCuestionarioUsu($id_usu){
        $this->db->where('usuario_id',$id_usu);    
        $query = $this->db->get('cuestionario');        
        if($query->num_rows()>0) return $query->result();
        else return $query->result();
    }
    
    // Método público, forma de actualizar los datos de un registro
    public function actualizarCuestionario($datos) {
        
        $result = $this->db->where('id', $datos['id']);
        $result = $this->db->update('cuestionario', $datos);
        return $result;

    }
    
}
