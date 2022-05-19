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
						departamento.setHora_crea_D(this.rsDepartamentos.getTime("Hora_crea_D"));
						departamento.setFecha_modifica_D(this.rsDepartamentos.getDate("Fecha_modifica_D"));
						departamento.setHora_modifica_D(this.rsDepartamentos.getTime("Hora_modifica_D"));
						this.listaDepartamento.add(departamento);
						System.out.println("Si se le esta conectando");
					}
				}else {System.out.println("Le esta fallando la conexion papi");}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return this.listaDepartamento;
		
	}
}
