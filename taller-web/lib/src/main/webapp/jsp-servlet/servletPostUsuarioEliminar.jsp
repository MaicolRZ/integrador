<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<title>Eliminar Nuevo</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/ServletPostUsuarioEliminar" method="post">
<%
int dni=Integer.parseInt(request.getParameter("id")) ;


%>


				<div class="datatable-container">	
					<table class="table table-hover text-center" >
				
											
											
											<tr>
											<td>DNI:</td><td> <input class="sinborde" type="text" name="id" readonly value=<%=dni%> > </td>
											</tr>


											<tr>
											<td>Nombre:</td><td> <input class="sinborde" type="text" readonly value="" > </td>
											</tr>
											<tr>
											<td>Apellidos Paterno:</td><td> <input class="sinborde" type="text" readonly value=""> </td>
											</tr>
											<tr>
											<td>Apellido Materno:</td><td> <input class="sinborde" type="text" readonly value=""> </td>
											</tr>
					
	<tr>
	<td> <input type="submit" value="Eliminar" class="btn btn-danger btn-raised btn-xs" > </td>
	<td><a href="tecnico.jsp" class="btn btn-info btn-raised btn-xs"><i class="zmdi zmdi-delete"></i>Cancelar</a></td>
	</tr>
	

	</table>
	</div>	
</form>	
</body>
</html>