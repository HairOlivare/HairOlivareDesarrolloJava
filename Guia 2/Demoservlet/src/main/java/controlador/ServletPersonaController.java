package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class ServletPersonaController
 */
@WebServlet("/ServletPersonaController")
public class ServletPersonaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<Persona> listPersonas=new ArrayList<Persona>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPersonaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		Persona persona=new Persona();
		persona.setNombre(nombre);
		persona.setApellido(apellido);
		this.listPersonas.add(persona);
		request.setAttribute("lista", listPersonas);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
