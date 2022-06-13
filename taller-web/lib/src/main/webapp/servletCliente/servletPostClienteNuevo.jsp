<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="<%=request.getContextPath() %>/ServletPostClienteNuevo" method="post">
	<table>
	<tr>
	<td>ID:</td><td> <input type="text" name="id"> </td>
	</tr>
	<tr>
	<td>Nombre: </td><td> <input type="text" name="nombre"> </td>
	</tr>
	<tr>
	<td>Apellido Paterno: </td><td> <input type="text" name="apell_pat"> </td>
	</tr>
	<tr>
	<td>Apellido Materno: </td><td> <input type="text" name="apell_mat"> </td>
	</tr>
	<tr>
	<td>Telefono: </td><td> <input type="text" name="telefono"> </td>
	</tr>
	<tr>
	<td>Direccion: </td><td> <input type="text" name="direccion"> </td>
	</tr>
	<tr>
	<td>Genero:</td><td> <input type="text" name="genero"> </td>
	</tr>
	<tr>
	<td></td><td> <input type="submit" value="Registrar"> </td>
	</tr>
	</table>
</form>	
</body>
</html>