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

<form action="<%=request.getContextPath()%>/ServletPostClienteEditar" method="post">


<%int dni=Integer.parseInt(request.getParameter("id"));

DaoCliente dao= new DaoCliente();
Cliente p=(Cliente)dao.lista(dni); 

%>		

					
					<div class="row">
					<div class="table-responsive justifi-content-center">
					<table class="table table-striped text-center" >
					
							
											
											<tr>
											<td> DNI: </td><td> <input class="sinborde"  type="text" name="id" value="<%=dni%>"  readonly required> </td>
											</tr>
											
											<tr>
											<td> Nombre: </td><td> <input type="text" name="nombre" value="<%=p.getNombre()%>" required> </td>
											</tr>
										
											<tr>
											<td> Apellido Paterno: </td><td> <input type="text" name="apell_pat"  value="<%=p.getApell_pat()%>" required></td>
											</tr>
											<tr>
											<td> Apellido Materno: </td><td> <input type="text" name="apell_mat" value="<%=p.getApell_mat()%>" required></td>
											</tr>
											<tr>
											<td> Telefono: </td><td> <input type="text" name="telefono" value="<%=p.getTelefono()%>" required ></td>
											</tr>
											<tr>
											<td> Direccion: </td><td> <input type="text" name="direccion" value="<%=p.getDireccion()%>" required></td>
											</tr>
											<tr>
											<td> Genero: </td><td> <input type="text" name="genero" value="<%=p.getGenero()%>" required>
												 </td>
												 
											</tr>
											
									

	<tr>
	<td> <input type="submit" class="btn btn-success btn-raised btn-xs" value="Editar"><i class="zmdi zmdi-register" ></i> </td>
	<td><a href="../cliente.jsp" class="btn btn-danger btn-raised btn-xs"><i class="zmdi zmdi-delete"></i>Cancelar</a></td>
	</tr>
	

	</table>
</div>
</div>
</form>	
</body>
</html>