<?php
if (isset($this->session->userdata['logged_in'])) {
$username = ($this->session->userdata['logged_in']['username']);
$email = ($this->session->userdata['logged_in']['email']);
$tipouser = ($this->session->userdata['logged_in']['tipo_usuario']);
} else {
redirect(base_url());
}
?>
  
<?php if ($tipouser == 'Administrador'){
	
 } else {
    redirect(base_url());
 }?>  
        <script>
            $(document).ready(function () {

                

                $('select').on({
                    change: function () {
                        $(this).parent('div').removeClass('has-error');
                    }
                });
                $('input').on({
                    keypress: function () {
                        $(this).parent('div').removeClass('has-error');
                    }
                });

                $("select").select2();
                //~ $('#pregunta').alpha({allow: " "}); //Solo permite texto

                $('#volver').click(function () {
                    url = '<?php echo base_url()?>index.php/preguntas_parte_2/ControllersPreguntas2'
                    window.location = url
                })

                //~ $("#cedula").change(function (event) {
//~ 
                    //~ var cedula = $('#cedula').val();
                    //~ //var hosting = $('#id_hosting').val(); // Captura del hosting (dominio)
                    //~ var hosting = "www.consultaelectoral.org.ve/cedula="
                    //~ if (hosting) {
                        //~ $.get("http://" + hosting + cedula, function (data) {
                            //~ var option = "";
                            //~ $.each(data, function (i) {
                                //~ $("#first_name").val(data[i].p_nombre + " " + data[i].s_nombre)
                                //~ $("#last_name").val(data[i].p_apellido + " " + data[i].s_apellido)
                            //~ });
                            //~ // Proceso para validar con la clase error 404 Not Found
                        //~ }, 'json');
                    //~ }
                //~ });
                
                // Función para validar por nombre si ya existe la pregunta
                $("#pregunta").change(function (event) {

                    var pregunta = $('#pregunta').val();
                    $.post('<?php echo base_url(); ?>index.php/preguntas_parte_2/ControllersPreguntas2/consultar/', $('#form_pregunta').serialize(), function (response) {
						//~ alert(response[0])
						if (response[0] == 'e') {
							bootbox.alert("La pregunta ya existe", function () {
							}).on('hidden.bs.modal', function (event) {
								$('#pregunta').parent('div').addClass('has-error');
								$('#pregunta').val('');
								$('#pregunta').focus();
							});
						}

					});
                });

                $("#registrar").click(function (e) {
                    e.preventDefault();  // Para evitar que se envíe por defecto
                    
                    if (($('#codigo').val().trim() == '')) {
                        bootbox.alert('Disculpe, debe colocar el Código de la pregunta', function() {
                        }).on('hidden.bs.modal', function (event) {
                            $('#codigo').parent('div').addClass('has-error');
                            $('#codigo').focus();
                        });
                    }
                    else if (($('#pregunta').val().trim() == '')) {
                        bootbox.alert('Disculpe, debe colocar la descripción de la pregunta', function() {
                        }).on('hidden.bs.modal', function (event) {
                            $('#pregunta').parent('div').addClass('has-error');
                            $('#pregunta').focus();
                        });
                    }
                    //~ else if ($('#simbolo').val().trim() == '') {
                        //~ bootbox.alert('Disculpe, Debe colocar el simbolo de la unidad de medida', function() {	    
                            //~ $('#simbolo').parent('div').addClass('has-error');
                        //~ });
                    //~ }else if ($('#tipo').val().trim() == '') {
                        //~ bootbox.alert('Disculpe, Debe colocar el tipo de la unidad de medida', function() {	    
                            //~ $('#tipo').parent('div').addClass('has-error');
                        //~ });
                    //~ }
                    else {
                        
                         $.post('<?php echo base_url(); ?>index.php/preguntas_parte_2/ControllersPreguntas2/guardar', $('#form_pregunta').serialize(), function (response) {

                            bootbox.alert("Se registro con exito", function () {
                            }).on('hidden.bs.modal', function (event) {
                                url = '<?php echo base_url(); ?>index.php/preguntas_parte_2/ControllersPreguntas2'
                                window.location = url
                            });

                        });
                    }
                });

                        });


        </script>
    </head>
    <body>
        <?php
//            echo "<div class='alert alert-dismissible alert-success' style='text-align: center'>";
//            echo "<button type='button' class='close' data-dismiss='alert'>X</button>";
//            echo validation_errors();;
//            echo "</div>";
        ?>

        </br>

        <div class="row-fluid text-center" >
            <div class="mainbody-section">


                <div class="container" style="width:90%;">
                    <div class="row">

                        </br>

                        <div class="col-lg-12">
                            <div class="well bs-component">

                                <form class="form-horizontal" id="form_pregunta">
                                    <fieldset>
                                        <legend>Registrar Pregunta</legend>
                                           <br/>
                                        <div class="form-group">
                                            <div class="col-xs-1" style="font-weight:bold">Código</div>
                                            <div class="col-lg-5">
                                                <input class="form-control" value="<?php echo (int)$ultimo_id + (int)1; ?>" type='text' id="codigo" name="codigo" readonly="true"/>
                                            </div>
                                           <div class="col-xs-1" style="font-weight:bold" >Pregunta</div>
                                            <div class="col-lg-5">
                                               	<input class="form-control" autofocus="" type='text' placeholder="Descripción de la pregunta" id="pregunta" name="pregunta"/>
                                            </div>

                                        </div>   
                                        
                                        <br/>

                                        <div class="form-group">
                                            <div class="col-lg-12">
                                                <input class="form-control"  type='hidden' placeholder="user" id="usuario_id" name="usuario_id" value="<?php echo $id_user;?>"/>
												<input class="form-control"  type='hidden' id="estatus" name="fecha_create" value="<?php echo date('Y-m-d');?>"/>
												<input class="form-control"  type='hidden' id="estatus" name="hora_create" value="<?php echo date('h:i:s a');?>"/>
												<input class="form-control"  type='hidden' id="estatus" name="estatus" value="1"/>
                                                <button type="button" id="volver" style="font-weight: bold;font-size: 13px" class="btn btn-warning" >
                                                    &nbsp;<span class="glyphicon glyphicon-chevron-left"></span>&nbsp;Volver
                                                </button>
                                                <button type="reset" id="limpiar" class="btn btn-default"/>
                                                &nbsp;<span class="glyphicon glyphicon-retweet"></span>&nbsp;&nbsp;Limpiar
                                                </button>
                                                <button type="submit" id="registrar" style="font-weight: bold;font-size: 13px" class="btn btn-success"/>
                                                &nbsp;<span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Registrar
                                                </button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>

                                <div class="btn btn-primary btn-xs" id="source-button" style="display: none;">&lt; &gt;</div></div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
