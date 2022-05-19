cliente = document.getElementById("idcliente");
fecha = document.getElementById("fecha");

 function validar(){

 	if (cliente.value == "") {
 		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar el documento del cliente',
		  showConfirmButton: false,
		  timer: 2300,
		});
		cliente.focus();
		return false;
 	}

 	fe = new Date(fecha.value);

	if (isNaN(fe.getFullYear())) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
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
		  title: 'La fecha no puede ser mayor que la de hoy',
		  showConfirmButton: false,
		  timer: 2300,
		});
		fecha.focus();
		return false;
	}

	var suma = 0;
	var los_cboxes = document.getElementsByName('box'); 
	for (var i = 0, j = los_cboxes.length; i < j; i++) {
	    
	    if(los_cboxes[i].checked == true){
	    suma++;
	    }
	}
	 
	if(suma == 0){
	Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe seleccionar minimo un producto',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
	return false;
	}

	Swal.fire({
	  position: 'center',
	  icon: 'success',
	  title:'Exitosa',
	  text: 'Ha sido registrada la venta',
	  showConfirmButton: false,
	  timer: 2500
	});

	return false;

}

function sumar(){
  const $total = document.getElementById('totalcanti');
  let subtotal = 0;
  [ ...document.getElementsByClassName( "canti" ) ].forEach( function ( element ) {
    if(element.value !== '') {
      subtotal += parseFloat(element.value);
    }
  });
  $total.value = subtotal;
}

$(document).ready(function(){
	
		$('#checkcal').click(function(){
			if($('#checkcal').is(':checked')){
				document.getElementById("numcal").disabled=false;
				document.getElementById("numcal").required=true;
			}else{
				document.getElementById("numcal").disabled=true;
				document.getElementById("numcal").value="";
				document.getElementById("numcal").required=false;
			}
		});

		$('#checkmca').click(function(){
			if($('#checkmca').is(':checked')){
				document.getElementById("nummca").disabled=false;
				document.getElementById("nummca").required=true;
			}else{
				document.getElementById("nummca").disabled=true;
				document.getElementById("nummca").value="";
				document.getElementById("nummca").required=false;
			}
		});

		$('#checkmin').click(function(){
			if($('#checkmin').is(':checked')){
				document.getElementById("nummin").disabled=false;
				document.getElementById("nummin").required=true;
			}else{
				document.getElementById("nummin").disabled=true;
				document.getElementById("nummin").value="";
				document.getElementById("nummin").required=false;
			}
		});

		$('#checkpblan').click(function(){
			if($('#checkpblan').is(':checked')){
				document.getElementById("numpblan").disabled=false;
				document.getElementById("numpblan").required=true;
			}else{
				document.getElementById("numpblan").disabled=true;
				document.getElementById("numpblan").value="";
				document.getElementById("numpblan").required=false;
			}
		});

		$('#checkpco').click(function(){
			if($('#checkpco').is(':checked')){
				document.getElementById("numpco").disabled=false;
				document.getElementById("numpco").required=true;
			}else{
				document.getElementById("numpco").disabled=true;
				document.getElementById("numpco").value="";
				document.getElementById("numpco").required=false;
			}
		});

		$('#checkpcos').click(function(){
			if($('#checkpcos').is(':checked')){
				document.getElementById("numpcos").disabled=false;
				document.getElementById("numpcos").required=true;
			}else{
				document.getElementById("numpcos").disabled=true;
				document.getElementById("numpcos").value="";
				document.getElementById("numpcos").required=false;
			}
		});

		$('#checkpfran').click(function(){
			if($('#checkpfran').is(':checked')){
				document.getElementById("numpfran").disabled=false;
				document.getElementById("numpfran").required=true;
			}else{
				document.getElementById("numpfran").disabled=true;
				document.getElementById("numpfran").value="";
				document.getElementById("numpfran").required=false;
			}
		});

		$('#checkpga').click(function(){
			if($('#checkpga').is(':checked')){
				document.getElementById("numpga").disabled=false;
				document.getElementById("numpga").required=true;
			}else{
				document.getElementById("numpga").disabled=true;
				document.getElementById("numpga").value="";
				document.getElementById("numpga").required=false;
			}
		});

		$('#checkprollo').click(function(){
			if($('#checkprollo').is(':checked')){
				document.getElementById("numprollo").disabled=false;
				document.getElementById("numprollo").required=true;
			}else{
				document.getElementById("numprollo").disabled=true;
				document.getElementById("numprollo").value="";
				document.getElementById("numprollo").required=false;
			}
		});

		$('#checkpros').click(function(){
			if($('#checkpros').is(':checked')){
				document.getElementById("numpros").disabled=false;
				document.getElementById("numpros").required=true;
			}else{
				document.getElementById("numpros").disabled=true;
				document.getElementById("numpros").value="";
				document.getElementById("numpros").required=false;
			}
		});

});

$("#limpiar").on("click",function(event){
		    event.preventDefault();

		    document.getElementById("idcliente").value="";
		    document.getElementById("fecha").value="";
		    document.getElementById("totalcanti").value="";
		    document.getElementById("numcal").disabled=true;
				document.getElementById("numcal").value="";
				document.getElementById("numcal").required=false;
				document.getElementById("nummca").disabled=true;
				document.getElementById("nummca").value="";
				document.getElementById("nummca").required=false;
				document.getElementById("nummin").disabled=true;
				document.getElementById("nummin").value="";
				document.getElementById("nummin").required=false;
				document.getElementById("numpblan").disabled=true;
				document.getElementById("numpblan").value="";
				document.getElementById("numpblan").required=false;
				document.getElementById("numpco").disabled=true;
				document.getElementById("numpco").value="";
				document.getElementById("numpco").required=false;
				document.getElementById("numpcos").disabled=true;
				document.getElementById("numpcos").value="";
				document.getElementById("numpcos").required=false;
				document.getElementById("numpfran").disabled=true;
				document.getElementById("numpfran").value="";
				document.getElementById("numpfran").required=false;
				document.getElementById("numpga").disabled=true;
				document.getElementById("numpga").value="";
				document.getElementById("numpga").required=false;
				document.getElementById("numprollo").disabled=true;
				document.getElementById("numprollo").value="";
				document.getElementById("numprollo").required=false;
				document.getElementById("numpros").disabled=true;
				document.getElementById("numpros").value="";
				document.getElementById("numpros").required=false;
				document.getElementById("checkcal").checked=false;
				document.getElementById("checkmca").checked=false;
				document.getElementById("checkmin").checked=false;
				document.getElementById("checkpblan").checked=false;
				document.getElementById("checkpco").checked=false;
				document.getElementById("checkpcos").checked=false;
				document.getElementById("checkpfran").checked=false;
				document.getElementById("checkpga").checked=false;
				document.getElementById("checkprollo").checked=false;
				document.getElementById("checkpros").checked=false;
		 });