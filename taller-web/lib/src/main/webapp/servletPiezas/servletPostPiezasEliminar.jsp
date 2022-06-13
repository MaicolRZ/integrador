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

<title>ELiminar Piezas</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/ServletPostPiezasEliminar" method="post">
<table>
	<tr>
	<td>ID:</td><td> <input type="text" name="id_piezas"> </td>
	</tr>
	<tr>
	<td> <input type="submit" value="Eliminar"> </td>
	</tr>
	</table>
</form>
</body>
</html>