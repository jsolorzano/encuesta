<div class="row-fluid text-center" >
	<div class="mainbody-section">
		<div class="container" style="width:90%;">
			<div class="row">
				<!-- Content Header (Page header) -->
				<section class="content-header text-center">
					<h1 style="color:#fff">
						CUESTIONARIO DE ESCALA LICKERT
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
										<h4 class="lista">A continuación hay una serie de preguntas, las cuales debe de leer determinadamente, seleccione la opción que a usted le parezca mejor para cada una.</h4>
									</div>
									
									<form id="form_encuesta2">

										<?php $i = 1;?>
										<?php foreach ($preguntas2 as $pregunta) {?>
										<div class="col-md-6">
											<div class="form-group">
												<label style="font-weight:bold; color:#fff;">(<?php echo $i;?>) ¿<?php echo $pregunta->pregunta;?>?</label>
												<select id="respuesta_<?php echo $i;?>" name="respuesta_<?php echo $i;?>" class="form-control select2" >
													<option value=0>SELECCIONE</option>
													<?php foreach ($respuestas2 as $respuesta) {?>
													<option value="<?php echo $respuesta->id;?>"><?php echo $respuesta->respuesta;?></option>
													<?php }?>
												</select>
											</div>
										</div>
										<?php $i++; }?>
										
										<div class="col-md-2">
											<div class="form-group">
												<br>
												<button type="button" id="agregar3" style="font-weight: bold;font-size: 13px" class="btn btn-primary " >
													&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Terminar
												</button>
												<input id="id" name="id" type='hidden' value="<?php echo $encuesta2[0]->id; ?>" class="form-control" >
												<input id="codigo" name="codigo" type='hidden' value="<?php echo $encuesta2[0]->codigo; ?>" class="form-control" >
												<input id="fecha_update" name="fecha_update" type='hidden' value="<?php echo date('Y-m-d');?>" class="form-control" >
												<input id="hora_update" name="hora_update" type='hidden' value="<?php echo date("h:i:s a"); ?>" class="form-control" >
												<input class="form-control" type='hidden' id="usuario_id" name="usuario_id" value="<?php echo $encuesta2[0]->usuario_id; ?>"/>
												<input class="form-control" type='hidden' id="num_preguntas" value="<?php echo $i-1; ?>"/>
												<input class="form-control" type='hidden' id="campos_vacios"/>
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
    
    $('#agregar3').click(function(e){
        e.preventDefault();
        // Variable que contiene el número de preguntas
        var num_preguntas = $("#num_preguntas").val();
        
        //Para contar campos vacios
        var campos_vacios = 0;
        for (var j = 0; j < parseInt(num_preguntas); j++) {
			//~ alert(parseInt(j+1));
			if ($("#respuesta_"+parseInt(j+1)).val() == 0) {
				campos_vacios += 1;
			}
			
		}
		$("#campos_vacios").val(campos_vacios);  // En este campo oculto colocaremos la cantidad de campos vacíos para validar el envío del formulario
		//~ alert(campos_vacios);
        
        //Para validar campos vacios y evitar el envío del formulario
        for (var i = 0; i < parseInt(num_preguntas); i++) {
			//~ alert(parseInt(i+1));
			if ($("#respuesta_"+parseInt(i+1)).val() == 0) {
				bootbox.alert("Debe responder la pregunta "+parseInt(i+1), function () {
				}).on('hidden.bs.modal', function (event) {
					$("#respuesta_"+parseInt(i+1)).parent('div').addClass('has-error')
					$("#respuesta_"+parseInt(i+1)).focus();
				});
				return false;
			}
			
		}
		
		// Si ya no hay campos vacíos enviamos el formulario
        if($("#campos_vacios").val() == 0){
			$.post('<?php echo base_url(); ?>index.php/cuestionarios/ControllersEncuesta2/actualizar', $('#form_encuesta2').serialize(), function (response){
				
				bootbox.alert("Se actualizó su encuesta con Exito ", function (){
					window.location = '<?php echo base_url(); ?>index.php/cuestionarios/ControllersEncuesta2/finalizar/'
				});
                
            });
		}
    })


</script>
