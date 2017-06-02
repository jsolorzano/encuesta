<?php
//~ print $num_reg->num_reg;
?>
<div class="row-fluid text-center" >
	<div class="mainbody-section">
		<div class="container" style="width:90%;">
			<div class="row">
				<!-- Content Header (Page header) -->
				<section class="content-header text-center">
					<h1 style="color:#fff">
						ESTADÍSTICAS DEL CUESTIONARIO DE HEINZ LEYMAN
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">

					<div class="row">
						<div class="col-xs-12">

							<!-- SELECT2 EXAMPLE -->
							<div class="box box-primary text-left">
								<div class="box-body">
									<div class="page-header text-left">
										<h4 class="lista">A continuación se exponen una serie de estadísticas correspondientes a cada pregunta del cuestionario de Heinz Leyman.</h4>
									</div>
									
									<?php foreach($diccionario as $clave => $elemento){ ?>
										<div class="col-md-6">
											<div class="form-group">
												<label style="font-weight:black; font-size:20px; text-decoration:underline; color:#fff;"><?php echo "¿".$clave."?"; ?></label>
												<label style="font-weight:medium; color:#fff;"><?php echo $elemento; ?></label>
											</div>
										</div>
									<?php }?>
										
								</div><!-- /.box-body -->
							</div><!-- /.box-body-primary -->
							</div><!-- /.box-body -->
						</div><!-- /.col -->

				</section><!-- /.content -->
			</div>
		</div>
	</div>
</div>
