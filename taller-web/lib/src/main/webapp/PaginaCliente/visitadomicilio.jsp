<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    

<%@ page import="pe.edu.universidad.dao.*"%>
<%@ page import="pe.edu.universidad.entidades.*"%>
<%@ page import="pe.edu.universidad.servlet.*"%>
<%@ page import="pe.edu.universidad.servletCliente.*"%>
<%@ page import="pe.edu.universidad.web.*"%>
	<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./TallerUTP.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<%  


DaoCliente dao = new DaoCliente();
List<Visita_Tecnica> lst4 = dao.Visita_Tecnica();
List<Visita_Tecnica> cod = dao.Cod_VisitaTecnica();
List<Cliente> lst2 = dao.consultarCliente();
Cliente lst=(Cliente)dao.lista(29531201); 


%>



<div class="container-card">
	
<div class="card">
								<div class="row">
									<div class="col-xs-12 col-md-10 col-md-offset-1">
									   <form action="<%=request.getContextPath() %>/ServletPostVisitaCliente" method="post">
									   
										          <div class="form-group label-floating">
											  <label class="control-label">ID</label>
											  
											  <input class="form-control" type="text" name ="id_elec" value="EL_" >
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
					

			
</body>
</html>