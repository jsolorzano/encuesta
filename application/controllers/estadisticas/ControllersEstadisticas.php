<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ControllersEstadisticas extends CI_Controller
{

    public function __construct()
    {


        @parent::__construct();

// Load form helper library
        $this->load->helper('form');

        $this->load->helper(array('url'));

// Load form validation library
        $this->load->library('form_validation');

// Load session library
        $this->load->library('session');

// Load database
        $this->load->model('auditoria/ModelsAuditoria');
        $this->load->model('estadisticas/ModelsEstadisticas');
        $this->load->model('preguntas_parte_1/ModelsPreguntas1');
        $this->load->model('respuestas_parte_1/ModelsRespuestas1');
        $this->load->model('preguntas_parte_2/ModelsPreguntas2');
        $this->load->model('respuestas_parte_2/ModelsRespuestas2');
        $this->load->model('busquedas_ajax/ModelsBusqueda');
        $this->load->model('usuarios/Usuarios_model');
        
    }

    function index()
    {
		$this->load->view('base');
		$tabla = "cuestionario";  // tabla
		
		// Definimos los campos para las consultas
		$campos_bd = array('sexo', 'estado_civil', 'edad', 'nivel_instruc', 'hijos', 'antiguedad', 'sueldo');
		$campos_real = array('Sexo', 'Estado Civil', 'Edad', 'Nivel de instrucción', 'Hijos', 'Antigüedad', 'Sueldo');
		
		//Definimos los valores a consultar para cada campo
		$valores = array(2,5,8,5,6,8,4);
		
		$data['num_reg'] = $this->ModelsEstadisticas->obtenerNumReg($tabla);  // obtenemos el número de registros de la tabla de cuestionarios
		
		$num_campo = 0;  // Para asignar el campo a cada iteración
		$diccionario = array();  // Para almacenar los campos con sus respectivos valores y porcentajes
		// Calculamos el porcentaje para cada opción (valor) de cada campo
		foreach ($valores as $valor){
			//~ print $campos_bd[$num_campo].": ";
			$cadena_valores = "";  // Para concatenar los valores y porcentajes de cada campo
			for($i=1;$i<=$valor;$i++){
				$val = $this->ModelsEstadisticas->obtenerNumRegParcial($tabla, $campos_bd[$num_campo], $i);
				$cadena_valores .= $val->num_reg." registros (".$val->num_reg*100/$data['num_reg']->num_reg."%),";
			}
			$diccionario[$campos_real[$num_campo]] = substr($cadena_valores,0,-1);
			$num_campo++;
		}
		
		$data['diccionario'] = $diccionario;
        $this->load->view('estadisticas/estadisticas_cuestionario',$data);
    }
    
    function cuestionario2()
    {
		$this->load->view('base');
		$tabla = "encuesta_parte_1";  // tabla
		
		// Lista de preguntas parte 1
		$preguntas = $this->ModelsPreguntas1->obtenerPreguntasAsc();
		
		// Lista de respuestas parte 1
		$respuestas = $this->ModelsRespuestas1->obtenerRespuestasAsc();
		
		$data['num_reg'] = $this->ModelsEstadisticas->obtenerNumReg($tabla);  // obtenemos el número de registros de la tabla de cuestionarios
		
		$diccionario = array();  // Para almacenar las preguntas con sus respectivas respuestas en valores y porcentajes
		
		foreach($preguntas as $pregunta){
			//~ print "(".$pregunta->codigo.") ".$pregunta->pregunta."<br/>";
			$cadena_valores = "";  // Para concatenar las respuestas con sus valores y porcentajes
			$porcentaje;
			foreach($respuestas as $respuesta){
				$num_regs = $this->ModelsEstadisticas->obtenerNumRegParcial($tabla, "respuesta_".$pregunta->codigo, $respuesta->codigo);
				//~ print $respuesta->respuesta.": ".$num_regs->num_reg;
				$porcentaje = $num_regs->num_reg*100/$data['num_reg']->num_reg;
				$cadena_valores .= $respuesta->respuesta.": <span style='font-weight:normal; color:#fff;'>".$num_regs->num_reg." registro(s) (".$porcentaje."%)</span><br/>";
			}
			$diccionario[$pregunta->pregunta] = $cadena_valores;
		}
		
		$data['diccionario'] = $diccionario;
		
        $this->load->view('estadisticas/estadisticas_encuesta1', $data);
    }
    
    function cuestionario3()
    {
		$this->load->view('base');
		$tabla = "encuesta_parte_2";  // tabla
		
		// Lista de preguntas parte 2
		$preguntas = $this->ModelsPreguntas2->obtenerPreguntasAsc();
		
		// Lista de respuestas parte 2
		$respuestas = $this->ModelsRespuestas2->obtenerRespuestasAsc();
		
		$data['num_reg'] = $this->ModelsEstadisticas->obtenerNumReg($tabla);  // obtenemos el número de registros de la tabla de cuestionarios
		
		$diccionario = array();  // Para almacenar las preguntas con sus respectivas respuestas en valores y porcentajes
		
		foreach($preguntas as $pregunta){
			//~ print "(".$pregunta->codigo.") ".$pregunta->pregunta."<br/>";
			$cadena_valores = "";  // Para concatenar las respuestas con sus valores y porcentajes
			$porcentaje;
			foreach($respuestas as $respuesta){
				$num_regs = $this->ModelsEstadisticas->obtenerNumRegParcial($tabla, "respuesta_".$pregunta->codigo, $respuesta->codigo);
				//~ print $respuesta->respuesta.": ".$num_regs->num_reg;
				$porcentaje = $num_regs->num_reg*100/$data['num_reg']->num_reg;
				$cadena_valores .= $respuesta->respuesta.": <span style='font-weight:normal; color:#fff;'>".$num_regs->num_reg." registro(s) (".$porcentaje."%)</span><br/>";
			}
			$diccionario[$pregunta->pregunta] = $cadena_valores;
		}
		
		$data['diccionario'] = $diccionario;
		
        $this->load->view('estadisticas/estadisticas_encuesta2', $data);
    }
        
    
    // Generación de reporte de auditoría
    //~ function pdf_estadisticas($rango,$fecha)
    //~ {
        //~ $data['auditoria'] = $this->ModelsAuditoria->obtenerAuditoriasEsp($usuario,$desde,$hasta);  // Datos generales de la factura
        //~ if ($usuario != "xxx"){
			//~ $data['usuario'] = $this->ModelsBusqueda->obtenerRegistro('usuarios', 'id', $usuario);  // Usuario
		//~ }else{
			//~ $data['usuario'] = "xxx";
		//~ }
        //~ $data['desde'] = $desde;  // Fecha de inicio
        //~ $data['hasta'] = $hasta;  // Fecha final
        //~ 
        //~ $this->load->view('auditoria/pdf/reporte_auditoria', $data);
    //~ }    
    
}
