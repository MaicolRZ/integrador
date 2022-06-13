<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>

<jsp:include page="header.jsp"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
<%@ page import="pe.edu.universidad.dao.*"%>
<%@ page import="pe.edu.universidad.entidades.*"%>
<%@ page import="pe.edu.universidad.servlet.*"%>
<%@ page import="pe.edu.universidad.servletCliente.*"%>
<%@ page import="pe.edu.universidad.web.*"%>
	<%@ page import="java.util.List"%>
<link rel="stylesheet" href="css/main.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
DaoCliente dao = new DaoCliente();
List<Visita_Tecnica> lst4 = dao.Visita_Tecnica();
List<Visita_Tecnica> cod = dao.Cod_VisitaTecnica();
List<Cliente> lst2 = dao.consultarCliente();
Cliente lst=(Cliente)dao.lista(29531201); 


%>
<!-- Content page-->
<section class="full-box dashboard-contentPage">
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
			  <h1 class="text-titles"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Electrodomestico<small>Editar datos</small></h1>
			</div>
			<p class="lead">Permite el mantenimiento de Electrodomesticos</p>
			</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
				
					<ul class="nav nav-tabs" style="margin-bottom: 15px;">
					  	
					  	<li class="active"><a href="#list2" data-toggle="tab">Lista Visitas Tecnicas</a></li>
					  	<li ><a href="#new" data-toggle="tab">Nuevo</a></li>
					</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade active in"  id="list2">		  		
				<div class="row">
					<div class="table-responsive">
						<table  id="visita" class="table table-striped text-center" style="width:100%">
						<thead>
				<tr>
				<th>ID</th>
				<th>DNI</th>
				<th>Tipo</th>
				<th>Marca</th>
				<th>Modelo</th>
				<th>N° Serie</th>
				<th>Descripcion fallo</th>
				
				<th>Programacion</th>
				</tr>
				</thead>
				
					<tbody>
											<%for (Visita_Tecnica v : lst4) {%>
					<tr>
											<td><%=v.getId()%></td>
											<td><%=v.getDni()%></td>
										
											<td><%=v.getTipo_electrodomestico()%></td>
											<td><%=v.getMarca()%></td>
											<td><%=v.getModelo()%></td>
											<td><%=v.getNumero_serie()%></td> 
											<td><%=v.getDescripcion()%></td> 
											

										
											
											
				<td>
				<a href="servletVisita/servletPostAsignarTecnico.jsp?id=<%=v.getId()%>&dni=<%=v.getId()%>"  class=" btn-raised btn-xs" >
				
				<button>
					<i class="zmdi zmdi-edit"></i>
				</button>
				</a>
											</td>
				<% 
											}
											%>
											</tr>
										</tbody>
									</table>
									</div>
									</div>						    
								</div>
								<!--====== Tablas Visita Domicilio -->								
								
				
					<!-- Icono Guardar Tecnico-->	
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
		
	    $('#visita').DataTable();
	});
	</script>
</body>
</html>