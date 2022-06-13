<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pe.edu.universidad.dao.DaoPiezas"%>
<%@ page import="pe.edu.universidad.entidades.*"%>
<%@ page import="pe.edu.universidad.servlet.*"%>
<%@ page import="pe.edu.universidad.servletPiezas.*"%>
<%@ page import="pe.edu.universidad.web.*"%>
	<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/header.jsp" %>
<link rel="stylesheet" type="text/css" href="/DataTables/datatables.css">
<link rel="stylesheet" href="css/main.css">

<meta charset="ISO-8859-1">
<title>Mantenimiento de piezas y repuestos</title>
</head>
<body>
	<%
	
DaoPiezas dao = new DaoPiezas();
List<Piezas> lst = dao.consultarPiezas(); 

%>

	
	<!-- Content page-->
	<section class="full-box dashboard-contentPage">
		<!-- NavBar -->
		<nav class="full-box dashboard-Navbar">
			<ul class="full-box list-unstyled text-right">
				<li class="pull-left">
					<a href="#!" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a>
				</li>
				<li>
					<a href="#!" class="btn-Notifications-area">
						<i class="zmdi zmdi-notifications-none"></i>
						<span class="badge">7</span>
					</a>
				</li>
				<li>
					<a href="#!" class="btn-search">
						<i class="zmdi zmdi-search"></i>
					</a>
				</li>
				<li>
					<a href="#!" class="btn-modal-help">
						<i class="zmdi zmdi-help-outline"></i>
					</a>
				</li>
			</ul>
		</nav>
<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Repuestos<small>Piezas</small></h1>
			</div>
			<p class="lead">Permite Registrar nueva pieza de repuesto y tambien ver la lista de registros para poder editar o eliminar</p>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<ul class="nav nav-tabs" style="margin-bottom: 15px;">
					  	<li class="active"><a href="#new" data-toggle="tab">Nuevo</a></li>
					  	<li><a href="#list2" data-toggle="tab">Lista</a></li>
					</ul>

					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="new">
							<div class="container-fluid">
								<div class="row">
									<div class="col-xs-12 col-md-10 col-md-offset-1">
									    <form action="<%=request.getContextPath() %>/ServletPostPiezasNuevo" method="post">
									   	 	<div class="form-group label-floating">
											  <label class="control-label">ID_Pieza</label>
											  <input class="form-control" type="text" name ="id_pieza" required>
											</div>
									    	<div class="form-group label-floating">
											  <label class="control-label">Nombre</label>
											  <input class="form-control" type="text" name ="nombre"required>
											</div>
											<div class="form-group">
										        <label class="control-label">Categoria</label>
										        <select class="form-control" name="id_categoria"required>
										          <option>CP_01</option>
										          <option>CP_02</option>
										        </select>
										    </div>
											<div class="form-group label-floating">
											  <label class="control-label">Precio</label>
											  <input type="number" class="form-control"  name ="precio"required>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Stock</label>
											  <input type="number"class="form-control"  name ="stock" required>
											</div>
									
											
											
										    <!-- Icono Guardar Tecnico-->
										    <p class="text-center">
										    	<button name="Registrar"  class="btn btn-info btn-raised btn-sm"><i class="zmdi zmdi-floppy"></i> Registrar</button>
										    </p>
									    </form>
									</div>
								</div>
							</div>
						</div>
						<!-- Lista de Tecnicos-->
						
						
						
					  	
					  		<div class="tab-pane fade"  id="list2">
					  		<div class="row">
							<div class="table-responsive">
								
								<table id="tabla3" class="table table-striped text-center" style="width:100%">
									<thead>
										<tr>
											
											<th class="text-center">ID</th>
											<th class="text-center">Nombre</th>
											<th class="text-center">Id_Categoria</th>
											<th class="text-center">Precio</th>
											<th class="text-center">Stock</th>						
											<th class="text-center">Editar</th>
											<th class="text-center">Borrar</th>
										</tr>
									</thead>
									<tbody>
									
											 <%
											for (Piezas c : lst)
											{
												
											%>
											<tr>
											
											<td><%=c.getId()%></td>
											<td><%=c.getPiezas()%></td>								 
											<td><%=c.getCategoria()%></td>	
											<td><%=c.getPrecio()%></td> 
											<td><%=c.getStock()%></td>
						
											<!-- Editar-->
											<td>
											
											<a href="servletPiezas/servletPostPiezasEditar.jsp?id=<%=c.getId()%>"  class=" btn-raised btn-xs" >
											<button>
											<i class="zmdi zmdi-edit"></i>
											</button>
											</a>
											</td>
								  		
								  			<td>
								  			<!-- Eliminar-->
								  			<form action="<%=request.getContextPath()%>/ServletPostPiezasEliminar" method="post">
								  			<input  name="id_piezas" type="hidden" value="<%=c.getId()%>"></input>
								  			<button name="submit"  class="btn btn-danger btn-raised btn-xs"><i class="zmdi zmdi-delete"></i></button>
								  			</form>
								  			</td>
								  			
								  		
											<% 
											}
											%>
									</tbody>
								</table>

								</div>
								
							</div>
							</div>
					  	</div>
					  	
					</div>
				</div>
			</div>
		
	</section>
	<!--====== Scripts -->
	<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
	<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" ></script>
	<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js" ></script>
	<script src="./js/main2.js)"></script>
	<script>
	$(document).ready(function(){
		
	    $('#tabla3').DataTable();
	});
	</script>
	
</body>
</html>