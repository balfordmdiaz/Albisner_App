<!-- Formador: Msc. Bissmarck Rostran -->

<?php
		include("utils/conexion.php");
		$sql = "SELECT * FROM categorias";
		$peticion = mysql_query($sql,$conexion);
?>

<!doctype html>
<html es>
<head>
	<link href="favicon.ico" type="image/x-icon" rel="shortcut icon" />
	<title>albisne.com</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="jqm/jquery.mobile-1.2.0.css">
	<script type="text/javascript" src="jqm/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="jqm/jquery.mobile-1.2.0.js"></script>
</head>
<body>
	<div data-role="page" data-theme="a" id="p1">
		<div data-role="header" data-theme="c" data-position="fixed">
			<h3>albisne.com</h3>
			<a href="#backend" data-rel="dialog" data-icon="info">Admin</a>
			<a href="#opciones" data-rel="dialog" data-icon="info">Menu</a>
		</div>
		<div data-role="content">
        	<h3>Introducción</h3>
			Bienvenid@s ALBISNE.COM, una aplicación diseñada específicamente para móviles.</p>			
			<!-- Programando el acceso a php -->
			<ul data-role="listview" data-inset="true" data-filter="true" data-filter-placeholder="Búsqueda de categorías" data-theme="c">
				<!-- Aquí va el código que muestra las categorías -->

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






				<!-- Fin de las categorias -->
			</ul>
		</div>
		<div data-role="footer" data-position="fixed" data-theme="c">
        	<div data-role="navbar">
            <ul>
				<li><a href="#acercade" data-rel="dialog" data-icon="info">Acerca de </a></li>
            </ul>
            </div>
		</div>

	</div>
    
<!-- Programando el Back-End -->
<!-- Programando la segunda página -->    
	<div data-role="page" data-theme="c" id="backend">
		<div data-role="header" data-theme="c" data-position="fixed">
			<h3>albisne.com</h3>
		</div>
		<div data-role="content">
			<h3>OPCIONES ADMINISTRATIVAS:</h3>
			<ul data-role="listview" data-inset="true" data-theme="b">
				<li><a href="">¿Cómo contactarnos?</a></li>
				<li><a href="">¿Cómo funciona?</a></li>
				<li><a href="">¿Precios por publicar?</a></li>
			</ul>
		</div>
	</div>  



<!-- Programando la segunda página -->    
	<div data-role="page" data-theme="c" id="opciones">
		<div data-role="header" data-theme="c" data-position="fixed">
			<h3>albisne.com</h3>
		</div>
		<div data-role="content">
			<h3>OPCIONES DE MENÚ:</h3>
			<ul data-role="listview" data-inset="true" data-theme="b">
				<li><a href="">¿Cómo contactarnos?</a></li>
				<li><a href="">¿Cómo funciona?</a></li>
				<li><a href="">¿Precios por publicar?</a></li>
			</ul>
		</div>
	</div>    
    
</body>
</html>