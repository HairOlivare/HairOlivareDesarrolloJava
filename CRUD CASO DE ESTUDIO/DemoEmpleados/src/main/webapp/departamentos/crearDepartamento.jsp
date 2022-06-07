<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Crear Departamento</title>
</head>
<body>
<div class="container">
		<form action="../DepartamentoServletController?action=Crear" method="post">
		<div>
		<span class="input-group-text" id="basic-addon1">Departamento Código</span>
  		<input type="number" name="codigo" class="form-control" placeholder="Ingrese codigo del departamento" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Departamento nombre</span>
  		<input type="text" name="nombre" class="form-control" placeholder="Ingrese el nombre del departamento" aria-describedby="basic-addon1">
		</div>
		<div>
		<input type="submit"  class="btn btn-dark" value="Enviar" />
		</div>
		</form>
</div>
</body>
</html>