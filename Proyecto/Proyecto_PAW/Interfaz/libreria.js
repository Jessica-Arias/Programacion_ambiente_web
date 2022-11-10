var regSeleccionado = null;

function enviarP() {

	if (validarNombreP() && validarCodigoP() && validarCantidadP() & validarPrecioP()) {

		document.getElementById("frP").method = "POST";
		document.getElementById("frP").action = "AgregarProducto.aspx";
		document.getElementById("frP").submit();

    }	

}

function registrarU() {

	if (validarNombreU() && validarCorreoR() && validarContraseñaR() && validarDireccion() && validarTelefono()) {

		document.getElementById("frUR").method = "POST";
		document.getElementById("frUR").action = "registrarU.aspx";
		document.getElementById("frUR").submit();

	}	

}

function iniciarU() {

	if (validarNombre() && validarContraseña()) {

		document.getElementById("frUI").method = "POST";
		document.getElementById("frUI").action = "iniciarU.aspx";
		document.getElementById("frUI").submit();

	}

}




function validarNombreP() {
	esValido = true;

	if (document.getElementById("nombreP").value == "" || document.getElementById("nombreP").value == null) {
		esValido = false;
		document.getElementById("ErrorNombreP").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorNombreP").style.display = "none";
	}

	return esValido;
}

function validarCodigoP() {
	esValido = true;

	if (document.getElementById("codigoP").value == "" || document.getElementById("codigoP").value == null) {
		esValido = false;
		document.getElementById("ErrorCodigoP").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorCodigoP").style.display = "none";
	}

	return esValido;
}

function validarCantidadP() {
	esValido = true;

	if (document.getElementById("cantidadP").value == "" || document.getElementById("cantidadP").value == null) {
		esValido = false;
		document.getElementById("ErrorCantidadP").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorCantidadP").style.display = "none";
		
	}

	return esValido;
}

function validarPrecioP() {
	esValido = true;

	if (document.getElementById("precioP").value == "" || document.getElementById("precioP").value == null) {
		esValido = false;
		document.getElementById("ErrorPrecioP").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorPrecioP").style.display = "none";

	}

	return esValido;
}

function soloLetras(e) {
	key = e.keyCode || e.which;
	tecla = String.fromCharCode(key).toLowerCase();
	letras = " abcdefghijklmnopqrstuvwxyz";

	especiales = [8, 37, 39, 46];

	tecla_especial = false;

	for (var i in especiales) {
		if (key == especiales[i]) {
			tecla_especial = true;
			break;
		}
	}

	if (letras.indexOf(tecla) == -1 && !tecla_especial)
		return false;


}

function validarNombreU() {

	esValido = true;

	if (document.getElementById("nombreU").value == "" || document.getElementById("nombreU").value == null) {
		esValido = false;
		document.getElementById("ErrorNombreU").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorNombreU").style.display = "none";
	}

	return esValido;

}

function validarCorreoR() {

	esValido = true;

	if (document.getElementById("correoU").value == "" || document.getElementById("correoU").value == null) {
		esValido = false;
		document.getElementById("ErrorCorreoU").style.display = "block";
	}

	else {
		dato = document.getElementById("correoU").value;
		if (!(/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)/.test(dato))) {
			document.getElementById("ErrorCorreoU").style.display = "none";
			document.getElementById("ErrorCorreoU2").style.display = "block";
			esValido = false;
		} else {
			esValido = true;
			document.getElementById("ErrorCorreoU").style.display = "none";
			document.getElementById("ErrorCorreoU2").style.display = "none";

		}

	}

	return esValido;
}

function validarContraseñaR() {
	esValido = true;

	if (document.getElementById("contraseñaU").value == "" || document.getElementById("contraseñaU").value == null) {
		esValido = false;
		document.getElementById("ErrorContraseñaU").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorContraseñaU").style.display = "none";
	}

	return esValido;
}

function validarDireccion() {

	esValido = true;

	if (document.getElementById("direccionU").value == "" || document.getElementById("direccionU").value == null) {
		esValido = false;
		document.getElementById("ErrorDireccionU").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorDireccionU").style.display = "none";
	}

	return esValido;
}

function validarTelefono() {
	esValido = true;

	if (document.getElementById("telefonoU").value == "" || document.getElementById("telefonoU").value == null) {
		esValido = false;
		document.getElementById("ErrorTelefonoU").style.display = "block";
		document.getElementById("ErrorTelefonoU2").style.display = "none";
	}
	else {

		dato = document.getElementById("telefonoU").value;
		if (isNaN(dato)) {
			esValido = false;
			document.getElementById("ErrorTelefonoU").style.display = "none";
			document.getElementById("ErrorTelefonoU1").style.display = "block";
			document.getElementById("ErrorTelefonoU2").style.display = "none";
		} else {
			dato = document.getElementById("telefonoU").value;

			if (!(/^\d{10}$/.test(dato))) {
				esValido = false;
				document.getElementById("ErrorTelefonoU").style.display = "none";
				document.getElementById("ErrorTelefonoU1").style.display = "none";
				document.getElementById("ErrorTelefonoU2").style.display = "block";
			}
			else {
				esValido = true;
				document.getElementById("ErrorTelefonoU").style.display = "none";
				document.getElementById("ErrorTelefonoU1").style.display = "none";
				document.getElementById("ErrorTelefonoU2").style.display = "none";
			}

        }


	}


	return esValido;
}

function validarNombre() {

	esValido = true;

	if (document.getElementById("nombre").value == "" || document.getElementById("nombre").value == null) {
		esValido = false;
		document.getElementById("ErrorNombre").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorNombre").style.display = "none";
	}

	return esValido;


}

function validarContraseña() {
	esValido = true;

	if (document.getElementById("contraseña").value == "" || document.getElementById("contraseña").value == null) {
		esValido = false;
		document.getElementById("ErrorContraseña").style.display = "block";
	}

	else {
		esValido = true;
		document.getElementById("ErrorContraseña").style.display = "none";
	}

	return esValido;
}
