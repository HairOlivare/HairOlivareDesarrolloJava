<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Departamentos</title>
</head>
<body>
<div class="container">
<div>
	<nav>
		<a href="EmpleadoServletController">Empleados</a>
	</nav>
</div>
<h1><c:out value="${titulo}"/></h1>


<form action="departamento/crearDepartamento.jsp">
<input type="submit" value="Agregar" class="btn btn-primary"/>
</form> 

<div>
	<table class="table">
		<thead class="table-dark">
			<th>Id</th>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>Fecha creacion</th>
			<th>Fecha modificacion</th>
			<th></th>
			<th></th>
		</thead>
		<tbody>
			<c:forEach var="departamento" items="${Departamentos}">
			<tr>
				<td><c:out value="${departamento.id_Departamentos}"/></td>
				<td><c:out value="${departamento.departamento_codigo}"/></td>
				<td><c:out value="${departamento.departamento_nombre}"/></td>
				<td><c:out value="${departamento.fecha_crea_D}"/></td>
				<td><c:out value="${departamento.fecha_modifica_D}"/></td>
				<td><a class="btn btn-success" href="DepartamentoServletController?action=edit&id_Departamentos=<c:out value="${departamento.id_Departamentos}"></c:out>">Editar</a></td>
				<td><a class="btn btn-danger" href="DepartamentoServletController?action=eliminar&id_Departamentos=<c:out value="${departamento.id_Departamentos}"></c:out>">Eliminar</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</body>
</html>