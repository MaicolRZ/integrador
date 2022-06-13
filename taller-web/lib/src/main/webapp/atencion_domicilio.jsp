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
			  <h1 class="text-titles"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Visitas a Domicilio<small>Programacion visitas</small></h1>
			</div>
			<p class="lead">Permite elegir al tecnico para realizar la visita a domicilio necesaria</p>
			</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
				
					<ul class="nav nav-tabs" style="margin-bottom: 15px;">
					  	
					  	<li class="active"><a href="#list2" data-toggle="tab">Lista Visitas Tecnicas</a></li>
					  	<li ><a href="#new" data-toggle="tab">Nuevo</a></li>
					</ul>
		<!-- Content page
		<div class="tab-pane fade"  id="list2">
		<div class="row">
		<div class="table-responsive">
			
				<table  id="2" class="table table-striped text-center" style="width:100%">
			<thead>
			<tr>
				<th>ID</th>
				<th>DNI</th>
				<th>NOMBRE</th>
				<th>APELLIDO PAT</th>
				<th>APELLIDO MAT</th>
				<th>Telefono</th>
				<th>Direccion</th>
				<th>Tipo</th>
				<th>Marca</th>
				<th>Modelo</th>
				<th>N° Serie</th>
				<th>Descripcion fallo</th>
				<th>Programacion</th>
			</tr>
			</thead>
			<c:forEach items="${applicationScope.lstVisita_Tecnica}" var="usu">
			<tbody>
			<tr>
				<td><c:out value="${usu.id}"></c:out></td>
				<td><c:out value="${usu.dni}"></c:out></td>
				<td><c:out value="${usu.nombre}"></c:out></td>
				<td><c:out value="${usu.apell_pat}"></c:out></td>
				<td><c:out value="${usu.apell_mat}"></c:out></td>
				<td><c:out value="${usu.telefono}"></c:out></td>
				<td><c:out value="${usu.direccion}"></c:out></td>
				<td><c:out value="${usu.tipo_electrodomestico}"></c:out></td>
				<td><c:out value="${usu.marca}"></c:out></td>
				<td><c:out value="${usu.modelo}"></c:out></td>
				<td><c:out value="${usu.numero_serie}"></c:out></td>
				<td><c:out value="${usu.descripcion}"></c:out></td>
				<td>
				<a href="servletCliente/servletPostClienteEditar.jsp?id=${usu.dni}"  class=" btn-raised btn-xs" >
											<button>
											<i class="zmdi zmdi-edit"></i>
											</button>
											</a>
											</td>
				
			</tr>
			</tbody>
		</c:forEach>
		
		</table>
		-->
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade active in"  id="list2">		  		
				<div class="row">
					<div class="table-responsive">
						<table  id="visita" class="table table-striped text-center" style="width:100%">
						<thead>
				<tr>
				<th>ID</th>
				<th>DNI</th>
				<th>NOMBRES</th>

				<th>Telefono</th>
				<th>Direccion</th>
				<th>Tipo</th>
				<th>Marca</th>
				<th>Modelo</th>
				<th>N° Serie</th>
				<th>Descripcion fallo</th>
				<th>Fecha</th>
				<th>Hora</th>
				<th>Estado</th>
				<th>Programacion</th>
				</tr>
				</thead>
				
					<tbody>
											<%for (Visita_Tecnica v : lst4) {%>
					<tr>
											<td><%=v.getId()%></td>
											<td><%=v.getDni()%></td>
											<td><%=v.getNombre()%> <%=v.getApell_pat()%> <%=v.getApell_mat()%></td>								 
											<td><%=v.getTelefono()%></td>
											<td><%=v.getDireccion()%></td>
											<td><%=v.getTipo_electrodomestico()%></td>
											<td><%=v.getMarca()%></td>
											<td><%=v.getModelo()%></td>
											<td><%=v.getNumero_serie()%></td> 
											<td><%=v.getDescripcion()%></td> 
											<td><%=v.getDia()%></td> 
											<td><%=v.getHora()%></td> 
											<td><%=v.getEstado()%></td> 

										
											
											
				<td>
				<a href="servletVisita/servletPostAsignarTecnico.jsp?id=<%=v.getId()%>&nombres=<%=v.getNombre()%> <%=v.getApell_pat()%> <%=v.getApell_mat()%>
				&direccion=<%=v.getDireccion()%>&telefono=<%=v.getTelefono()%>"  
				class=" btn-raised btn-xs" >
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
								
					<div class="tab-pane fade" id="new">
							<div class="container-fluid">
								<div class="row">
									<div class="col-xs-12 col-md-10 col-md-offset-1">
									   <form action="<%=request.getContextPath() %>/ServletPostVisitaNuevo" method="post">
									   
										          <div class="form-group label-floating">
											  <label class="control-label">ID</label>
											  <%for (Visita_Tecnica EL : cod) {%>
											  <input class="form-control" type="text" name ="id_elec" value="EL_<%=EL.getCod_Visita()%>" > <% }%>
											</div>
										         
									   
									   	 	<div class="form-group">
										        <label class="control-label">Seleccionar Cliente</label>
										        <select class="form-control" name="dni">
										        <%for (Cliente v : lst2) {%>
										          <option value="<%=v.getDni()%>"><%=v.getNombre()%> <%=v.getApell_pat()%> <%=v.getApell_mat()%></option>
										          <% }%>
										        </select>
										    </div>
										    
											<div class="form-group label-floating">
											  <label class="control-label">Tipo Electrodomestico</label>
											  <input class="form-control" type="text" name ="tipo_electrodomestico" >
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Marca</label>
											  <input class="form-control" type="text" name ="marca">
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Modelo</label>
											  <input class="form-control" type="text" name ="modelo">
											</div>
											
											<div class="form-group label-floating">
											  <label class="control-label">Numero Serie</label>
											  <input class="form-control" type="text" name ="numero_serie">
											</div>

											<div class="form-group label-floating">
											  <label class="control-label">Descripcion Falla</label>
											  <input class="form-control" type="text" name ="descripcion">
											</div>
											
											<div class="form-group label-floating">
											  <label class="control-label">Fecha</label>
											  <input type="date" class="form-control" type="text" name ="dia">
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Hora</label>
											  <input type="time"class="form-control" type="text" name ="hora">
											</div>
											
											
										    <!-- Icono Guardar Visita Tecnico-->
										    <p class="text-center">
										    	<button name="Registrar"  class="btn btn-info btn-raised btn-sm"><i class="zmdi zmdi-floppy"></i> Registrar</button>
										    </p>
									    </form>
									</div>
								</div>
							</div>
						</div>			
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