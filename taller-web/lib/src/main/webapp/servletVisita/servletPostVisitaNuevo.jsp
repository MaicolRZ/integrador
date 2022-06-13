<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="<%=request.getContextPath() %>/ServletPostVisitaNuevo" method="post">
	<table>
	<tr>
	<td>ID:</td><td> <input type="text" name="id_elec"> </td>
	</tr>
	<tr>
	<td>Dni: </td><td> <input type="text" name="dni"> </td>
	</tr>
	<tr>
	<td>Tipo Electrodomestico: </td><td> <input type="text" name="tipo_electrodomestico"> </td>
	</tr>
	<tr>
	<td>Marca: </td><td> <input type="text" name="marca"> </td>
	</tr>
	<tr>
	<td>Modelo: </td><td> <input type="text" name="modelo"> </td>
	</tr>
	<tr>
	<td>Numero Serie:  </td><td> <input type="text" name="numero_serie"> </td>
	</tr>
	<tr>
	<td>Descripcion Falla: </td><td> <input type="text" name="descripcion"> </td>
	</tr>
	<tr>
	<tr>
	<td>Dia: </td><td> <input type="text" name="dia"> </td>
	</tr>
	<tr>
	<tr>
	<td>Hora: </td><td> <input type="text" name="hora"> </td>
	</tr>
	<tr>
	<td></td><td> <input type="submit" value="Registrar"> </td>
	</tr>
	</table>
</form>	
</body>
</html>