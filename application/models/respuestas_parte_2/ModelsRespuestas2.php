<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelsRespuestas2 extends CI_Model {
    //put your code here


    public function __construct()
    {
        @parent::__construct();
        $this->load->database();
    }
	
	// Metodo público, forma de consultar los datos de todos los registros descendentemente
    public function obtenerRespuestas() {
		$query = $this->db->order_by("id", "desc");
        $query = $this->db->get('respuestas_parte_2');
        
        if($query->num_rows()>0) return $query->result();
         else return $query->result();
    }
	
	// Metodo público, forma de consultar los datos de todos los registros ascendentemente
    public function obtenerRespuestasAsc() {
		$query = $this->db->order_by("id", "asc");
        $query = $this->db->get('respuestas_parte_2');
        
        if($query->num_rows()>0) return $query->result();
         else return $query->result();
    }
    
    // Metodo público, forma de consultar los datos de todos los cargos activos
    public function obtenerRespuestasActivas() {
		$query = $this->db->where('estatus',1);
		//~ $query = $this->db->order_by("id", "desc");
        $query = $this->db->get('respuestas_parte_2');
        
        if($query->num_rows()>0) return $query->result();
         else return $query->result();
    }
    
    // Metodo público, forma de insertar los datos de un nuevo registro
    public function insertarRespuesta($datos)
    {

        $result = $this->db->insert("respuestas_parte_2", $datos);
        return $result;
    }
    
    // Metodo público, forma de consultar los datos de un registro
    public function obtenerRespuesta($id){
        $this->db->where('id',$id);    
        $query = $this->db->get('respuestas_parte_2');        
        if($query->num_rows()>0) return $query->result();
        else return $query->result();
    }
    
    // Metodo público, forma de actualizar los datos de un registro
    public function actualizarRespuesta($datos) {
        
        $result = $this->db->where('id', $datos['id']);
        $result = $this->db->update('respuestas_parte_2', $datos);
        return $result;

    }

	// Metodo público, forma de eliminar un registro
    //~ public function eliminarCargo($id) {
		//~ // Primero buscamos si existe un empleado asociado al código del cargo que queremos eliminar
		//~ $result = $this->db->where('cargo =', $id);
        //~ $result = $this->db->get('empleados');
        //~ 
        //~ if ($result->num_rows() > 0) {
            //~ echo 'existe';
        //~ } else {
			//~ // Procedemos a borrar el tipo de servicio si no está asociado a un servicio
            //~ $result = $this->db->delete('cargos', array('cod_cargo'=>$id));
            //~ return $result;
        //~ }
    //~ }
    
}
