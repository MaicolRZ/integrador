<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pe.edu.universidad.dao.DaoCliente"%>
<%@ page import="pe.edu.universidad.entidades.*"%>
<%@ page import="pe.edu.universidad.servlet.*"%>
<%@ page import="pe.edu.universidad.servletCliente.*"%>
<%@ page import="pe.edu.universidad.web.*"%>
	<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/header.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">


<link rel="stylesheet" href="css/main.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
DaoCliente dao = new DaoCliente();
List<Cliente> lst = dao.consultarCliente();

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
			  <h1 class="text-titles"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Usuarios<small>Cliente</small></h1>
			</div>
			<p class="lead">Permite Registrar nuevo Cliente y tambien ver la lista de registros para poder editar o eliminar</p>
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
									    <form action="<%=request.getContextPath() %>/ServletPostClienteNuevo" method="post">
									   	 	<div class="form-group label-floating">
											  <label class="control-label">Dni</label>
											  <input class="form-control" type="number" name ="id" required>
											</div>
									    	<div class="form-group label-floating">
											  <label class="control-label">Nombre</label>
											  <input class="form-control" type="text" name ="nombre"required>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Apellido Paterno</label>
											  <input class="form-control" type="text" name ="apell_pat"required>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Apellido Materno</label>
											  <input class="form-control" type="text" name ="apell_mat"required>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">telefono</label>
											  <input class="form-control" type="text" name ="telefono"required>
											</div>
											
											<div class="form-group label-floating">
											  <label class="control-label">Direccion</label>
											  <input class="form-control" type="text" name ="direccion"required>
											</div>

											<div class="form-group">
										        <label class="control-label">Genero</label>
										        <select class="form-control" name="genero"required>
										          <option>Masculino</option>
										          <option>Femenino</option>
										        </select>
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
								
								<table id="tabla2" class="table table-striped text-center" style="width:100%">
									<thead>
										<tr>
											<th class="text-center">DNI</th>
											<th class="text-center">Nombre</th>
											<th class="text-center">Apellido Paterno</th>
											<th class="text-center">Apellido Materno</th>
											<th class="text-center">Telefono</th>
											<th class="text-center">Direccion</th>
											<th class="text-center">Genero</th>
											<th class="text-center">Editar</th>
											<th class="text-center">Borrar</th>
										</tr>
									</thead>
									<tbody>
									
											 <%
											for (Cliente c : lst) {
												
											%>
											<tr>
											<td><%=c.getDni()%></td>
											<td><%=c.getNombre()%></td>								 
											<td><%=c.getApell_pat()%></td>	
											<td><%=c.getApell_mat()%></td> 
											<td><%=c.getTelefono()%></td>
											<td><%=c.getDireccion()%></td>
											<td><%=c.getGenero()%></td>
											<!-- Editar-->
											<td>
											
											<a href="servletCliente/servletPostClienteEditar.jsp?id=<%=c.getDni()%>"  class=" btn-raised btn-xs" >
											<button>
											<i class="zmdi zmdi-edit"></i>
											</button>
											</a>
											</td>
								  		
								  			<td>
								  			<!-- Eliminar-->
								  			<form action="<%=request.getContextPath()%>/ServletPostClienteEliminar" method="post">
								  			<input  name="id" type="hidden" value="<%=c.getDni()%>"></input>
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
		
	    $('#tabla2').DataTable();
	});
	</script>
</body>
</html>