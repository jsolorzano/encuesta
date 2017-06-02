<html>
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
            var TTRespuestas2 = $('#tab_respuestas2').dataTable({
                "iDisplayLength": 10,
                "iDisplayStart": 0,
                "sPaginationType": "full_numbers",
                "aLengthMenu": [6,8,10],
                //~ dom: 'Bfrtip',
				//~ buttons: [
					//~ {
						//~ extend: 'print',
						//~ text: 'Imprimir',
						//~ autoPrint: true
					//~ }
				//~ ],
                "oLanguage": {"sUrl": "<?= base_url() ?>static/js/es.txt"},
                "aoColumns": [
                    {"sClass": "registro center", "sWidth": "5%"},
                    {"sClass": "registro center", "sWidth": "20%"},
                    {"sClass": "registro center", "sWidth": "35%"},
                    {"sWidth": "3%", "bSortable": false, "sClass": "center sorting_false", "bSearchable": false},
                    {"sWidth": "3%", "bSortable": false, "sClass": "center sorting_false", "bSearchable": false}
                ]
            });
            
            // Función para activar/desactivar una respuesta
			$("table#tab_respuestas2").on('click', 'input.activar_desactivar', function (e) {
				e.preventDefault();
				var id = this.getAttribute('id');
				//alert(id)
				
				var check = $(this);
				
				//~ alert(check.prop('checked'));
				
				var accion = '';
				if (check.is(':checked')) {
					accion = 'activar';
				}else{
					accion = 'desactivar';
				}
				
				//~ var padre = $(this).closest('tr');
				//~ var nRow  = padre[0];
				bootbox.confirm("¿Desea "+accion+" la respuesta?", function(result) {
					if (result) {
						$("#accion").val(accion);
						
						var mensaje = "";
						if (accion == 'desactivar'){
							mensaje = "desactivada";
						}else{
							mensaje = "activada";
						}
						
						$.post('<?php echo base_url(); ?>index.php/respuestas_parte_2/ControllersRespuestas2/activar_desactivar/' + id, {'accion':accion}, function(response) {
							bootbox.alert("La respuesta fue "+mensaje+" exitosamente", function () {
							}).on('hidden.bs.modal', function (event) {
								location.reload();
							});
						})
						
					}
				}); 
		   
			});
			
            
            $('#enviar').click(function () {
                url = '<?php echo base_url() ?>index.php/respuestas_parte_2/ControllersRespuestas2/registrar';
                window.location = url;
            });

        });
    </script>
</head>
<body>



    </br>

    <div class="row-fluid text-center" >
        <div class="mainbody-section">


            <div class="container" style="width:90%;">
                <div class="row">



                    <button role="button" class="btn btn-primary" style="font-weight: bold;font-size: 13px" id="enviar" >
                        &nbsp;<span class="glyphicon glyphicon-plus"></span>&nbsp;Agregar respuesta
                    </button>
                    </br>
                    </br>
                    <div class="page-header">
                        <h3 id="tables" class="lista">Listado de Respuestas de la Parte 2</h3>
                    </div>

                    <table style="width:100%;" border="0" align="center" cellspacing="1" id="tab_respuestas2" align="center"
                           class="panel table table-bordered table-striped table-hover table-condensed dt-responsive table-responsive" style="width:30%">
                        <thead style="font-size: 14px">
                            <tr class="info">
                                <th style='text-align: center'>Item</th>
                                <th style='text-align: center'>Código</th>
                                <th style='text-align: center'>Respuesta</th>
                                <th style='text-align: center'>Editar</th>
                                <th style='text-align: center'>Activar/Desactivar</th>
                            </tr>
                        </thead>
                        <tbody >    
                            <?php $i = 1; ?>

                            <?php foreach ($listar as $respuesta) { ?>
                                <tr style="font-size: 16px;text-align: center" class="{% cycle 'impar' 'par' %}" >
                                    <td>
                                        <?php echo $i; ?>
                                    </td>
                                    <td>
                                        <?php echo $respuesta->codigo; ?>
                                    </td>
                                    <td>
                                        <?php echo $respuesta->respuesta; ?>
                                    </td>
                                    <td style='text-align: center'>
                                        <a title="Editar" href="<?php echo base_url() ?>index.php/respuestas_parte_2/ControllersRespuestas2/editar/<?= $respuesta->id; ?>"><i class="glyphicon glyphicon-edit"></i></a>
                                    </td>
                                    <td style='text-align: center'>
										<?php if ($respuesta->estatus == 1) {?>
										<input class='activar_desactivar' id='<?php echo $respuesta->id; ?>' type="checkbox" title='Desactivar la respuesta <?php echo $respuesta->id;?>' checked="checked"/>
										<?php }else if ($respuesta->estatus == 0){ ?>
										<input class='activar_desactivar' id='<?php echo $respuesta->id; ?>' type="checkbox" title='Activar la respuesta <?php echo $respuesta->id;?>'/>
										<?php } ?>
									</td>
                                </tr>
                                <?php $i++ ?>
                            <?php } ?>

                        </tbody>
                    </table>



                </div>
            </div>
        </div>
    </div>
