<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Editar Empleado</title>
</head>
<body>
	<div class="container">
		<h1><c:out value="${titulo}"></c:out></h1>
		<div>
		  <c:set var="emple" value="${empleado}" />
			<form action="EmpleadoServletController?action=actualizar" method="post">
				<div class="form-group">
					<label>Id</label>
					<input type="text" class="form-control" name="id" readonly="readonly"  value=<c:out value="${emple.id_Empleado}" /> /  />
				</div>
				<div>
					<label>Tipo de Documento</label>
					<input type="text" class="form-control" name="tipo_documento" value=<c:out value="${emple.documento_Tipo}" /> / />
				</div>
				<div>
					<label>Número de documento</label>
					<input type="number" class="form-control" name="numero_documento" value=<c:out value="${emple.documento_Numero}" /> / />
				</div>
				<div>
					<label>Nombres</label>
					<input type="text" class="form-control" name="nombres" value=<c:out value="${emple.nombres}" /> / />
				</div>
				<div>
					<label>Apellidos</label>
					<input type="text" class="form-control" name="apellidos" value=<c:out value="${emple.apellidos}" /> / />
				</div>
				<div>
					<label>Id Departamento</label>
					<input type="number" class="form-control" name="departamento_id" value=<c:out value="${emple.departamento_Id}" /> / />
				</div>
				<div>
					<label>Ciudad</label>
					<input type="text" class="form-control" name="ciudad" value=<c:out value="${emple.ciudad}" /> / />
				</div>
				<div>
					<label>E-mail</label>
					<input type="text" class="form-control" name="correo" value=<c:out value="${emple.e_mail}" /> / />
				</div>
				<div>
					<label>Telefono</label>
					<input type="number" class="form-control" name="telefono" value=<c:out value="${emple.telefono}" /> / />
				</div>
				<div>
					<input type="submit" value="Guardar" class="btn btn-primary" /> <a class="btn btn-danger"  href="EmpleadoServletController">Regresar</a>
				</div>
			</form>
		</div>
	</div>

</body>
</html>