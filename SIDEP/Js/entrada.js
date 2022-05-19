fecha = document.getElementById("fecha");
sel = document.getElementById("sel");
select = document.getElementById("select");
canti = document.getElementById("canti");
precio = document.getElementById("precio");
proveedor = document.getElementById("proveedor");


 function validar(){

 	fe = new Date(fecha.value);

	if (isNaN(fe.getFullYear())) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title:'Incompleto',
		  text: 'Debe ingresar una fecha',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		fecha.focus();
		return false;
	}

	hoy = new Date();         

	if (fe > hoy) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title:'Incompleto',
		  text: 'La fecha no puede ser mayor que la de hoy',
		  showConfirmButton: false,
		  timer: 2300,
		});
		fecha.focus();
		return false;
	}

	if (sel.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe seleccionar un insumo',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		sel.focus();
		return false;
	}

	if (select.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe seleccionar una unidad de medida',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		select.focus();
		return false;
	}

	if (canti.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar una cantidad del insumo',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		canti.focus();
		return false;
	}

	if (precio.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar el precio',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		precio.focus();
		return false;
	}

	if (proveedor.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar un proveedor',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
		proveedor.focus();
		return false;
	}

	Swal.fire({
	  position: 'center',
	  icon: 'success',
	  title: 'Completa',
	  text: 'Ha sido registrada con exito la entrada del insumo',
	  showConfirmButton: false,
	  timer: 2500,
	})

	fecha.value="";
	sel.value="";
	select.value="";
	canti.value="";
	precio.value="";
	proveedor.value="";

}