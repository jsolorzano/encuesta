<div class="row-fluid text-center" >
	<div class="mainbody-section">
		<div class="container" style="width:90%;">
			<div class="row">
				<!-- Content Header (Page header) -->
				<section class="content-header text-center">
					<h1 style="color:#fff">
						CUESTIONARIO SOCIOLABORAL
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">

					<div class="row">
						<div class="col-xs-12">

							<!-- SELECT2 EXAMPLE -->
							<div class="box box-primary">
								<div class="box-body">
									<div class="page-header text-left">
										<h4 class="lista">A continuación se exponen una serie de preguntas relacionadas con su condición sociolaboral, por favor, respondiendo todas las interrogantes seleccione las opciones correspondientes a su persona.</h4>
									</div>
									
									<form id="form_cuestionario">

										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Sexo</label>
												<select id="sexo" name="sexo" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">Masculino</option>
													<option value="2">Femenino</option>
												</select>
											</div>
										</div>

										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Estado Civil</label>
												<select id="estado_civil" name="estado_civil" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">Soltero(a)</option>
													<option value="2">Casado(a)</option>
													<option value="3">Divorciado(a)</option>
													<option value="4">Viudo(a)</option>
													<option value="5">Unión Libre</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Edad</label>
												<select id="edad" name="edad" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">Menos de 23</option>
													<option value="2">Entre 23 y 27</option>
													<option value="3">Entre 28 y 32</option>
													<option value="4">Entre 33 y 37</option>
													<option value="5">Entre 38 y 42</option>
													<option value="6">Entre 43 y 47</option>
													<option value="7">Entre 48 y 52</option>
													<option value="8">Entre 53 o más</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Nivel de Instrucción</label>
												<select id="nivel_instruc" name="nivel_instruc" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">Básica</option>
													<option value="2">Bachiller</option>
													<option value="3">T.S.U</option>
													<option value="4">Licenciado</option>
													<option value="5">Ingeniero</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Hijos</label>
												<select id="hijos" name="hijos" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">0</option>
													<option value="2">1</option>
													<option value="3">2</option>
													<option value="4">3</option>
													<option value="5">4</option>
													<option value="6">Más de 4</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Antigüedad</label>
												<select id="antiguedad" name="antiguedad" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">0-11 meses</option>
													<option value="2">Entre 1-4 años</option>
													<option value="3">Entre 5-8 años</option>
													<option value="4">Entre 9-12 años</option>
													<option value="5">Entre 13-16 años</option>
													<option value="6">Entre 17-20 años</option>
													<option value="7">Entre 21-24 años</option>
													<option value="8">Entre 25 o más</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">Sueldo</label>
												<select id="sueldo" name="sueldo" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<option value="1">Un sueldo mínimo</option>
													<option value="2">Uno o dos sueldos mínimos</option>
													<option value="3">Dos o tres sueldos mínimos</option>
													<option value="4">Tres o cuatro sueldos mínimos</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<br>
												<button type="button" id="agregar" style="font-weight: bold;font-size: 13px" class="btn btn-primary " >
													&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar y continuar
												</button>
												<input id="id" name="id" type='hidden' value="<?php echo $cuestionario[0]->id; ?>" class="form-control" >
												<input id="codigo" name="codigo" type='hidden' value="<?php echo $cuestionario[0]->codigo; ?>" class="form-control" >
												<input id="fecha_update" name="fecha_update" type='hidden' value="<?php echo date('Y-m-d');?>" class="form-control" >
												<input id="hora_update" name="hora_update" type='hidden' value="<?php echo date("h:i:s a"); ?>" class="form-control" >
												<input class="form-control" type='hidden' id="usuario_id" name="usuario_id" value="<?php echo $cuestionario[0]->usuario_id; ?>"/>
											</div><!-- /.form-group -->
										</div><!-- /.form-group -->
										
									</form>
								</div><!-- /.box-body -->
							</div><!-- /.box-body-primary -->
							</div><!-- /.box-body -->
						</div><!-- /.col -->

				</section><!-- /.content -->
			</div>
		</div>
	</div>
</div>


<script>
     
    //~ $('#fecha_pago').numeric({allow: "/"});
    //~ $('#num_pago').numeric();
    //~ $('#monto').numeric({allow: "."});
    //~ $("[data-mask]").inputmask();
    $('input').on({
        keypress: function () {
            $(this).parent('div').removeClass('has-error');
        }
    });
    $('select').on({
        change: function () {
            $(this).parent('div').removeClass('has-error');
        }
    });
    
    //~ $('#fecha_pago').datepicker({
        //~ format: "dd/mm/yyyy",
        //~ language: "es",
        //~ autoclose: true,
    //~ })
    
    $('#agregar').click(function(e){
        e.preventDefault();
        //Para validar campos vacios
        /*if ($("#cedula").val() == '') {
            bootbox.alert("Debe colocar su cedula", function () {
            }).on('hidden.bs.modal', function (event) {
                    $("#cedula").parent('div').addClass('has-error')
                    $("#cedula").focus();
            });
        }else if ($("#nombre").val() == '') {
            bootbox.alert("Debe colocar su nombre", function () {
            }).on('hidden.bs.modal', function (event) {
                    $("#nombre").parent('div').addClass('has-error')
                    $("#nombre").focus();
            });
        }else if ($("#apellido").val() == '') {
            bootbox.alert("Debe colocar su apellido", function () {
            }).on('hidden.bs.modal', function (event) {
                $("#apellido").parent('div').addClass('has-error')
                $("#apellido").focus();
            });
        }*/if ($("#sexo").val() == 0) {
            bootbox.alert("Debe seleccionar el sexo", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#sexo").parent('div').addClass('has-error')
				$("#sexo").focus();
            });
        }else if ($("#estado_civil").val() == 0) {
            bootbox.alert("Debe seleccionar su estado civil", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#estado_civil").parent('div').addClass('has-error')
				$("#estado_civil").focus();
            });
        }else if ($("#edad").val() == 0) {
            bootbox.alert("Debe seleccionar su edad", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#edad").parent('div').addClass('has-error')
				$("#edad").focus();
            });
        }else if ($("#nivel_instruc").val() == 0) {
            bootbox.alert("Debe seleccionar su nivel de instrucción", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#nivel_instruc").parent('div').addClass('has-error')
				$("#nivel_instruc").focus();
            });
        }else if ($("#hijos").val() == 0) {
            bootbox.alert("Debe seleccionar el número de hijos", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#hijos").parent('div').addClass('has-error')
				$("#hijos").focus();
            });
        }else if ($("#antiguedad").val() == 0) {
            bootbox.alert("Debe seleccionar su antigüedad dentro de la institución", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#antiguedad").parent('div').addClass('has-error')
				$("#antiguedad").focus();
            });
        }else if ($("#sueldo").val() == 0) {
            bootbox.alert("Debe seleccionar su sueldo", function () {
            }).on('hidden.bs.modal', function (event) {
				$("#sueldo").parent('div').addClass('has-error')
				$("#sueldo").focus();
            });
        }else{
			
            $.post('<?php echo base_url(); ?>index.php/cuestionarios/ControllersCuestionarios/actualizar', $('#form_cuestionario').serialize(), function (response){
				//~ alert(response);
				
				bootbox.alert("Se actualizó su información personal con Exito ", function (){
					window.location = '<?php echo base_url(); ?>index.php/cuestionarios/ControllersEncuesta1/'
				});
                
            });
		}
    })

</script>
