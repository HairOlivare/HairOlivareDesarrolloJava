<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Departamento" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Departamentos</title>
</head>
<body>
<div>
	<nav>
		<a href="#">Departamentos</a>
	</nav>
</div>
<h1>Lista De Departamentos</h1>
<%! List<Departamento> listaDepartamento; %>
<%
	try{
		listaDepartamento=(List<Departamento>) request.getAttribute("departamentos");
		Iterator<Departamento> item=listaDepartamento.iterator();
%>
<div>
	<table class="table">
		<thead class="table-dark">
			<th>Id</th>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>Fecha creacion</th>
			<th>Hora creacion</th>
			<th>Fecha modificacion</th>
			<th>Hora modificacion</th>
		</thead>
		<tbody>
		<% while(item.hasNext()){
			Departamento departamento= item.next();%>
			<tr>
				<td><%= departamento.getId_Departamentos() %></td>
				<td><%= departamento.getDepartamento_codigo() %></td>
				<td><%= departamento.getDepartamento_nombre() %></td>
				<td><%= departamento.getFecha_crea_D() %></td>
				<td><%= departamento.getHora_crea_D() %></td>
				<td><%= departamento.getFecha_modifica_D() %></td>
				<td><%= departamento.getHora_modifica_D() %></td>
			</tr>
		</tbody>
		<%} %>
	</table>
</div>
<%}catch(Exception e){} %>

</body>
</html>