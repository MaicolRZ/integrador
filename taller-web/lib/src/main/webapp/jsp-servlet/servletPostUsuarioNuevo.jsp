<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario Nuevo</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/ServletPostUsuarioNuevo" method="post">
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
	<td>Direccion: </td><td> <input type="text" name="direccion"> </td>
	</tr>
	<tr>
	<td>Años experiencia:</td><td> <input type="text" name="años"> </td>
	</tr>
	<tr>
	<td>Especialidad:</td><td> <input type="text" name="especialidad"> </td>
	</tr>
	<tr>
	<td>Hora ingreso:</td><td> <input type="text" name="hora_ing"> </td>
	</tr>
	<tr>
	<td>Hora_salida:</td><td> <input type="text" name="hora_sal"> </td>
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