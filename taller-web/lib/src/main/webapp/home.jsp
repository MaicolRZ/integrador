<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
   <link rel="stylesheet" href="css/main.css">
	<meta charset="ISO-8859-1">
    <title>DataTables</title>
   <%@ include file="header.jsp" %>
      
      
      <!--Full Calendar -->
      <link rel="stylesheet" type="text/css" href="css/fullcalendar.min.css">
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
 
<body>
<%@ page import="pe.edu.universidad.dao.*"%>
<%@ page import="pe.edu.universidad.entidades.*"%>
<%@ page import="pe.edu.universidad.servlet.*"%>
	<%@ page import="java.util.List"%>
<%
DaoUsuario dao = new DaoUsuario();
List<Usuario> lst = dao.consultarUsuarios();
int dni=29531201;
DaoCliente dao2= new DaoCliente();
Cliente p=(Cliente)dao2.lista(dni); 
%>
<!-- Content page-->
	<section class="full-box dashboard-contentPage">
		<!-- NavBar -->
		<nav class="full-box dashboard-Navbar">
			<ul class="full-box list-unstyled text-right">
				<li class="pull-left">
					<a href="#!" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a>
				</li>
				<li>
					<a href="#!" class="btn-Notifications-area">
						<i class="zmdi zmdi-notifications-none"></i>
						<span class="badge">7</span>
					</a>
				</li>
				<li>
					<a href="#!" class="btn-search">
						<i class="zmdi zmdi-search"></i>
					</a>
				</li>
				<li>
					<a href="#!" class="btn-modal-help">
						<i class="zmdi zmdi-help-outline"></i>
					</a>
				</li>
			</ul>
		</nav>
<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Usuarios<small>Tecnicos</small></h1>
			</div>
			<p class="lead">Permite Registrar nuevo tecnico y tambien ver la lista de registros para poder editar o eliminar</p>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<ul class="nav nav-tabs" style="margin-bottom: 15px;">
					  	<li class="active"><a href="#new" data-toggle="tab">Nuevo</a></li>
					  	<li><a href="#list2" data-toggle="tab">Lista</a></li>
					</ul>

			<div class="container">
		<div class="row">
			<div class="col-md-8 offset-2">
				<table  id="ejemplo" class="table table.bordered table-hover" border="1">
			<thead>
			<tr>
				<th>ID</th>
				<th>NOMBRE</th>
				<th>APELLIDO PAT</th>
				<th>APELLIDO MAT</th>
				<th>Direccion</th>
			</tr>
			</thead>
			<c:forEach items="${applicationScope.lstUsuarios}" var="usu">
			<tbody>
			<tr>
				<td><c:out value="${usu.id}"></c:out></td>
				<td><c:out value="${usu.nombre}"></c:out></td>
				<td><c:out value="${usu.apell_pat}"></c:out></td>
				<td><c:out value="${usu.apell_mat}"></c:out></td>
				<td><c:out value="${usu.direccion}"></c:out></td>
				
			</tr>
			</tbody>
		</c:forEach>
		<c:forEach items="${lstServiciosTecnico}" var="e">
											
											<td><c:out value="${e.id_elec}"></c:out></td>
											
											
						
											<!-- Editar-->
											<td>
											
											<a href=""  class=" btn-raised btn-xs" >
											<button>
											<i class="zmdi zmdi-edit"></i>
											</button>
											</a>
											</td>
											</c:forEach>
		</table>
		<form action="<%=request.getContextPath() %>/Prueba" method="post">
		<div class="form-group label-floating">
											  <label class="control-label">DNI</label>
											  <input class="form-control" type="text" value="<%=dni%>"name ="nombre" readonly>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Nombre Cliente</label>
											  <input class="form-control" type="text" name ="nombre" value="<%=p.getNombre()%>" readonly>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Apellidos Cliente</label>
											  <input class="form-control" type="text" name ="nombre"value="<%=p.getApell_pat()%> <%=p.getApell_mat()%>" required>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Modelo</label>
											  <input class="form-control" type="text" name ="nombre" required>
											</div>
											<div class="form-group label-floating">
											  <label class="control-label">Nombre</label>
											  <input class="form-control" type="text" name ="nombre" required>
											</div>
		<div class="form-group">
		<label class="control-label">Tecnico</label>
		<select class="form-control" name="tecnico_id">
		<c:forEach items="${applicationScope.lstUsuarios}" var="usu">
		<option value="${usu.id}">${usu.nombre} ${usu.apell_pat} ${usu.apell_mat}</option>

		</c:forEach>
		</select>
		
		</div>
		<p class="text-center">
										    	<button name="Registrar"  class="btn btn-info btn-raised btn-sm"><i class="zmdi zmdi-floppy"></i> Registrar</button>
		</p>
		</form>
		
		
</div>
</div>
</div>
</div>
</div>
</div>
      
    <!-- jQuery, Popper.js, Bootstrap JS 
    <script src="assets/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
      
    <!-- datatables JS

     
    <script type="text/javascript" src="main2.js"></script>  
     
    <div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles">System <small>Tiles</small></h1>
			</div>
		</div>
		<div class="full-box text-center" style="padding: 30px 10px;">
			<article class="full-box tile">
				<div class="full-box tile-title text-center text-titles text-uppercase">
					Administrador
				</div>
				<div class="full-box tile-icon text-center">
					<i class="zmdi zmdi-account"></i>
				</div>
				<div class="full-box tile-number text-titles">
					<p class="full-box">7</p>
					<small>Register</small>
				</div>
			</article>
			<article class="full-box tile">
				<div class="full-box tile-title text-center text-titles text-uppercase">
					Teacher
				</div>
				<div class="full-box tile-icon text-center">
					<i class="zmdi zmdi-male-alt"></i>
				</div>
				<div class="full-box tile-number text-titles">
					<p class="full-box">10</p>
					<small>Register</small>
				</div>
			</article>
			<article class="full-box tile">
				<div class="full-box tile-title text-center text-titles text-uppercase">
					Student
				</div>
				<div class="full-box tile-icon text-center">
					<i class="zmdi zmdi-face"></i>
				</div>
				<div class="full-box tile-number text-titles">
					<p class="full-box">70</p>
					<small>Register</small>
				</div>
			</article>
			<article class="full-box tile">
				<div class="full-box tile-title text-center text-titles text-uppercase">
					Representative
				</div>
				<div class="full-box tile-icon text-center">
					<i class="zmdi zmdi-male-female"></i>
				</div>
				<div class="full-box tile-number text-titles">
					<p class="full-box">70</p>
					<small>Register</small>
				</div>
			</article>
		</div>
		
<!--  	CALENDARIO-->
<div class="row">
  <div class="col-md-12 mb-3">
  <div class="page-header">
  <h3 class="text-center" id="title">Calendario Visitas</h3>
  </div>
</div>
</div>
<div class="container">
<div class="page-header">
<div id="calendar"  ></div>
</div>
</div>
</section>
</body>
	
<script src ="jsCal/jquery-3.0.0.min.js"> </script>
<script src="jsCal/popper.min.js"></script>
<script src="jsCal/bootstrap.min.js"></script>

<script type="text/javascript" src="jsCal/moment.min.js"></script>	
<script type="text/javascript" src="jsCal/fullcalendar.min.js"></script>
<script src='locales/es.js'></script>

<script type="text/javascript">

$(document).ready(function() {
  $("#calendar").fullCalendar({
    header: {
      left: "prev,next today",
      center: "title",
      right: "month,agendaWeek,agendaDay"
    },

    locale: 'es',

    defaultView: "month",
    navLinks: true, 
    editable: true,
    eventLimit: true, 
    selectable: true,
    selectHelper: false,

    select: function(start, end){
        $("#exampleModal").modal();
        $("input[name=fecha_inicio]").val(start.format('DD-MM-YYYY'));
         
        var valorFechaFin = end.format("DD-MM-YYYY");
        var F_final = moment(valorFechaFin, "DD-MM-YYYY").subtract(1, 'days').format('DD-MM-YYYY'); //Le resto 1 dia
        $('input[name=fecha_fin').val(F_final);  

      },
      
      
      eventRender: function(event, element) {
    	    element
    	      .find(".fc-content")
    	      .prepend("<span id='btnCerrar'; class='closeon material-icons'>&#xe5cd;</span>");
    	    
    	    //Eliminar evento
    	    element.find(".closeon").on("click", function() {

    	  var pregunta = confirm("Deseas Borrar este Evento?");   
    	  if (pregunta) {

    	    $("#calendar").fullCalendar("removeEvents", event._id);

    	     $.ajax({
    	            type: "POST",
    	            url: 'deleteEvento.php',
    	            data: {id:event._id},
    	            success: function(datos)
    	            {
    	              $(".alert-danger").show();

    	              setTimeout(function () {
    	                $(".alert-danger").slideUp(500);
    	              }, 3000); 

    	            }
    	        });
    	      }
    	    });
    	  },
    	//Moviendo Evento Drag - Drop
    	  eventDrop: function (event, delta) {
    	    var idEvento = event._id;
    	    var start = (event.start.format('DD-MM-YYYY'));
    	    var end = (event.end.format("DD-MM-YYYY"));

    	      $.ajax({
    	          url: 'drag_drop_evento.php',
    	          data: 'start=' + start + '&end=' + end + '&idEvento=' + idEvento,
    	          type: "POST",
    	          success: function (response) {
    	           // $("#respuesta").html(response);
    	          }
    	      });
    	  },
    eventClick:function(event){
        var idEvento = event._id;
        $('input[name=idEvento').val(idEvento);
        $('input[name=evento').val(event.title);
        $('input[name=fecha_inicio').val(event.start.format('DD-MM-YYYY'));
        $('input[name=fecha_fin').val(event.end.format("DD-MM-YYYY"));

        $("#modalUpdateEvento").modal();
      }

  });




});

</script>
</body>
</html>