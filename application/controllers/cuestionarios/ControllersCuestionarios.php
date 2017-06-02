<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ControllersCuestionarios extends CI_Controller {

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
        $this->load->model('cuestionarios/ModelsCuestionarios');
        $this->load->model('usuarios/Usuarios_model');
        $this->load->model('busquedas_ajax/ModelsBusqueda');  // Librería de consultas extra
    }

    function index() {
		/////// Al ingresar por primera vez se genera un registro vacío
		$id_usu = $this->session->userdata['logged_in']['id'];
        $data['existe_cuestionario'] = count($this->ModelsCuestionarios->obtenerCuestionarioUsu($id_usu));
        $ultimo_id = $this->ModelsBusqueda->count_all_table('cuestionario');
        if ($data['existe_cuestionario'] == 0){
          $datos = array(
            'id' => $ultimo_id + 1,
            'codigo' => $ultimo_id + 1,
            'fecha_create' => date('Y-m-d'),
            'hora_create' => date("h:i:s a"),
            'usuario_id' => $this->session->userdata['logged_in']['id'],
          );
          $result = $this->ModelsCuestionarios->insertarCuestionario($datos);
        }
        $data['cuestionario'] = $this->ModelsCuestionarios->obtenerCuestionarioUsu($id_usu);
        $this->load->view('cuestionarios/cuestionario1', $data);
    }

    function actualizar() {
		
        $result = $this->ModelsCuestionarios->actualizarCuestionario($this->input->post());

        if ($result) {
			// Registro en bitácora
            $param = array(
                'tabla' => 'cuestionario',
                'codigo' => $this->input->post('codigo'),
                'accion' => 'Editar Cuestionario',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
            
            // Actualizamos el estatus del usuario a 2
            $data_usu = array(
                'estatus_encuesta' => 2,
            );
            $this->Usuarios_model->actualizarUsuario($this->session->userdata['logged_in']['id'], $data_usu);
        }
    }

}
