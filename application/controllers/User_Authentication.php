<?php
Class User_Authentication extends CI_Controller {

    public function __construct() {
        @parent::__construct();

// Load form helper library
        $this->load->helper('form');

// Load form validation library
        $this->load->library('form_validation');

// Load session library
        $this->load->library('session');

// Load database
        $this->load->model('Login_database');
        $this->load->model('usuarios/Usuarios_model');
        $this->load->model('auditoria/ModelsAuditoria');
        $this->load->model('busquedas_ajax/ModelsBusqueda');
    }

// Show login page
    public function index() {
        $this->load->view('login_form');
    }

// Check for user login process
    public function user_login_process() {

        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        
        $this->form_validation->set_message('Username', 'Ingrese su nombre de usuario');
        $this->form_validation->set_message('Password', 'Ingrese su contraseña');
        
        if ($this->form_validation->run() == FALSE) {
            if ($this->session->userdata('username')) {
               
                redirect('admin_page');
      
            }
            if (isset($this->session->userdata['logged_in'])) {
                $this->load->view('base');
                $this->load->view('admin_page');

               
            } else {
                $this->load->view('login_form');
            }
            
        } else {
            
            
            $data = array(
                'username' => $this->input->post('username'),
                'password' => 'pbkdf2_sha256$12000$'.hash( "sha256", $this->input->post('password') )
            );
            $result = $this->Login_database->login($data);
            if ($result == TRUE) {

                $username = $this->input->post('username');
                $result = $this->Login_database->read_user_information($username);
                if ($result != false) {
                    $session_data = array(
                        'username' => $result[0]->username,
                        'email' => $result[0]->email,
                        'tipo_usuario' => $result[0]->tipo_usuario,
                        'first_name' => $result[0]->first_name,
                        'last_name' => $result[0]->last_name,
                        'change_id' => $result[0]->change_id,
                        'estatus_encuesta' => $result[0]->estatus_encuesta,
                        'id' => $result[0]->id
                    );

// Add user data in session
                    $this->session->set_userdata('logged_in', $session_data);
                    $this->load->view('base');
                    $this->load->view('admin_page');
                    $param   = array(
            
                    'tabla' => '',
                    'codigo' => '',
                    'accion' => 'Inicio de Sesion',
                    'fecha'   => date('Y-m-d'),
                    'hora'   =>  date("h:i:s a"),
                    'usuario' => $result[0]->id,
                );
                $this->ModelsAuditoria->add($param);
                }
            } else {
                $data = array(
                    'error_message' => 'Usuario o Contraseña Invalidos'
                );
                $this->load->view('login_form', $data);
            }
        }
    }

	// Logout from admin page
    public function logout($id) {

		// Removing session data
        $sess_array = array(
            'username' => ''
        );
        $this->session->unset_userdata('logged_in', $sess_array);
        $data['message_display'] = 'Sesión Cerrada con exito';
        $this->load->view('login_form', $data);
        $param   = array(
            
                    'tabla' => '',
                    'codigo' => '',
                    'accion' => 'Cerrada la Sesión',
                    'fecha'   => date('Y-m-d'),
                    'hora'   =>  date("h:i:s a"),
                    'usuario' => $id,
        );
        $this->ModelsAuditoria->add($param);
    }
    
    // Método para recuperación de clave
    function recuperar() {
		$usuario = $this->input->post('username_rec');
		$clave_maestra = 'pbkdf2_sha256$12000$'.hash( "sha256", $this->input->post('password_rec'));
		$nueva_clave = (string)rand();
		$nueva_clave_encrip = 'pbkdf2_sha256$12000$'.hash( "sha256",$nueva_clave);
		//~ echo $usuario;
		//~ echo $clave_maestra;
		
		// Verificamos la clave maestra
		$data_clave = $this->Login_database->obtenerClave($clave_maestra);
		if(count($data_clave) > 0){
			// Consultamos los datos del usuario
			$data_usuario = $this->Login_database->obtenerUsuarioName($usuario);
			if(count($data_usuario) > 0){
				$passwd = $nueva_clave_encrip;  // Clave encriptada
				$update_usuario = $this->Login_database->actualizarPasswd($data_usuario->id,$passwd);
				echo "Nueva Clave de Acceso: $nueva_clave";
			}else{
				echo "Usuario o clave incorrectos";
			}
			
		}else{
			echo "Usuario o clave incorrectos";
		}
	}
	
	// Cambio de contraseña por primera vez o a resetear
    public function cambio_password()
    {
        $datos = $this->input->post();
        $this->Login_database->cambio_password($datos);
    }
    
    // Método para registrar nuevo usuario referido
    function registrar_usuario() {
		$usuario = $this->input->post('username_reg');
		$clave_nueva = 'pbkdf2_sha256$12000$'.hash( "sha256", $this->input->post('password_reg'));
		
		$codigo_usuario = $this->ModelsBusqueda->count_all_table('usuarios') + 1;
		
		// Preparamos los datos del nuevo usuario
		$data_usuario = array(
			'id' => $codigo_usuario,
			'username' => $usuario,
			//~ 'email' => $this->input->post('email'),
			'password' => $clave_nueva,
			//~ 'cedula' => $this->input->post('cedula'),
			//~ 'first_name' => $this->input->post('first_name'),
			//~ 'last_name' => $this->input->post('last_name'),
			'tipo_usuario' => 'Encuestado',
			//~ 'cargo' => $this->input->post('cargo'),
			//~ 'telefono' => $this->input->post('telefono'),
			'estatus' => True,
			'estatus_encuesta' => 1,
			'change_id' => 1,
			'fecha_create' => date('Y-m-d'),
			//~ 'user_create_id' => $this->input->post('user_create_id'),
		);
		
		// Registramos los datos del usuario
		$reg_usuario = $this->Usuarios_model->insertar($data_usuario);
		
		// Actualizamos la bitácora
		if ($result) {

            $param = array(
                'tabla' => 'usuarios',
                'codigo' => $codigo_usuario,
                'accion' => 'Nuevo Usuario',
                'fecha' => date('Y-m-d'),
                'hora' => date("h:i:s a"),
                'usuario' => $this->session->userdata['logged_in']['id'],
            );
            $this->ModelsAuditoria->add($param);
        }
	}

}
