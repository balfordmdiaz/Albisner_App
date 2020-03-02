// Contenido del archivos de conexión
	<?php
	$conexion = mysql_connect("localhost","root","");
	mysql_select_db("albisne_bdd",$conexion);
	?>

// Modificando el archivo index.php
// Primer paso - Modificando el index.php
// Establecer el import para la conexión
	<?php
		include("/utils/conexion.php");
		$sql = "SELECT * FROM categorias";
		$peticion = mysql_query($sql,$conexion);
	?>

// Segundo Paso
	<?php
	while ($fila = mysql_fetch_array($peticion)){

		echo '
			<li>
				<a href="productos.php?idcat='.$fila["idcat"].'" data-transition="slide">
					<img src="'.$fila["fotocat"].'" width="140px" height="140px">
					<h3>'.utf8_encode($fila["nombre"]).'</h3>
					<p>'.utf8_encode($fila["descripcion"]).'</p>
				</a>
			</li>
		';
	}
	?>



// Modificando el archivo productos.php
// Mostrar los productos de la categoría seleccionada
// Primero imprtamos el archivo de conexión
	<?php
		include ("/utils/conexion.php");
		$id = $_GET["idcat"];
		$sql = "SELECT * FROM productos WHERE idcat=".$id;
		//$sql = "SELECT * FROM productos";
		$peticion = mysql_query($sql,$conexion);
	?>

// Mostramos los productos de la categoría seleccionada
	<?php
	while ($fila = mysql_fetch_array($peticion)){

		echo '
			<li>
				<a href="detalles.php?idpro='.$fila["idpro"].'" data-transition="slide">
					<img src="'.$fila["foto"].'" width="140px" height="140px">
					<h3>Nombre: '.utf8_encode($fila["nompro"]).'</h3>
					<p>Precio: '.$fila["moneda"].' '.number_format($fila["precio"], 2, '.', ',').'</p>
				</a>
			</li>
		';
	}
	?>
	

// Modificando el archivo detalles.php	
// Visualizando el detalle del producto seleccionado
// Establecemos el import de la conexión
	<?php
		include ("/utils/conexion.php");
		$id = $_GET["idpro"];
		$sql = "SELECT * FROM productos WHERE idpro=".$id;
		$peticion = mysql_query($sql,$conexion);
		$fila = mysql_fetch_array($peticion);
	?>

// Mostramos el detalle del producto seleccionado
    <?php			
		echo '
			<center>
			<table width="100%" border="0" data-role="table" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Editar Columnas..." data-column-popup-theme="b">
			  <tr>
			    <td width="124" scope="col"><strong>Contacto:</strong></td>
			    <td width="163" scope="col">'.utf8_encode($fila["contactonom"]).'</td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Fotografía:</strong></td>
			    <td><img src="'.$fila["fotocontacto"].'" width="140" height="140px"></td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Ciudad:</strong></td>
			    <td>'.utf8_encode($fila["ciudad"]).'</td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Teléfono:</strong></td>
			    <td>'.$fila["telefono"].'</td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Email:</strong></td>
			    <td>'.$fila["contactoemail"].'</td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Artículo:</strong></td>
			    <td>'.utf8_encode($fila["nompro"]).'</td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Foto del artículo</strong></td>
			    <td><img src="'.$fila["foto"].'" width="140" height="140px"></td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Precio</strong></td>
			    <td>'.$fila["moneda"].' '.number_format($fila["precio"], 2, '.', ',').'</td>
			  </tr>
			  <tr>
			    <td scope="row"><strong>Descripción</strong></td>
			    <td>'.utf8_encode($fila["descripcionpro"]).'</td>
			  </tr>
			</table>
			</center>
		';
	?>