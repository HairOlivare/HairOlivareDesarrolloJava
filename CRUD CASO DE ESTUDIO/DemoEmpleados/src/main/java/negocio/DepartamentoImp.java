package negocio;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import data.Conexion;
import modelo.Departamento;

public class DepartamentoImp extends Conexion{
	//atributos
	private PreparedStatement pstDepartamentos=null;
	private ResultSet rsDepartamentos=null;
	private String query="";
	private List<Departamento> listaDepartamento=new ArrayList<>();
	
	public List<Departamento> findAll(){
		this.query="SELECT * FROM Departamentos";
		try {
			if (this.getConnection()!=null) {
					this.pstDepartamentos=this.getConnection().prepareStatement(query);
					this.rsDepartamentos=this.pstDepartamentos.executeQuery();
					while (this.rsDepartamentos.next()) {
						Departamento departamento=new Departamento();
						departamento.setId_Departamentos(this.rsDepartamentos.getInt("Id_Departamentos"));
						departamento.setDepartamento_codigo(this.rsDepartamentos.getInt("Departamento_codigo"));
						departamento.setDepartamento_nombre(this.rsDepartamentos.getString("Departamento_nombre"));
						departamento.setFecha_crea_D(this.rsDepartamentos.getDate("Fecha_crea_D"));
						departamento.setFecha_modifica_D(this.rsDepartamentos.getDate("Fecha_modifica_D"));
						this.listaDepartamento.add(departamento);
					}
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return this.listaDepartamento;
	}
	
	public Departamento buscarPorId(int Id_Departamentos) {
		// TODO Auto-generated method stub
				Departamento departamento=new Departamento();
				this.query="select * from Departamentos where Id_Departamentos=?";
				try {
					if(this.getConnection()!=null) {
						this.pstDepartamentos=this.getConnection().prepareStatement(query);
						this.pstDepartamentos.setInt(1, Id_Departamentos);
						this.rsDepartamentos=this.pstDepartamentos.executeQuery();
						while(this.rsDepartamentos.next()) {
							departamento.setId_Departamentos(this.rsDepartamentos.getInt("Id_Departamentos"));
							departamento.setDepartamento_codigo(this.rsDepartamentos.getInt("Departamento_codigo"));
							departamento.setDepartamento_nombre(this.rsDepartamentos.getString("Departamento_nombre"));
							departamento.setFecha_crea_D(this.rsDepartamentos.getDate("Fecha_crea_D"));
							departamento.setFecha_modifica_D(this.rsDepartamentos.getDate("Fecha_modifica_D"));
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return departamento;
	}

public void createDepartamento(Departamento departamento) {
	try {
		query="insert into Departamentos (Id_Departamentos, Departamento_codigo, Departamento_nombre)  values (?,?,?)";
		if (this.getConnection()!=null) {
			this.pstDepartamentos=this.getConnection().prepareStatement(query);				
			this.pstDepartamentos.setInt(1, 0);
			this.pstDepartamentos.setInt(2, departamento.getDepartamento_codigo());
			this.pstDepartamentos.setString(3, departamento.getDepartamento_nombre());
			this.pstDepartamentos.execute();
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
}

public boolean actualizarDepartamento(Departamento departamento) {
	this.query="UPDATE Departamentos SET Id_Departamentos=?, Departamento_codigo=?, Departamento_nombre=?"
			+ "where Id_Departamentos=?";
	try {
		if (this.getConnection()!=null) {
			this.pstDepartamentos=this.getConnection().prepareStatement(query);
			this.pstDepartamentos.setInt(1, departamento.getId_Departamentos());
			this.pstDepartamentos.setInt(2, departamento.getDepartamento_codigo());
			this.pstDepartamentos.setString(3, departamento.getDepartamento_nombre());
			this.pstDepartamentos.setInt(4, departamento.getId_Departamentos());
			this.pstDepartamentos.execute();
		}else {
			System.out.println("Fallo de conexion");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return false;
}

public boolean eliminarDepartamento(int Id_Departamentos) {
	this.query="DELETE from Departamentos where Id_Departamentos=?";
	try {
		if (this.getConnection()!=null) {
			this.pstDepartamentos=this.getConnection().prepareStatement(query);
			this.pstDepartamentos.setInt(1, Id_Departamentos);
			this.pstDepartamentos.executeUpdate();
		}
	} catch (Exception e) {}
	return false;
}
}
