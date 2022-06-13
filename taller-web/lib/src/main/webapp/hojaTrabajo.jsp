<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="headerTecnico.jsp" />
<title>Hoja trabajo</title>

</head>
<body>


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
			  <h1 class="text-titles"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Hoja de Servicio<small></small></h1>
			</div>
			<p class="lead">Permite rellenar la hoja del servicio br</p>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<ul class="nav nav-tabs" style="margin-bottom: 15px;">
					  	<li class="active"><a href="#new" data-toggle="tab">Hoja de Servicio</a></li>
					  
					</ul>

					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="new">
							<div class="container-fluid">
								<div class="row">
									<div class="col-xs-12 col-md-10 col-md-offset-1">
									    
											  
											</div>
									    	<form method="post" action="<%=request.getContextPath() %>/ServletPostHojaTrabajo">
											<div class="form-group label-floating">
											<label class="control-label">DNI Tecnico</label>
											<input class="form-control" type="text" name="id_tecnico" required>
											<input class="btn btn-info btn-raised btn-sm" type="submit" value="Buscar">
											</div>
											</form>
									
											
											
										    
										    
										   
					  							<div class="row">
													<div class="table-responsive">
								
								<table id="tabla2" class="table table-striped text-center" style="width:100%">
									<thead>
										<tr>
											
											<th class="text-center">ID</th>
											<th class="text-center">DNI Persona</th>
											<th class="text-center">Nombres Completos</th>
											<th class="text-center">Tipo Electrodomestico</th>
											<th class="text-center">Marca</th>						
											<th class="text-center">Modelo</th>
											<th class="text-center">N° Serie</th>
											<th class="text-center">Descripcion</th>
											<th class="text-center">Accion</th>
											
											
											
										</tr>
									</thead>
									<tbody>
									
										 
											
											<c:forEach items="${lstServiciosTecnico}" var="e">
											<tr>
											<td><c:out value="${e.id_elec}"></c:out></td>
											<td><c:out value="${e.dniPersona}"></c:out></td>
											<td><c:out value="${e.nombresCompleto}"></c:out></td>
											<td><c:out value="${e.electrodomestico}"></c:out></td>
											<td><c:out value="${e.marca}"></c:out></td>
											<td><c:out value="${e.modelo}"></c:out></td>
											<td><c:out value="${e.numero_serie}"></c:out></td>
											<td><c:out value="${e.descripcion}"></c:out></td>
											
											
						
											<!-- Editar-->
											<td>
											
											<a href="servletHojaServicio/servletPostHojaTrabajo.jsp?id=${e.id_elec}&dni=${e.dniPersona}&elec=${e.electrodomestico}&marca=${e.marca}&modelo=${e.modelo}&nserie=${e.numero_serie}"  class=" btn-raised btn-xs" >
											<button>
											<i class="zmdi zmdi-edit"></i>
											</button>
											</a>
											</td>
											
											
											
											
											</tr>
											
											</c:forEach>
								  		
								  			
								  		
											
									
									
											</tbody>
								</table>
									
								</div>
								
							</div>
							</div>
										    
									  
									</div>
								</div>
							</div>
						</div>
						<!-- Lista de Tecnicos-->
						
						
						
					  	
					  		
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