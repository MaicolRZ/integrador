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

<form action="<%=request.getContextPath()%>/ServletPostPiezasEditar" method="post">


<%String id=request.getParameter("id");

DaoPiezas dao= new DaoPiezas();
Piezas p=(Piezas)dao.lista(id); 

%>		

					
					<div class="datatable-container">	
					<div class="table-responsive">
					<table class="table table-hover text-center" >
					

											
											<tr>
											<td> ID_Pieza: </td><td> <input class="sinborde"  type="text" name="id_pieza" value="<%=id%>"  readonly > </td>
											</tr>
											
											<tr>
											<td> Nombre Pieza: </td><td> <input type="text" name="nombre" value="<%=p.getPiezas()%>" required></td>
											</tr>
										
											<tr>
											<td> Categoria: </td><td> <input type="text" name="id_categoria"  value="<%=p.getCategoria()%>" required></td>
											</tr>
											<tr>
											<td> Precio: </td><td> <input type="number" name="precio" value="<%=p.getPrecio()%>" required></td>
											</tr>
											<tr>
											<td> Stock: </td><td> <input type="number" name="stock" value="<%=p.getStock()%>" required></td>
											</tr>
											
											
										

	<tr>
	<td> <input type="submit" class="btn btn-success btn-raised btn-xs" value="Editar"><i class="zmdi zmdi-register" ></i> </td>
	<td><a href="../piezas.jsp" class="btn btn-danger btn-raised btn-xs"><i class="zmdi zmdi-delete"></i>Cancelar</a></td>
	</tr>
	

	</table>
</div>
</div>
</form>	
</body>
</html>