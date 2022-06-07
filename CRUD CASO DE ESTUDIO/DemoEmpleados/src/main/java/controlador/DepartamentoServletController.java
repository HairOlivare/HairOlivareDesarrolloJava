package controlador;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Departamento;
import negocio.DepartamentoImp;

/**
 * Servlet implementation class DepartamentoServletController
 */
@WebServlet("/DepartamentoServletController")
public class DepartamentoServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Departamento> listaDepartamento=new ArrayList<>();       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepartamentoServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DepartamentoImp departamentoImp = new DepartamentoImp();	
		if (request.getParameter("action")!=null) {
			String action=request.getParameter("action");
			switch (action) {
			case "edit":
				System.out.println("@Editar");
				int Id_Departamentos=Integer.parseInt(request.getParameter("id_Departamentos"));
				Departamento departamento=departamentoImp.buscarPorId(Id_Departamentos);
				request.setAttribute("departamento", departamento);
				request.getRequestDispatcher("departamentos/updateDepartamento.jsp").forward(request, response);
				break;
				
			case "eliminar":
				System.out.println("@Eliminar");
				int Id_Departamento=Integer.parseInt(request.getParameter("id_Departamentos"));
				departamentoImp.eliminarDepartamento(Id_Departamento);
				this.listaDepartamento=departamentoImp.findAll();
				request.setAttribute("titulo", "Lista Departamentos");
				request.setAttribute("departamentos", this.listaDepartamento);
				request.getRequestDispatcher("departamentos/listDepartamentos.jsp").forward(request, response);
				break;
			
			default:
				this.listaDepartamento=departamentoImp.findAll();
				request.setAttribute("departamentos", listaDepartamento);
				request.getRequestDispatcher("departamentos/listDepartamentos.jsp").forward(request, response);
				break;
			}
				
		}else {
			System.out.println("entro a cargar lista de departamentos");
			this.listaDepartamento=departamentoImp.findAll();
			request.setAttribute("departamentos", this.listaDepartamento);
			request.getRequestDispatcher("departamentos/listDepartamentos.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DepartamentoImp departamentoImp = new DepartamentoImp();
		if (request.getParameter("action")!=null) {
			String action=request.getParameter("action");
			switch (action) {
			case "Crear":
				Departamento departamentoCrea = new Departamento();
				System.out.println("@Crear");
				int codigo_departamento=Integer.parseInt(request.getParameter("codigo"));
				String nombre_departamento=request.getParameter("nombre");
				departamentoCrea.setId_Departamentos(0);
				departamentoCrea.setDepartamento_codigo(codigo_departamento);
				departamentoCrea.setDepartamento_nombre(nombre_departamento);
				departamentoImp.createDepartamento(departamentoCrea);
				this.listaDepartamento=departamentoImp.findAll();
				request.setAttribute("departamentos", listaDepartamento);
				request.getRequestDispatcher("departamentos/listDepartamentos.jsp").forward(request, response);
				break;
				
			case "actualizar":
				System.out.println("@actualizar");
				Departamento departamentoAc=new Departamento();
				departamentoAc.setId_Departamentos(Integer.parseInt(request.getParameter("id")));
				departamentoAc.setDepartamento_codigo(Integer.parseInt(request.getParameter("codigo")));
				departamentoAc.setDepartamento_nombre(request.getParameter("nombre"));
				departamentoImp.actualizarDepartamento(departamentoAc);
				this.listaDepartamento=departamentoImp.findAll();
				request.setAttribute("departamentos", this.listaDepartamento);
				request.getRequestDispatcher("departamentos/listDepartamentos.jsp").forward(request, response);
				break;
			
			default:
				this.listaDepartamento=departamentoImp.findAll();
				request.setAttribute("departamentos", listaDepartamento);
				request.getRequestDispatcher("departamentos/listDepartamentos.jsp").forward(request, response);
				break;
			}
				
		}
		
	}

}
