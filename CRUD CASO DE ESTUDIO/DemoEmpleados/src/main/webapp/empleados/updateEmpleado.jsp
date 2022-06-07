<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.EmpleadoImp" %>
<%@ page import="modelo.Empleado" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Editar Empleado</title>
</head>
<body>
	<div class="container">
		<h1>Editar Empleado</h1>
		<div>
		<% EmpleadoImp empleado= new EmpleadoImp(); 
		int Id_Empleado=Integer.parseInt(request.getParameter("id_Empleado"));
		Empleado emple=(Empleado)empleado.buscarPorId(Id_Empleado);
		%>
			<form action="EmpleadoServletController?action=actualizar" method="post">
				<div class="form-group">
					<label>Id</label>
					<input type="text" class="form-control" name="id" readonly="readonly"  value="<%= emple.getId_Empleado()%>" />
				</div>
				<div>
					<label>Tipo de Documento</label>
					<input type="text" class="form-control" name="tipo_documento" value="<%= emple.getDocumento_Tipo()%>" />
				</div>
				<div>
					<label>Número de documento</label>
					<input type="number" class="form-control" name="numero_documento" value="<%= emple.getDocumento_Numero()%>" />
				</div>
				<div>
					<label>Nombres</label>
					<input type="text" class="form-control" name="nombres" value="<%= emple.getNombres()%>" />
				</div>
				<div>
					<label>Apellidos</label>
					<input type="text" class="form-control" name="apellidos" value="<%= emple.getApellidos()%>"/>
				</div>
				<div>
					<label>Id Departamento</label>
					<input type="number" class="form-control" name="departamento_id" value="<%= emple.getDepartamento_Id()%>" />
				</div>
				<div>
					<label>Ciudad</label>
					<input type="text" class="form-control" name="ciudad" value="<%= emple.getCiudad()%>"/>
				</div>
				<div>
					<label>E-mail</label>
					<input type="text" class="form-control" name="correo" value="<%= emple.getE_mail()%>" />
				</div>
				<div>
					<label>Telefono</label>
					<input type="number" class="form-control" name="telefono" value="<%= emple.getTelefono()%>"/>
				</div>
				<div>
					<input type="submit" value="Guardar" class="btn btn-primary" /> <a class="btn btn-danger"  href="EmpleadoServletController">Regresar</a>
				</div>
			</form>
		</div>
	</div>

</body>
</html>