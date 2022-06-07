<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Empleado" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Empleados</title>
</head>
<body>
<div class="container" >
<div>
	<nav>
		<a href="DepartamentoServletController">Departamentos</a>
	</nav>
</div>
<h1>Lista De Empleados</h1>
<%! List<Empleado> listaEmpleado; %>
<%
	try{
		listaEmpleado=(List<Empleado>) request.getAttribute("empleados");
		Iterator<Empleado> item=listaEmpleado.iterator();
%>
<form action="empleados/crearEmpleado.jsp">
<input type="submit" value="Agregar" class="btn btn-primary"/>
</form> 

<div>
	<table class="table table-striped table-hover">
		<thead class="table-dark">
			<th>Id_Empleado</th>
			<th>Tipo Documento</th>
			<th>Número documento</th>
			<th>Nombres</th>
			<th>Apellidos</th>
			<th>ID departamento</th>
			<th>Ciudad</th>
			<th>Email</th>
			<th>Telefono</th>
			<th>Fecha creación</th>
			<th>Fecha modificación</th>
			<th></th>
			<th></th>
		</thead>
		<tbody>
		<% while(item.hasNext()){
			Empleado empleado= item.next();%>
			<tr>
				<td><%= empleado.getId_Empleado() %></td>
				<td><%= empleado.getDocumento_Tipo() %></td>
				<td><%= empleado.getDocumento_Numero() %></td>
				<td><%= empleado.getNombres() %></td>
				<td><%= empleado.getApellidos() %></td>
				<td><%= empleado.getDepartamento_Id() %></td>
				<td><%= empleado.getCiudad() %></td>
				<td><%= empleado.getE_mail() %></td>
				<td><%= empleado.getTelefono() %></td>
				<td><%= empleado.getFecha_crea_E() %></td>
				<td><%= empleado.getFecha_modifica_E() %></td>
				<td><a class="btn btn-success" href="EmpleadoServletController?action=edit&id_Empleado=<%= empleado.getId_Empleado() %>">Editar</a></td>
				<td><a class="btn btn-danger" href="EmpleadoServletController?action=eliminar&id_Empleado=<%= empleado.getId_Empleado() %>">Eliminar</a></td>
			</tr>
		</tbody>
		<%} %>
	</table>
</div>
<%}catch(Exception e){} %>
</div>
</body>
</html>