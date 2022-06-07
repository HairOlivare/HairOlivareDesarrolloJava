<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.DepartamentoImp" %>
<%@ page import="modelo.Departamento" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Editar Departamento</title>
</head>
<body>
	<div class="container">
		<h1>Editar Departamentos</h1>
		<div>
		<% DepartamentoImp departamento= new DepartamentoImp(); 
		int Id_Departamentos=Integer.parseInt(request.getParameter("id_Departamentos"));
		Departamento dept=(Departamento)departamento.buscarPorId(Id_Departamentos);
		%>
			<form action="DepartamentoServletController?action=actualizar" method="post">
				<div class="form-group">
					<label>Id</label>
					<input type="text" class="form-control" name="id" readonly="readonly"  value="<%= dept.getId_Departamentos() %>" />
				</div>
				<div>
					<label>Codigo</label>
					<input type="text" class="form-control" name="codigo" value="<%= dept.getDepartamento_codigo() %>" />
				</div>
				<div>
					<label>Nombre</label>
					<input type="text" class="form-control" name="nombre" value="<%= dept.getDepartamento_nombre() %>" />
				</div>
				<div>
					<input type="submit" value="Guardar" class="btn btn-primary" /> <a class="btn btn-danger"  href="DepartamentoServletController?action=regresar">Regresar</a>
				</div>
			</form>
		</div>
	</div>

</body>
</html>