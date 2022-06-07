<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Empleados</title>
</head>
<body>
<div class="container">
<div>
	<nav>
		<a href="DepartamentoServletController">Departamentos</a>
	</nav>
</div>
<h1><c:out value="${titulo}"/></h1>


<form action="empleado/crearEmpleado.jsp">
<input type="submit" value="Agregar" class="btn btn-primary"/>
</form> 

<div>
	<table class="table">
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
			<c:forEach var="empleado" items="${Empleados}">
			<tr>
				<td><c:out value="${empleado.id_Empleado}"/></td>
				<td><c:out value="${empleado.documento_Tipo}"/></td>
				<td><c:out value="${empleado.documento_Numero}"/></td>
				<td><c:out value="${empleado.nombres}"/></td>
				<td><c:out value="${empleado.apellidos}"/></td>
				<td><c:out value="${empleado.departamento_Id}"/></td>
				<td><c:out value="${empleado.ciudad}"/></td>
				<td><c:out value="${empleado.e_mail}"/></td>
				<td><c:out value="${empleado.telefono}"/></td>
				<td><c:out value="${empleado.fecha_crea_E}"/></td>
				<td><c:out value="${empleado.fecha_modifica_E}"/></td>
				<td><a class="btn btn-success" href="EmpleadoServletController?action=edit&id_Empleado=<c:out value="${empleado.id_Empleado}"></c:out>">Editar</a></td>
				<td><a class="btn btn-danger" href="EmpleadoServletController?action=eliminar&id_Empleado=<c:out value="${empleado.id_Empleado}"></c:out>">Eliminar</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</body>
</html>