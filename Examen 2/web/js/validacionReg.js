function validarRegistro() {
    
    //Validar nombre
    if(reg_sesion.input_nombre.value.length < 2){
        alert('Digite al menos dos caracteres')
        reg_sesion.input_nombre.focus();
        return false;
    }

    if (reg_sesion.input_nombre.value.trim() == ""){
        alert("Debe ingresar un valor en el campo nombre");
        return false;
    }

    var checkOK = "QWERTYUIOPASDFGHJKLZXCVBNMÑ"
    +"qwertyuiopasdfghjklñzxcvbnm"+" ";

    var checkStr = reg_sesion.input_nombre.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente letras en el campo de nombre");
        reg_sesion.input_nombre.focus();
        return false;
    }


       //validar apellido paterno

       if(reg_sesion.input_appat.value.length < 2){
        alert("Escriba por lo menos 2 Caracteres para el apellido");
        formulario.appat.focus();
        return false;
    }

    var checkOK = "QWERTYUIOPASDFGHJKLZXCVBNMÑ"
    +"qwertyuiopasdfghjklñzxcvbnm";

    var checkStr = reg_sesion.input_appat.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente letras en el campo de apellido");
        reg_sesion.input_appat.focus();
        return false;
    }

    //validar apellido materno

    if(reg_sesion.input_apmat.value.length < 2){
        alert("Escriba por lo menos 2 Caracteres para el apellido");
        reg_sesion.input_apmat.focus();
        return false;
    }

    var checkOK = "QWERTYUIOPASDFGHJKLZXCVBNMÑ"
    +"qwertyuiopasdfghjklñzxcvbnm";

    var checkStr = reg_sesion.input_apmat.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente letras en el campo de apellido");
        reg_sesion.input_apmat.focus();
        return false;
    }

    //validar archivo
        var fileInput = document.getElementById('input_foto');
        var filePath = fileInput.value;
        var allowedExtensions = /(.jpg|.jpeg|.png|.gif)$/i;
        if(!allowedExtensions.exec(filePath)){
            alert('El archivo debe contar con la extensión .jpeg/.jpg/.png/.gif');
            fileInput.value = '';
            return false;
        }

    //validar No. Empleado
    var checkOK = "0123456789";
    if (reg_sesion.input_nEmpleado.value.trim() == ""){
    alert("Debe ingresar un valor en el campo No. Empleado");
    reg_sesion.input_nEmpleado.focus();
        return false
    }

    if(reg_sesion.input_nEmpleado.value.length < 10){
        alert("Escriba por lo menos 10 Caracteres para el numero de empleado");
        reg_sesion.input_nEmpleado.focus();
        return false;
    }

    var checkStr = reg_sesion.input_nEmpleado.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente numeros en el campo No. Empleado y mayores a los ya existentes");
        reg_sesion.input_nEmpleado.focus();
        return false;
    }

    // //Validar Sexo
    // select=document.getElementById('input_sexo').value;
    // // if (select == "") {
    // //     alert("Please select a selection");
    // //     return false;
    // // }

    // if (select!='Hombre') {
    //     alert('Seleccione una opcion valido en el campo sexo');
    //     reg_sesion.input_sexo.focus();
    //     return false;
        
    // }else if(select!='Mujer'){
    //     alert('Seleccione una opcion valido en el campo sexo');
    //     reg_sesion.input_sexo.focus();
    //     return false;

    // }else if(select!='No especificar'){
    //     alert('Seleccione una opcion valido en el campo sexo');
    //     reg_sesion.input_sexo.focus();
    //     return false;

    // }else{alert('todo bien');}

    //Validar Fecha de nac
    // var fecha = document.getElementById('input_fechaNacimiento');
    // function validarFormatoFecha() {
    //     var RegExPattern = /^\d{1,2}\/\d{1,2}\/\d{2,4}$/;
    //     if ((campo.match(RegExPattern)) && (campo!='')) {
    //           return true;
    //     } else {
    //           return false;
    //     }
    // }

    // function existeFecha(fecha){
    //     var fechaf = fecha.split("/");
    //     var day = fechaf[0];
    //     var month = fechaf[1];
    //     var year = fechaf[2];
    //     var date = new Date(year,month,'0');
    //     if((day-0)>(date.getDate()-0)){
    //           return false;
    //     }
    //     return true;
    // }
   
    // function existeFecha2 (fecha) {
    //       var fechaf = fecha.split("/");
    //       var d = fechaf[0];
    //       var m = fechaf[1];
    //       var y = fechaf[2];
    //       return m > 0 && m < 13 && y > 0 && y < 32768 && d > 0 && d <= (new Date(y, m, 0)).getDate();
    // }

    // function validarFechaMenorActual(date){
    //     var x=new Date();
    //     var fecha = date.split("/");
    //     x.setFullYear(fecha[2],fecha[1]-1,fecha[0]);
    //     var today = new Date();
   
    //     if (x >= today)
    //       return false;
    //     else
    //       return true;
    // }

    // var fecha = document.getElementById('input_fechaNacimiento');
    // if(validarFormatoFecha(fecha)){
    //     if(existeFecha(fecha)){
    //             alert("La fecha introducida es correcta.");
    //     }else{
    //             alert("La fecha introducida no existe.");
    //     }
    // }else{
    //     alert("El formato de la fecha es incorrecto.");
    // }

    //Validar Usuario

    var checkOK = "0123456789";
    if (reg_sesion.input_usuario.value.trim() == ""){
    alert("Debe ingresar un valor en el campo Usuario");
    reg_sesion.input_usuario.focus();
        return false
    }
    var checkStr = reg_sesion.input_usuario.value;

    var allValido = true;

    if(reg_sesion.input_usuario.value.length < 10){
        alert("Escriba por lo menos 10 caracteres para el Usuario");
        reg_sesion.input_usuario.focus();
        return false;
    }

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente numeros en el campo Usuario y mayores a los ya existentes");
        reg_sesion.input_usuario.focus();
        return false;
    }

    //Validar confirmacion de contrasena
    contra1=document.getElementById('input_contrasena').value;
    contra2=document.getElementById('input_confirmar').value;

    if (contra1!=contra2) {
        alert('Las contraseñas no coinciden');
    }






}