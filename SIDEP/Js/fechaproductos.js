desde = document.getElementById("fechain");
hasta = document.getElementById("fechafin");


 function validar(){

 	fi = new Date(desde.value);
 	ff = new Date(hasta.value);

	if (isNaN(fi.getFullYear())) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Debe ingresar una fecha en la primera casilla',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		desde.focus();
		return false;
	}

	if (isNaN(ff.getFullYear())) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Debe ingresar una fecha en la segunda casilla',
		  showConfirmButton: false,
		  timer: 2000,
		});
		hasta.focus();
		return false;
	}
     
    hoy = new Date();        

	if (fi > hoy) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'La primera fecha no puede ser mayor que la de hoy',
		  showConfirmButton: false,
		  timer: 2300,
		});
		desde.focus();
		desde.value="";
		return false;
	}

	if (ff > hoy) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'La segunda fecha no puede ser mayor que la de hoy',
		  showConfirmButton: false,
		  timer: 2300,
		});
		hasta.focus();
		hasta.value="";
		return false;
	}

	if (fi > ff) {
		Swal.fire({
		  position: 'center',
		  icon: 'error',
		  title: 'Tiempo de busqueda invalido',
		  showConfirmButton: false,
		  timer: 2300,
		});
		desde.focus();
		desde.value="";
		hasta.value="";
		return false;
	}	

}