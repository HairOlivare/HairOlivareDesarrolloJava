<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Editar Departamento</title>
</head>
<body>
<div class="container">
		<h1><c:out value="${titulo}"></c:out></h1>
	<div>
		<form action="../DepartamentoServletController?action=crear" method="post">
		<div>
		<span class="input-group-text" id="basic-addon1">Departamento Código</span>
  		<input type="number" name="codigo" class="form-control" placeholder="Ingrese codigo del departamento" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Departamento nombre</span>
  		<input type="text" name="nombre" class="form-control" placeholder="Ingrese el nombre del departamento" aria-describedby="basic-addon1">
		</div>
		<div>
		<input type="submit"  class="btn btn-dark" value="Enviar" /> <a class="btn btn-danger"  href="../DepartamentoServletController">Regresar</a>
		</div>
		</form>
	</div>
</div>
</body>
</html>