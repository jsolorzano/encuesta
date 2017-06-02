<?php

class ModelsEstadisticas extends CI_Model
{
    //put your code here}
    private $table = NULL;
    public function __construct()
    {
        @parent::__construct();
        $this->load->database();
        $this->table= 'auditoria';
    }
    
    // Método público para consultar la cantidad total de registros de una tabla
    public function obtenerNumReg($tabla)
    {
		$query = "";
		$sql = "";
		
		// La consulta se hace de manera general
		$sql = "SELECT count(*) AS num_reg FROM ".$tabla;
		$query = $this->db->query($sql);
        
        return $query->row();
    }
    
    // Método público para consultar la cantidad de registros por respuesta
    public function obtenerNumRegParcial($tabla, $campo, $valor)
    {
		$query = "";
		$sql = "";
		
		// La consulta se hace de manera general
		$sql = "SELECT count(*) AS num_reg FROM ".$tabla." WHERE ".$campo."=".$valor;
		$query = $this->db->query($sql);
        
        return $query->row();
    }
    
}
