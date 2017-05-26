<%-- 
    Document   : agregarpuesto
    Created on : 27/04/2017, 12:18:06 PM
    Author     : emmanuel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        
        <link rel="shortcut icon"  href="<c:url value="/imagenes/favicon.png" /> "/>
        <title>Administrador</title>
        
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css"/> ">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/> ">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/> ">
        <link rel="stylesheet" type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> ">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/font-awesome.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/search.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/mapadmin.css"/>">
        
        <script src=" <c:url value="/js/jquery.min.js"/> "></script>
        <script src=" <c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"/> "></script>
        <script src=" <c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/> "></script>
        
        <link rel="stylesheet" type="text/css" href="<c:url value="http://fonts.googleapis.com/css?family=Oswald:400,300,700"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="http://fonts.googleapis.com/css?family=EB+Garamond"/>">
        
    </head>
    <body data-spy="scroll" data-offset="0" data-target="#theMenu">
       
      
        <!-- Menu -->
	<nav class="menu" id="theMenu">
		<div class="menu-wrap">
			<i class="icon-remove menu-close"></i>
                        <a href="<c:url value = '/home' />">Home</a>
			<a href="<c:url value = '/administrador/agregarpuesto' />">Agregar Puesto</a> <!-- Creo que va de esta forma, sólo admi puede agregar -->
                        <a href="<c:url value = '/verpuestos' />">Ver Puestos</a> <!-- TODOS -->
			<a href="<c:url value = '/administrador/modificarpuesto' />">Modificar Puesto</a> <!-- Creo que va de esta forma, sólo admi puede modificar -->
                        <a href="<c:url value = '/administrador/eliminarpuesto' />">Eliminar Puesto</a> <!-- Creo que va de esta forma, sólo admi puede eliminar -->
                        <a href="<c:url value = '/administrador/eliminarusuario' />">Eliminar Usuario</a> <!-- solo admi-->
                        <li style="float:right"><a class="smoothScroll" href="<c:url value = '/logout' /> ">Cerrar Sesión</a></li>
		</div>
		
		<!-- Menu button -->
		<div id="menuToggle"><i class="icon-reorder"></i></div>
	</nav>

	
        <!-- ========== Agregar Puesto ========== -->
	<section id="agregarpuesto" name="agregarpuesto"></section>
	<div id="headerwrap">
		<div class="container">
			<div class="row">
                            <div id='address'></div>
				<h3>Agregar Puesto</h3>
                                <div class="col-xs-5 btn-group">
                                    <form name="crearPuesto" method="GET"  action="<c:url value = '/administrador/crearPuesto' />"> <!-- Creo que va de esta forma, sólo admi puede crear -->
                                            <input class="form-control" required autocomplete="off" type="text"  name ="nombre" placeholder="Nombre"/>
                                            <br>
                                            <textarea  type="text" required autocomplete="off" class="form-control" rows="5" placeholder="Descripcion de Puesto"  name ="descripcion"></textarea>
                                            <br>
                                            <textarea type="text" required autocomplete="off" class="form-control" rows="5" placeholder="Menu de Puesto"  name ="menu"></textarea>
                                            <br>
                                            <p>Latitud</p>
                                            <input type="float" required autocomplete="off" class="form-control" id="latitud" name="latitud" readonly="readonly"/>
                                            <br>
                                            <p>Longitud</p>
                                            <input type="float" required autocomplete="off" class="form-control" id="longitud" name ="longitud" readonly="readonly"/>
                                            <br>
                                            <input type="submit" value="Agregar"/>
                                </div>    
                                </form>
                                   <div id="mapa">
                                       <script src="<c:url value ="/js/mapadmin.js"/> "/></script>
                                       <script type='text/javascript' src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsYhv7CnynR4gKT0JJQhNPzV-y6uqfHXI&callback=initialize"async defer></script>
			</div>    
			</div>
			</div>
		</div>
 
        
    <script src=" <c:url value="/js/classie.js"/> "></script>
    <script src=" <c:url value="/js/bootstrap.min.js"/> "></script>
    <script src=" <c:url value="/js/smoothscroll.js"/> "></script>
    <script src=" <c:url value="/js/main.js"/> "></script>
   
    
    <!-- Hasta Abajo -->
        <footer class="container-fluid bg-4 text-center">
            <h3>Binary Code, 2017</h3>
        </footer>
    
    </body>
</html>
