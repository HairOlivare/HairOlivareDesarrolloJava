package util;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Utilidades {

	public static Date convertirFecha(String fechaEntra){
		SimpleDateFormat formato=new SimpleDateFormat("dd/MM/yyyy");
		Date date=null;
		try {
			date=formato.parse(fechaEntra);
		} catch (ParseException e) {
			// TODO: handle exception
		}
		return date;
	}
}
