<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<%@ page import="pe.edu.universidad.dao.*"%>
<%@ page import="pe.edu.universidad.entidades.*"%>
<%@ page import="pe.edu.universidad.servlet.*"%>
	<%@ page import="java.util.List"%>


<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/estilos.css">

<meta charset="ISO-8859-1">

<title>Editar Nuevo</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/ServletPostAsignarTecnico" method="post">


<%String id=request.getParameter("id");
String nombres=request.getParameter("nombres");
String telefono=request.getParameter("telefono");

String direccion=request.getParameter("direccion");

%>		

					
					<div class="datatable-container">	
					<div class="table-responsive">
					<table class="table table-hover text-center" >
					

											
											<tr>
											<td> ID_Electrodomestico: </td><td> <input class="sinborde"  type="text" name="id_elec" value="<%=id%>"  readonly  required> </td>
											</tr>
											
											<tr>
											<td> Nombres Cliente: </td><td> <input type="text" name="nombre" value="<%=nombres%>"readonly required> </td>
											</tr>
										
											<tr>
											<td> Direccion: </td><td> <input type="text" name="id_categoria"  value="<%=direccion%>" readonly required></td>
											</tr>
											<tr>
											<td> Precio: </td><td> <input type="text" name="precio" value="<%=telefono%>" readonly required></td>
											</tr>
											<tr>
											<td>Tecnico:</td>
											<td>
											<label></label>
												<select name="tecnico_id" required>
											<c:forEach items="${applicationScope.lstUsuarios}" var="tec">
											<option value="${tec.id}">${tec.nombre} ${tec.apell_pat} ${tec.apell_mat}</option>

											</c:forEach>
											</select>
											
											
											</td>
											</tr>
											
											
										

	<tr>
	<td> <input type="submit" class="btn btn-success btn-raised btn-xs" value="Editar"><i class="zmdi zmdi-register" ></i> </td>
	<td><a href="../atencion_domicilio.jsp" class="btn btn-danger btn-raised btn-xs"><i class="zmdi zmdi-delete"></i>Cancelar</a></td>
	</tr>
	

	</table>
</div>
</div>
</form>	
</body>
</html>