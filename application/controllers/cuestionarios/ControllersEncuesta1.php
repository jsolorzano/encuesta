<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ControllersEncuesta1 extends CI_Controller {

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
        $this->load->model('cuestionarios/ModelsEncuesta1');
        $this->load->model('preguntas_parte_1/ModelsPreguntas1');
        $this->load->model('respuestas_parte_1/ModelsRespuestas1');
        $this->load->model('usuarios/Usuarios_model');
        $this->load->model('busquedas_ajax/ModelsBusqueda');  // Librería de consultas extra
    }

    function index() {
		/////// Al ingresar por primera vez se genera un registro vacío
		$id_usu = $this->session->userdata['logged_in']['id'];
        $data['existe_encuesta1'] = count($this->ModelsEncuesta1->obtenerEncuesta1Usu($id_usu));
        $ultimo_id = $this->ModelsBusqueda->count_all_table('encuesta_parte_1');
        if ($data['existe_encuesta1'] == 0){
          $datos = array(
            'id' => $ultimo_id + 1,
            'codigo' => $ultimo_id + 1,
            'fecha_create' => date('Y-m-d'),
            'hora_create' => date("h:i:s a"),
            'usuario_id' => $this->session->userdata['logged_in']['id'],
          );
          $result = $this->ModelsEncuesta1->insertarEncuesta1($datos);
        }
        $data['encuesta1'] = $this->ModelsEncuesta1->obtenerEncuesta1Usu($id_usu);  // Datos de la encuesta del usuario logueado
        $data['preguntas1'] = $this->ModelsPreguntas1->obtenerPreguntasActivas();  // Lista de preguntas activas de la parte 1
        $data['respuestas1'] = $this->ModelsRespuestas1->obtenerRespuestasActivas();  // Lista de respuestas activas de la parte 1
        
        $this->load->view('cuestionarios/cuestionario2', $data);
    }

    function actualizar() {
        $result = $this->ModelsEncuesta1->actualizarEncuesta1($this->input->post());

        if ($result) {

            $param = array(
                'tabla' => 'encuesta_parte_1',
                'codigo' => $this->input->post('codigo'),
                'accion' => 'Editar Encuesta 1',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
            
            // Actualizamos el estatus del usuario a 3
            $data_usu = array(
                'estatus_encuesta' => 3,
            );
            $this->Usuarios_model->actualizarUsuario($this->session->userdata['logged_in']['id'], $data_usu);
        }
    }   

}
