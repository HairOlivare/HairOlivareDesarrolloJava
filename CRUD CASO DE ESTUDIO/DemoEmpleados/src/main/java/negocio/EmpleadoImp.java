package negocio;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import data.Conexion;
import modelo.Empleado;

public class EmpleadoImp extends Conexion{
	//atributos
		private PreparedStatement pstEmpleados=null;
		private ResultSet rsEmpleados=null;
		private String query="";
		private List<Empleado> listaEmpleado=new ArrayList<>();
		
		public List<Empleado> findAll(){
			this.query="SELECT * FROM Empleados";
			try {
				if (this.getConnection()!=null) {
						this.pstEmpleados=this.getConnection().prepareStatement(query);
						this.rsEmpleados=this.pstEmpleados.executeQuery();
						while (this.rsEmpleados.next()) {
							Empleado empleado=new Empleado();
							empleado.setId_Empleado(this.rsEmpleados.getInt("Id_Empleado"));
							empleado.setDocumento_Tipo(this.rsEmpleados.getString("Documento_Tipo"));
							empleado.setDocumento_Numero(this.rsEmpleados.getLong("Documento_Numero"));
							empleado.setNombres(this.rsEmpleados.getString("Nombres"));
							empleado.setApellidos(this.rsEmpleados.getString("Apellidos"));
							empleado.setDepartamento_Id(this.rsEmpleados.getInt("Departamento_Id"));
							empleado.setCiudad(this.rsEmpleados.getString("Ciudad"));
							empleado.setE_mail(this.rsEmpleados.getString("E_mail"));
							empleado.setTelefono(this.rsEmpleados.getLong("Telefono"));
							empleado.setFecha_crea_E(this.rsEmpleados.getDate("Fecha_crea_E"));
							empleado.setFecha_modifica_E(this.rsEmpleados.getDate("Fecha_modifica_E"));
							this.listaEmpleado.add(empleado);
						}
					}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return this.listaEmpleado;
		}
		
		public Empleado buscarPorId(int Id_Empleado) {
			// TODO Auto-generated method stub
			Empleado empleado=new Empleado();
			this.query="select * from Empleados where Id_Empleado=?";
			try {
				if(this.getConnection()!=null) {
					this.pstEmpleados=this.getConnection().prepareStatement(query);
					this.pstEmpleados.setInt(1, Id_Empleado);
					this.rsEmpleados=this.pstEmpleados.executeQuery();
					while(this.rsEmpleados.next()) {
						empleado.setId_Empleado(this.rsEmpleados.getInt("Id_Empleado"));
						empleado.setDocumento_Tipo(this.rsEmpleados.getString("Documento_Tipo"));
						empleado.setDocumento_Numero(this.rsEmpleados.getLong("Documento_Numero"));
						empleado.setNombres(this.rsEmpleados.getString("Nombres"));
						empleado.setApellidos(this.rsEmpleados.getString("Apellidos"));
						empleado.setDepartamento_Id(this.rsEmpleados.getInt("Departamento_Id"));
						empleado.setCiudad(this.rsEmpleados.getString("Ciudad"));
						empleado.setE_mail(this.rsEmpleados.getString("E_mail"));
						empleado.setTelefono(this.rsEmpleados.getLong("Telefono"));
						empleado.setFecha_crea_E(this.rsEmpleados.getDate("Fecha_crea_E"));
						empleado.setFecha_modifica_E(this.rsEmpleados.getDate("Fecha_modifica_E"));
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return empleado;
		}

		public void createEmpleado(Empleado empleado) {
			try {
				query="insert into Empleados (Id_empleado, Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono) values (?,?,?,?,?,?,?,?,?)";
				if (this.getConnection()!=null) {
					this.pstEmpleados=this.getConnection().prepareStatement(query);				
					this.pstEmpleados.setInt(1, 0);
					this.pstEmpleados.setString(2, empleado.getDocumento_Tipo());
					this.pstEmpleados.setLong(3, empleado.getDocumento_Numero());
					this.pstEmpleados.setString(4, empleado.getNombres());
					this.pstEmpleados.setString(5, empleado.getApellidos());
					this.pstEmpleados.setInt(6, empleado.getDepartamento_Id());
					this.pstEmpleados.setString(7, empleado.getCiudad());
					this.pstEmpleados.setString(8, empleado.getE_mail());
					this.pstEmpleados.setLong(9, empleado.getTelefono());
					this.pstEmpleados.execute();
					}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public boolean actualizarEmpleado(Empleado empleado) {
			this.query="UPDATE Empleados SET Id_Empleado=?, Documento_Tipo=?, Documento_Numero=?, Nombres=?, Apellidos=?, "
					+ "Departamento_Id=?, Ciudad=?, E_mail=?, Telefono=? where Id_Empleado=?";
			try {
				if (this.getConnection()!=null) {
					this.pstEmpleados=this.getConnection().prepareStatement(query);
					this.pstEmpleados.setInt(1, empleado.getId_Empleado());
					this.pstEmpleados.setString(2, empleado.getDocumento_Tipo());
					this.pstEmpleados.setLong(3, empleado.getDocumento_Numero());
					this.pstEmpleados.setString(4, empleado.getNombres());
					this.pstEmpleados.setString(5, empleado.getApellidos());
					this.pstEmpleados.setInt(6, empleado.getDepartamento_Id());
					this.pstEmpleados.setString(7, empleado.getCiudad());
					this.pstEmpleados.setString(8, empleado.getE_mail());
					this.pstEmpleados.setLong(9, empleado.getTelefono());
					this.pstEmpleados.setInt(10, empleado.getId_Empleado());
					this.pstEmpleados.execute();
				}else {
					System.out.println("Fallo de conexion");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}

		public boolean eliminarEmpleado(int Id_Empleado) {
			this.query="DELETE from Empleados where Id_Empleado=?";
			try {
				if (this.getConnection()!=null) {
					this.pstEmpleados=this.getConnection().prepareStatement(query);
					this.pstEmpleados.setInt(1, Id_Empleado);
					this.pstEmpleados.executeUpdate();
				}
			} catch (Exception e) {}
			return false;
		}
		
		

}
