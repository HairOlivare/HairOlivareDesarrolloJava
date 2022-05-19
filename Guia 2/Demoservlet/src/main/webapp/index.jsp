<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="modelo.Persona" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio MAYO 12</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action="ServletPersonaController" method="get">
		<div>
		<span class="input-group-text" id="basic-addon1">Nombres</span>
  		<input type="text" name="nombre" class="form-control" placeholder="Ingrese los nombres" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Apellidos</span>
  		<input type="text" name="apellido" class="form-control" placeholder="Ingrese los apellidos" aria-describedby="basic-addon1">
		</div>
		<div>
		<input type="submit"  class="btn btn-dark" value="Enviar" />
		</div>
		</form>
	</div>
	<br><br>
	<div class="container">
	<%! List<Persona> listaPersona;%>
	<% 
	try{
	listaPersona= (List<Persona>) request.getAttribute("lista");
	Iterator<Persona> item= listaPersona.iterator();
	%>
	<table class="table table-striped table-hover">
		<thead class="table-dark">
			<th>Nombre </th>
			<th>Apellido </th>
			<th>Acciones </th>
		</thead>
		<tbody>
		<% while(item.hasNext()) {
			Persona persona=item.next();
		%>
			<tr>
				<td><%= persona.getNombre() %></td>
				<td><%= persona.getApellido() %></td>
				<td><input class="btn btn-success" type="button" value="Editar"> <input type="button" value="Eliminar" class="btn btn-danger"></td>
			</tr>
			<%} 
	}catch (Exception e){}
			%>
		</tbody>
			
	
	</table>
	</div>
	
</body>
</html>