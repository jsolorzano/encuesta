<?php
// Preparamos los nombres correspondientes a cada valor de cada campo
$nombs_sexo = array('Masculino', 'Femenino');
$nombs_est_civil = array('Solteros', 'Casados', 'Divorciados', 'Viudos', 'Unión Libre');
$nombs_edad = array('Menos de 23', 'Entre 23 y 27', 'Entre 28 y 32', 'Entre 33 y 37', 'Entre 38 y 42', 'Entre 43 y 47', 'Entre 48 y 52', 'Entre 53 o más');
$nombs_niv_intruc = array('Básica', 'Bachiller', 'T.S.U', 'Licenciado', 'Ingeniero');
$nombs_hijos = array('0 Hijos', '1 Hijo', '2 Hijos', '3 Hijos', '4 Hijos', 'Más de 4 Hijos');
$nombs_antig = array('0-11 meses', 'Entre 1-4 años', 'Entre 5-8 años', 'Entre 9-12 años', 'Entre 13-16 años', 'Entre 17-20 años', 'Entre 21-24 años', 'Entre 25 o más');
$nombs_sueldo = array('Un sueldo mínimo', 'Uno o dos sueldos mínimos', 'Dos o tres sueldos mínimos', 'Tres o cuatro sueldos mínimos');

?>
<div class="row-fluid text-center" >
	<div class="mainbody-section">
		<div class="container" style="width:90%;">
			<div class="row">
				<!-- Content Header (Page header) -->
				<section class="content-header text-center">
					<h1 style="color:#fff">
						ESTADÍSTICAS DEL CUESTIONARIO SOCIOLABORAL
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
										<h4 class="lista">A continuación se exponen una serie de estadísticas correspondientes a cada pregunta del cuestionario sociolaboral.</h4>
									</div>
									
									<?php foreach($diccionario as $clave => $elemento){ ?>
										<div class="col-md-6">
											<div class="form-group">
												<label style="font-weight:black; font-size:25px; text-decoration:underline; color:#fff;"><?php echo $clave; ?></label>
												<br/>	
												<?php
												$items = explode(',',$elemento);
												$nom_elemento;
												
												if($clave == "Sexo"){
													$nom_elemento = $nombs_sexo;
												}
												if($clave == "Estado Civil"){
													$nom_elemento = $nombs_est_civil;
												}
												if($clave == "Edad"){
													$nom_elemento = $nombs_edad;
												}
												if($clave == "Nivel de instrucción"){
													$nom_elemento = $nombs_niv_intruc;
												}
												if($clave == "Hijos"){
													$nom_elemento = $nombs_hijos;
												}
												if($clave == "Antigüedad"){
													$nom_elemento = $nombs_antig;
												}
												if($clave == "Sueldo"){
													$nom_elemento = $nombs_sueldo;
												}
												$i = 0;
												$porcentaje = 0;
												foreach($items as $item){
													$porcentaje = explode("(",$item);
													$porcentaje = explode("(",$porcentaje[1]);
													$porcentaje = explode("%",$porcentaje[0]);
												?>
													<label style="font-weight:medium; color:#fff;">
													<?php echo $nom_elemento[$i].": <span style='font-weight:normal; color:#fff;'>".$item."</span><br/>"; ?>
													</label>
													<br/>
													<div class="progress">
														<div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="<?php echo $porcentaje[0];?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $porcentaje[0];?>%; background-color:#47A447;">
															<span><?php echo $porcentaje[0];?>%</span>
														</div>
													</div>
													<br/>
												<?php
												$i++;
												}
												?>
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

