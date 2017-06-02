<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ControllersEncuesta2 extends CI_Controller {

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
        $this->load->model('cuestionarios/ModelsEncuesta2');
        $this->load->model('preguntas_parte_2/ModelsPreguntas2');
        $this->load->model('respuestas_parte_2/ModelsRespuestas2');
        $this->load->model('usuarios/Usuarios_model');
        $this->load->model('busquedas_ajax/ModelsBusqueda');  // Librería de consultas extra
    }

    function index() {
		/////// Al ingresar por primera vez se genera un registro vacío
		$id_usu = $this->session->userdata['logged_in']['id'];
        $data['existe_encuesta2'] = count($this->ModelsEncuesta2->obtenerEncuesta2Usu($id_usu));
        $ultimo_id = $this->ModelsBusqueda->count_all_table('encuesta_parte_2');
        if ($data['existe_encuesta2'] == 0){
          $datos = array(
            'id' => $ultimo_id + 1,
            'codigo' => $ultimo_id + 1,
            'fecha_create' => date('Y-m-d'),
            'hora_create' => date("h:i:s a"),
            'usuario_id' => $this->session->userdata['logged_in']['id'],
          );
          $result = $this->ModelsEncuesta2->insertarEncuesta2($datos);
        }
        $data['encuesta2'] = $this->ModelsEncuesta2->obtenerEncuesta2Usu($id_usu);  // Datos de la encuesta del usuario logueado
        $data['preguntas2'] = $this->ModelsPreguntas2->obtenerPreguntasActivas();  // Lista de preguntas activas de la parte 2
        $data['respuestas2'] = $this->ModelsRespuestas2->obtenerRespuestasActivas();  // Lista de respuestas activas de la parte 2
        
        $this->load->view('cuestionarios/cuestionario3', $data);
    }

    function actualizar() {
        $result = $this->ModelsEncuesta2->actualizarEncuesta2($this->input->post());

        if ($result) {

            $param = array(
                'tabla' => 'encuesta_parte_2',
                'codigo' => $this->input->post('codigo'),
                'accion' => 'Editar Encuesta 2',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
            
            // Actualizamos el estatus del usuario a 4
            $data_usu = array(
                'estatus_encuesta' => 4,
            );
            $this->Usuarios_model->actualizarUsuario($this->session->userdata['logged_in']['id'], $data_usu);
        }
    }
    
    // Terminar la encuesta
    function finalizar() {
        
        $this->load->view('cuestionarios/final');
    }  

}
