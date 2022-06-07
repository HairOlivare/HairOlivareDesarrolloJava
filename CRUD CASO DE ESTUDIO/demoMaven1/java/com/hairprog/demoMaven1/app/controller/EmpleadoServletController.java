package com.hairprog.demoMaven1.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hairprog.demoMaven1.app.facade.Imp.EmpleadoImp;
import com.hairprog.demoMaven1.app.model.Empleado;

/**
 * Servlet implementation class EmpleadoServletController
 */
public class EmpleadoServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Empleado> listaEmpleado = new ArrayList<>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmpleadoServletController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmpleadoImp empleadoImp = new EmpleadoImp();
		if (request.getParameter("action")!= null) {
			String action = request.getParameter("action");
			switch (action) {
			case "crear":
					System.out.println("@Crear");
					Empleado empleadoCrea = new Empleado();
					empleadoCrea.setId_Empleado(0);
					String documento_tipo = request.getParameter("tipo_documento");
					long numero_documento = Long.parseLong(request.getParameter("numero_documento"));
					String nombres = request.getParameter("nombres");
					String apellidos = request.getParameter("apellidos");
					int id_departamento = Integer.parseInt(request.getParameter("id_departamento"));
					String ciudad = request.getParameter("ciudad");
					String email = request.getParameter("email");
					long telefono = Long.parseLong(request.getParameter("telefono"));
					empleadoCrea.setId_Empleado(0);
					empleadoCrea.setDocumento_Tipo(documento_tipo);
					empleadoCrea.setDocumento_Numero(numero_documento);
					empleadoCrea.setNombres(nombres);
					empleadoCrea.setApellidos(apellidos);
					empleadoCrea.setDepartamento_Id(id_departamento);
					empleadoCrea.setCiudad(ciudad);
					empleadoCrea.setE_mail(email);
					empleadoCrea.setTelefono(telefono);
					empleadoImp.crearEmpleado(empleadoCrea);
					this.listaEmpleado = empleadoImp.buscarTodos();
					request.setAttribute("titulo", "Lista Empleados");
					request.setAttribute("Empleados", this.listaEmpleado);
					request.getRequestDispatcher("empleado/listEmpleados.jsp").forward(request, response);
					break;
			
			  case "edit": 
				  System.out.println("@Editar"); 
				  int Id_Empleado=Integer.parseInt(request.getParameter("id_Empleado"));
				  Empleado empleado=empleadoImp.buscarPorId(Id_Empleado);
				  request.setAttribute("empleado", empleado); 
				  request.setAttribute("titulo", "Editar Empleado");
				  request.getRequestDispatcher("empleado/updateEmpleado.jsp").forward(request,response); 
				  break;
			  
			
			  case "actualizar": 
				  System.out.println("@actualizar"); 
				  Empleado empleadoAc=new Empleado();
			  
				  empleadoAc.setId_Empleado(Integer.parseInt(request.getParameter("id")));
				  empleadoAc.setDocumento_Tipo(request.getParameter("tipo_documento"));
				  empleadoAc.setDocumento_Numero(Long.parseLong(request.getParameter("numero_documento")));
				  empleadoAc.setNombres(request.getParameter("nombres"));
				  empleadoAc.setApellidos(request.getParameter("apellidos"));
				  empleadoAc.setDepartamento_Id(Integer.parseInt(request.getParameter("departamento_id")));
				  empleadoAc.setCiudad(request.getParameter("ciudad"));
				  empleadoAc.setE_mail(request.getParameter("correo"));
				  empleadoAc.setTelefono(Long.parseLong(request.getParameter("telefono")));
				  empleadoImp.actualizarEmpleado(empleadoAc);
				  this.listaEmpleado=empleadoImp.buscarTodos();
				  request.setAttribute("titulo","Lista Empleados");
				  request.setAttribute("Empleados", this.listaEmpleado);
				  request.getRequestDispatcher("empleado/listEmpleados.jsp").forward(request,response); 
				  break;
			 
			  
			  case "eliminar": 
				  System.out.println("@Eliminar"); 
				  int Id=Integer.parseInt(request.getParameter("id_Empleado"));
				  empleadoImp.eliminarEmpleado(Id);
				  this.listaEmpleado=empleadoImp.buscarTodos(); 
				  request.setAttribute("titulo", "Lista Empleados"); 
				  request.setAttribute("Empleados", this.listaEmpleado);
				  request.getRequestDispatcher("empleado/listEmpleados.jsp").forward(request, response); 
				  break;
			 

			default:
				this.listaEmpleado = empleadoImp.buscarTodos();
				request.setAttribute("titulo", "Lista Departamentos");
				request.setAttribute("Empleados", this.listaEmpleado);
				request.getRequestDispatcher("empleado/listEmpleados.jsp").forward(request, response);
				break;
			}

		} else {
			System.out.println("entro a cargar lista de empleados");
			this.listaEmpleado = empleadoImp.buscarTodos();
			request.setAttribute("titulo", "Lista de los Empleados");
			request.setAttribute("Empleados", this.listaEmpleado);
			request.getRequestDispatcher("empleado/listEmpleados.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
