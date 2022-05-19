fecha = document.getElementById("fecha");
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
		  title:'Invalido',
		  text: 'La fecha no puede ser mayor que la de hoy',
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
		  text: 'Debe seleccionar minimo un insumo',
		  showConfirmButton: false,
	  	  timer: 2000,
		});
	return false;
	}

	Swal.fire({
	  position: 'center',
	  icon: 'success',
	  title:'Excelente',
	  text: 'Ha sido registrada con exito la salida de insumos',
	  showConfirmButton: false,
	  timer: 2500
	});

	return false;
	
}


$(document).ready(function(){
	
		$('#checkare').click(function(){
			if($('#checkare').is(':checked')){
				document.getElementById("numare").disabled=false;
				document.getElementById("numare").required=true;
				document.getElementById("selare").disabled=false;
				document.getElementById("selare").required=true;
			}else{
				document.getElementById("numare").disabled=true;
				document.getElementById("numare").value="";
				document.getElementById("numare").required=false;
				document.getElementById("selare").disabled=true;
				document.getElementById("selare").value="";
				document.getElementById("selare").required=false;
			}
		});

		$('#checkazu').click(function(){
			if($('#checkazu').is(':checked')){
				document.getElementById("numazu").disabled=false;
				document.getElementById("numazu").required=true;
				document.getElementById("selazu").disabled=false;
				document.getElementById("selazu").required=true;
			}else{
				document.getElementById("numazu").disabled=true;
				document.getElementById("numazu").value="";
				document.getElementById("numazu").required=false;
				document.getElementById("selazu").disabled=true;
				document.getElementById("selazu").value="";
				document.getElementById("selazu").required=false;
			}
		});

		$('#checkbicar').click(function(){
			if($('#checkbicar').is(':checked')){
				document.getElementById("numbicar").disabled=false;
				document.getElementById("numbicar").required=true;
				document.getElementById("selbicar").disabled=false;
				document.getElementById("selbicar").required=true;
			}else{
				document.getElementById("numbicar").disabled=true;
				document.getElementById("numbicar").value="";
				document.getElementById("numbicar").required=false;
				document.getElementById("selbicar").disabled=true;
				document.getElementById("selbicar").value="";
				document.getElementById("selbicar").required=false;
			}
		});

		$('#checkcho').click(function(){
			if($('#checkcho').is(':checked')){
				document.getElementById("numcho").disabled=false;
				document.getElementById("numcho").required=true;
				document.getElementById("selcho").disabled=false;
				document.getElementById("selcho").required=true;
			}else{
				document.getElementById("numcho").disabled=true;
				document.getElementById("numcho").value="";
				document.getElementById("numcho").required=false;
				document.getElementById("selcho").disabled=true;
				document.getElementById("selcho").value="";
				document.getElementById("selcho").required=false;
			}
		});

		$('#checkesen').click(function(){
			if($('#checkesen').is(':checked')){
				document.getElementById("numesen").disabled=false;
				document.getElementById("numesen").required=true;
				document.getElementById("selesen").disabled=false;
				document.getElementById("selesen").required=true;
			}else{
				document.getElementById("numesen").disabled=true;
				document.getElementById("numesen").value="";
				document.getElementById("numesen").required=false;
				document.getElementById("selesen").disabled=true;
				document.getElementById("selesen").value="";
				document.getElementById("selesen").required=false;
			}
		});

		$('#checkfecu').click(function(){
			if($('#checkfecu').is(':checked')){
				document.getElementById("numfecu").disabled=false;
				document.getElementById("numfecu").required=true;
				document.getElementById("selfecu").disabled=false;
				document.getElementById("selfecu").required=true;
			}else{
				document.getElementById("numfecu").disabled=true;
				document.getElementById("numfecu").value="";
				document.getElementById("numfecu").required=false;
				document.getElementById("selfecu").disabled=true;
				document.getElementById("selfecu").value="";
				document.getElementById("selfecu").required=false;
			}
		});

		$('#checkfs').click(function(){
			if($('#checkfs').is(':checked')){
				document.getElementById("numfs").disabled=false;
				document.getElementById("numfs").required=true;
				document.getElementById("selfs").disabled=false;
				document.getElementById("selfs").required=true;
			}else{
				document.getElementById("numfs").disabled=true;
				document.getElementById("numfs").value="";
				document.getElementById("numfs").required=false;
				document.getElementById("selfs").disabled=true;
				document.getElementById("selfs").value="";
				document.getElementById("selfs").required=false;
			}
		});

		$('#checkhari').click(function(){
			if($('#checkhari').is(':checked')){
				document.getElementById("numhari").disabled=false;
				document.getElementById("numhari").required=true;
				document.getElementById("selhari").disabled=false;
				document.getElementById("selhari").required=true;
			}else{
				document.getElementById("numhari").disabled=true;
				document.getElementById("numhari").value="";
				document.getElementById("numhari").required=false;
				document.getElementById("selhari").disabled=true;
				document.getElementById("selhari").value="";
				document.getElementById("selhari").required=false;
			}
		});

		$('#checkhue').click(function(){
			if($('#checkhue').is(':checked')){
				document.getElementById("numhue").disabled=false;
				document.getElementById("numhue").required=true;
				document.getElementById("selhue").disabled=false;
				document.getElementById("selhue").required=true;
			}else{
				document.getElementById("numhue").disabled=true;
				document.getElementById("numhue").value="";
				document.getElementById("numhue").required=false;
				document.getElementById("selhue").disabled=true;
				document.getElementById("selhue").value="";
				document.getElementById("selhue").required=false;
			}
		});

		$('#checkle').click(function(){
			if($('#checkle').is(':checked')){
				document.getElementById("numle").disabled=false;
				document.getElementById("numle").required=true;
				document.getElementById("selle").disabled=false;
				document.getElementById("selle").required=true;
			}else{
				document.getElementById("numle").disabled=true;
				document.getElementById("numle").value="";
				document.getElementById("numle").required=false;
				document.getElementById("selle").disabled=true;
				document.getElementById("selle").value="";
				document.getElementById("selle").required=false;
			}
		});

		$('#checkleva').click(function(){
			if($('#checkleva').is(':checked')){
				document.getElementById("numleva").disabled=false;
				document.getElementById("numleva").required=true;
				document.getElementById("selleva").disabled=false;
				document.getElementById("selleva").required=true;
			}else{
				document.getElementById("numleva").disabled=true;
				document.getElementById("numleva").value="";
				document.getElementById("numleva").required=false;
				document.getElementById("selleva").disabled=true;
				document.getElementById("selleva").value="";
				document.getElementById("selleva").required=false;
			}
		});

		$('#checkmai').click(function(){
			if($('#checkmai').is(':checked')){
				document.getElementById("nummai").disabled=false;
				document.getElementById("nummai").required=true;
				document.getElementById("selmai").disabled=false;
				document.getElementById("selmai").required=true;
			}else{
				document.getElementById("nummai").disabled=true;
				document.getElementById("nummai").value="";
				document.getElementById("nummai").required=false;
				document.getElementById("selmai").disabled=true;
				document.getElementById("selmai").value="";
				document.getElementById("selmai").required=false;
			}
		});

		$('#checkman').click(function(){
			if($('#checkman').is(':checked')){
				document.getElementById("numman").disabled=false;
				document.getElementById("numman").required=true;
				document.getElementById("selman").disabled=false;
				document.getElementById("selman").required=true;
			}else{
				document.getElementById("numman").disabled=true;
				document.getElementById("numman").value="";
				document.getElementById("numman").required=false;
				document.getElementById("selman").disabled=true;
				document.getElementById("selman").value="";
				document.getElementById("selman").required=false;
			}
		});

		$('#checkpol').click(function(){
			if($('#checkpol').is(':checked')){
				document.getElementById("numpol").disabled=false;
				document.getElementById("numpol").required=true;
				document.getElementById("selpol").disabled=false;
				document.getElementById("selpol").required=true;
			}else{
				document.getElementById("numpol").disabled=true;
				document.getElementById("numpol").value="";
				document.getElementById("numpol").required=false;
				document.getElementById("selpol").disabled=true;
				document.getElementById("selpol").value="";
				document.getElementById("selpol").required=false;
			}
		});

		$('#checkque').click(function(){
			if($('#checkque').is(':checked')){
				document.getElementById("numque").disabled=false;
				document.getElementById("numque").required=true;
				document.getElementById("selque").disabled=false;
				document.getElementById("selque").required=true;
			}else{
				document.getElementById("numque").disabled=true;
				document.getElementById("numque").value="";
				document.getElementById("numque").required=false;
				document.getElementById("selque").disabled=true;
				document.getElementById("selque").value="";
				document.getElementById("selque").required=false;
			}
		});

		$('#checksal').click(function(){
			if($('#checksal').is(':checked')){
				document.getElementById("numsal").disabled=false;
				document.getElementById("numsal").required=true;
				document.getElementById("selsal").disabled=false;
				document.getElementById("selsal").required=true;
			}else{
				document.getElementById("numsal").disabled=true;
				document.getElementById("numsal").value="";
				document.getElementById("numsal").required=false;
				document.getElementById("selsal").disabled=true;
				document.getElementById("selsal").value="";
				document.getElementById("selsal").required=false;
			}
		});

});

$("#limpiar").on("click",function(event){
		    event.preventDefault();
		    	document.getElementById("fecha").value="";
		    	document.getElementById("numare").disabled=true;
				document.getElementById("numare").value="";
				document.getElementById("numare").required=false;
				document.getElementById("selare").disabled=true;
				document.getElementById("selare").value="";
				document.getElementById("selare").required=false;
				document.getElementById("numazu").disabled=true;
				document.getElementById("numazu").value="";
				document.getElementById("numazu").required=false;
				document.getElementById("selazu").disabled=true;
				document.getElementById("selazu").value="";
				document.getElementById("selazu").required=false;
				document.getElementById("numbicar").disabled=true;
				document.getElementById("numbicar").value="";
				document.getElementById("numbicar").required=false;
				document.getElementById("selbicar").disabled=true;
				document.getElementById("selbicar").value="";
				document.getElementById("selbicar").required=false;
				document.getElementById("numcho").disabled=true;
				document.getElementById("numcho").value="";
				document.getElementById("numcho").required=false;
				document.getElementById("selcho").disabled=true;
				document.getElementById("selcho").value="";
				document.getElementById("selcho").required=false;
				document.getElementById("numesen").disabled=true;
				document.getElementById("numesen").value="";
				document.getElementById("numesen").required=false;
				document.getElementById("selesen").disabled=true;
				document.getElementById("selesen").value="";
				document.getElementById("selesen").required=false;
				document.getElementById("numfecu").disabled=true;
				document.getElementById("numfecu").value="";
				document.getElementById("numfecu").required=false;
				document.getElementById("selfecu").disabled=true;
				document.getElementById("selfecu").value="";
				document.getElementById("selfecu").required=false;
				document.getElementById("numfs").disabled=true;
				document.getElementById("numfs").value="";
				document.getElementById("numfs").required=false;
				document.getElementById("selfs").disabled=true;
				document.getElementById("selfs").value="";
				document.getElementById("selfs").required=false;
				document.getElementById("numhari").disabled=true;
				document.getElementById("numhari").value="";
				document.getElementById("numhari").required=false;
				document.getElementById("selhari").disabled=true;
				document.getElementById("selhari").value="";
				document.getElementById("selhari").required=false;
				document.getElementById("numhue").disabled=true;
				document.getElementById("numhue").value="";
				document.getElementById("numhue").required=false;
				document.getElementById("selhue").disabled=true;
				document.getElementById("selhue").value="";
				document.getElementById("selhue").required=false;
				document.getElementById("numle").disabled=true;
				document.getElementById("numle").value="";
				document.getElementById("numle").required=false;
				document.getElementById("selle").disabled=true;
				document.getElementById("selle").value="";
				document.getElementById("selle").required=false;
				document.getElementById("numleva").disabled=true;
				document.getElementById("numleva").value="";
				document.getElementById("numleva").required=false;
				document.getElementById("selleva").disabled=true;
				document.getElementById("selleva").value="";
				document.getElementById("selleva").required=false;
				document.getElementById("nummai").disabled=true;
				document.getElementById("nummai").value="";
				document.getElementById("nummai").required=false;
				document.getElementById("selmai").disabled=true;
				document.getElementById("selmai").value="";
				document.getElementById("selmai").required=false;
				document.getElementById("numman").disabled=true;
				document.getElementById("numman").value="";
				document.getElementById("numman").required=false;
				document.getElementById("selman").disabled=true;
				document.getElementById("selman").value="";
				document.getElementById("selman").required=false;
				document.getElementById("numpol").disabled=true;
				document.getElementById("numpol").value="";
				document.getElementById("numpol").required=false;
				document.getElementById("selpol").disabled=true;
				document.getElementById("selpol").value="";
				document.getElementById("selpol").required=false;
				document.getElementById("numque").disabled=true;
				document.getElementById("numque").value="";
				document.getElementById("numque").required=false;
				document.getElementById("selque").disabled=true;
				document.getElementById("selque").value="";
				document.getElementById("selque").required=false;
				document.getElementById("numsal").disabled=true;
				document.getElementById("numsal").value="";
				document.getElementById("numsal").required=false;
				document.getElementById("selsal").disabled=true;
				document.getElementById("selsal").value="";
				document.getElementById("selsal").required=false;
				document.getElementById("checkare").checked=false;
				document.getElementById("checkazu").checked=false;
				document.getElementById("checkbicar").checked=false;
				document.getElementById("checkcho").checked=false;
				document.getElementById("checkesen").checked=false;
				document.getElementById("checkfecu").checked=false;
				document.getElementById("checkfs").checked=false;
				document.getElementById("checkhari").checked=false;
				document.getElementById("checkhue").checked=false;
				document.getElementById("checkle").checked=false;
				document.getElementById("checkleva").checked=false;
				document.getElementById("checkmai").checked=false;
				document.getElementById("checkman").checked=false;
				document.getElementById("checkpol").checked=false;
				document.getElementById("checkque").checked=false;
				document.getElementById("checksal").checked=false;
		 });