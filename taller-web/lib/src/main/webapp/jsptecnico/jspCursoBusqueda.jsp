<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Busqueda de Cursos</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/ServletPostCursoBusqueda" method="post">
	Nombre del curso:
	<input type="text" name="cadenaBusqueda"/>
	<input type="submit" value="Buscar" />
</form>
<br/>

<table border="1">
	<tr>
		<td>ID</td><td>NOMBRE</td><td>CREDITOS</td><td>HORAS</td>
	</tr>
	<c:forEach items="${lstResultadosCursos}" var="curso">
		<tr>
			<td><c:out value="${curso.id}"></c:out></td>
			<td><c:out value="${curso.nombre}"></c:out></td>
			<td><c:out value="${curso.apell_pat}"></c:out></td>
			<td><c:out value="${curso.apell_mat}"></c:out></td>

			

			<td>

			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>