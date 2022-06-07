<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Crear empleado</title>
</head>
<body>
<div class="container">
		<form action="../EmpleadoServletController?action=Crear" method="post">
		<div>
		<span class="input-group-text" id="basic-addon1">Tipo Documento</span>
  		<input type="text" name="tipo_documento" class="form-control" placeholder="Ingrese el tipo de documento" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Número de Documento</span>
  		<input type="number" name="numero_documento" class="form-control" placeholder="Ingrese el documento" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Nombres</span>
  		<input type="text" name="nombres" class="form-control" placeholder="Ingrese los nombres" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Apellidos</span>
  		<input type="text" name="apellidos" class="form-control" placeholder="Ingrese los apellidos" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Id Departamento</span>
  		<input type="number" name="id_departamento" class="form-control" placeholder="Ingrese el Id del Departamento" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Ciudad</span>
  		<input type="text" name="ciudad" class="form-control" placeholder="Ingrese la ciudad" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Email</span>
  		<input type="text" name="email" class="form-control" placeholder="Ingrese el email" aria-describedby="basic-addon1">
		</div>
		<div>
		<span class="input-group-text" id="basic-addon1">Telefóno</span>
  		<input type="text" name="telefono" class="form-control" placeholder="Ingrese el telefono" aria-describedby="basic-addon1">
		</div>
		<div>
		<input type="submit"  class="btn btn-dark" value="Enviar" />
		</div>
		</form>
</div>
</body>
</html>