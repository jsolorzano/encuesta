<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ControllersPreguntas2 extends CI_Controller {

    public function __construct() {


        @parent::__construct();

// Load form helper library
        $this->load->helper('form');

        $this->load->helper(array('url'));

        $this->load->view('base');

// Load form validation library
        $this->load->library('form_validation');

// Load session library
        $this->load->library('session');

// Load database
        $this->load->model('auditoria/ModelsAuditoria');
        $this->load->model('preguntas_parte_2/ModelsPreguntas2');
        $this->load->model('busquedas_ajax/ModelsBusqueda');  // Librería de consultas extra
    }

    function index() {
        $data['listar'] = $this->ModelsPreguntas2->obtenerPreguntas();
        $this->load->view('preguntas_parte_2/lista', $data);
    }

    function registrar() {
        $data['ultimo_id'] = $this->ModelsBusqueda->count_all_table('preguntas_parte_2');
        $data['id_user'] = $this->session->userdata['logged_in']['id'];
        $this->load->view('preguntas_parte_2/registrar', $data);
    }

    public function guardar() {
		$ultimo_id = $this->ModelsBusqueda->count_all_table('preguntas_parte_2');

        $result = $this->ModelsPreguntas2->insertarPregunta($this->input->post());

        if ($result) {

            $param = array(
                'tabla' => 'preguntas parte 2',
                'codigo' => $ultimo_id+1,
                'accion' => 'Nueva Pregunta',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
        }
    }

    function editar() {
        $data['id'] = $this->uri->segment(4);
        $data['editar'] = $this->ModelsPreguntas2->obtenerPregunta($data['id']);
        $this->load->view('preguntas_parte_2/editar', $data);
    }

    //~ function eliminar($id) {
        //~ $result = $this->ModelsCargos->eliminarCargos($id);
        //~ $param = array(
                //~ 'tabla' => 'cargos',
                //~ 'codigo' => $id,
                //~ 'accion' => 'Eliminar Cargo',
                //~ 'fecha' => date('Y-m-d'),
                //~ 'hora' => date("h:i:s a"),
                //~ 'usuario' => $this->session->userdata['logged_in']['id'],
            //~ );
            //~ $this->ModelsAuditoria->add($param);
        //~ if ($result) {
//~ 
            //~ 
            //~ redirect('cargos/ControllersCargos');
        //~ }
    //~ }

    function actualizar() {
        $result = $this->ModelsPreguntas2->actualizarPregunta($this->input->post());

        if ($result) {

            $param = array(
                'tabla' => 'preguntas parte 2',
                'codigo' => $this->input->post('codigo'),
                'accion' => 'Editar Cargo',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
        }
    }
	
	// Método para consultar los datos de una pregunta por su nombre
    function consultar() {
        $result = $this->ModelsBusqueda->existe_registro('preguntas_parte_1', 'pregunta', $this->input->post('pregunta'));
    }
    
    // Método para activar/desactivar un pregunta
    function activar_desactivar($id)
    {
		//~ echo "Id: ".$id;
		
		$accion = $this->input->post('accion');
		$estatus = 1;
		
		if ($accion == 'desactivar'){
			$estatus = 0;
		}
		
		// Armamos la data a actualizar
        $data_pregunta = array(
			'id' => $id,
			'estatus' => $estatus,
			//~ 'fecha_update' => date('Y-m-d'),
        );
        
		// Actualizamos la pregunta con los datos armados
		$result = $this->ModelsPreguntas2->actualizarPregunta($data_pregunta);
		
		// Guardado en el módulo de auditoría
		if ($result) {
            $param = array(
                'tabla' => 'preguntas parte 2',
                'codigo' => $id,
                'accion' => $accion.' Pregunta',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
        }
        
    }

}
