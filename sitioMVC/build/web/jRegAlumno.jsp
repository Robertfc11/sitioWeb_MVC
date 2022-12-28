<%-- 
 Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>

<% 
String mensaje = "";
ResultSet alumno;
if(request.getSession().getAttribute("insAlumno") != null){
    alumno = (ResultSet)request.getSession().getAttribute("insAlumno");
    if(alumno.getString(1).equals("1")){
        mensaje += "<script languague='javascript'>"
                + "alert('El número de control ya existe, verificar.');"
                + "</script>";
    }
    if(alumno.getString(1).equals("-1")){
        mensaje += "<script languague='javascript'>"
                + "alert('El nombre completo del alumno ya existe, verificar.');"
                + "</script>";
    }
    if(alumno.getString(1).equals("0")){
        mensaje += "<script languague='javascript'>"
                + "alert('El alumno fue registrado éxitosamente');"
                + "</script>";
    }
    request.getSession().setAttribute("insAlumno",null);
}
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar alumno</title>
    <link rel="stylesheet" href="estilos/styles.css">
    <link rel="stylesheet" href="estilos/estilos.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <link rel="stylesheet" href="./CSS/design.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="CCS/estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.10"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/select/1.5.0/js/dataTables.select.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-fixed-top"  style="background-color: #2469A0;">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand navletra" href="jHome.jsp">INICIO</a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active navletra" aria-current="page" href="srvRptAlumnos">REPORTE ALUMNOS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active navletra" href="srvRptItems">REPORTE ITEMS</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link active navletra" href="jRegAlumno.jsp">REGISTRAR ALUMNO</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jRegItem.jsp">REGISTRAR ITEM</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jCompItem.jsp">COMPARTIR ITEM</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jDevolvItem.jsp">DEVOLVER ITEM</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jAcercaDe.jsp">ACERCA DE</a>
        </li>
        
      </ul>     
    </div>
  </div>
</nav>
    <br>
    <section id="body">
        <div class="container">
            <div>
                <h1 class="title">Registrar alumno</h1>
            </div>
            <form action="" method="POST" class="formInput" id="formInput">
                <%=mensaje %>
                <label for="txtNControl">Número de control</label>
                <input type="text" id="txtNControl" name="txtNControl"><br>
                <label for="txtNombre">Nombre</label>
                <input type="text" id="txtNombre" name="txtNombre"><br>
                <label for="txtApaterno">Apellido paterno</label>
                <input type="text" id="txtApaterno" name="txtApaterno"><br>
                <label for="txtAmaterno">Apellido materno</label>
                <input type="text" id="txtAmaterno" name="txtAmaterno"><br>
                <label for="txtRuta">Ruta de foto</label>
                <input type="text" id="txtRuta" name="txtRuta"><br>
                <label for="txtCalle">Calle</label>
                <input type="text" id="txtCalle" name="txtCalle"><br>
                <label for="txtNumero">Número</label>
                <input type="text" id="txtNumero" name="txtNumero"><br>
                <label for="txtColonia">Colonia</label>
                <input type="text" id="txtColonia" name="txtColonia"><br>
                <label for="txtCiudad">Ciudad</label>
                <input type="text" id="txtCiudad" name="txtCiudad"><br>
                <label for="txtEstado">Estado</label>
                <input type="text" id="txtEstado" name="txtEstado"><br>
                <label for="txtCp">Código Postal</label>
                <input type="text" id="txtCp" name="txtCp"><br>
                <label for="txtPais">País</label>
                <input type="text" id="txtPais" name="txtPais"><br>
                <label for="txtTelefono">Telefono</label>
                <input type="text" id="txtTelefono" name="txtTelefono"><br>
                <label for="txtCarrera">Carrera</label>
                <input type="text" id="txtCarrera" name="txtCarrera"><br>
                <input type="submit" value="Registrar" onclick="validar()" class="btnAction">
                <input type="button" value="Limpiar" class="btnAction" onclick="limpiar()">
            </form>
        </div>
    </section>
                <br>
                <br>
    <div class="card text-center color1 letra1">
        <div class="card-header">
          Proyecto Integrador | Desarrollo Avanzado de Sistemas
        </div>
        <div class="card-body">
          <h4 class="card-title">ITPachuca | Ingeniería en Sistemas Computacionales</h5>
        </div>
        <div class="card-footer">
         Todos los derechos reservados&copy; 2022
        </div>
    </div>
    <script>
        function limpiar(){
            document.getElementById('formInput').reset();
        }
        function validar(){
            var id = document.getElementById("txtNControl");
            var nombre = document.getElementById("txtNombre");
            var paterno = document.getElementById("txtApaterno");
            var materno = document.getElementById("txtAmaterno");
            var ruta = document.getElementById("txtRuta");
            var calle = document.getElementById("txtCalle");
            var numero = document.getElementById("txtNumero");
            var colonia = document.getElementById("txtColonia");
            var ciudad = document.getElementById("txtCiudad");
            var estado = document.getElementById("txtEstado");
            var cp = document.getElementById("txtCp");
            var pais = document.getElementById("txtPais");
            var telefono = document.getElementById("txtTelefono");
            var carrera = document.getElementById("txtCarrera");
            
            if(id.value === ""){
                alert("El número de control no puede estar vacío");
            }else{
                if(nombre.value === ""){
                    alert("El nombre no puede estar vacío");
                }else{
                    if(paterno.value === ""){
                        alert("El apellido paterno no puede estar vacío");
                    }else{
                        if(materno.value === ""){
                            alert("El apellido materno no puede estar vacío");
                        }else{
                            if(ruta.value === ""){
                                alert("La ruta no puede estar vacía");
                            }else{
                                if(calle.value === ""){
                                    alert("La calle no puede estar vacía");
                                }else{
                                    if(numero.value === ""){
                                        alert("El número no puede estar vacío");
                                    }else{
                                        if(colonia.value === ""){
                                            alert("La colonia no puede estar vacía");
                                        }else{
                                            if(ciudad.value === ""){
                                                alert("La ciudad no puede estar vacía");
                                            }else{
                                                if(estado.value === ""){
                                                    alert("El estado no puede estar vacío");
                                                }else{
                                                    if(cp.value === ""){
                                                        alert("El código postal no puede estar vacío");
                                                    }else{
                                                        if(pais.value === ""){
                                                            alert("El país no puede estar vacío");
                                                        }else{
                                                            if(telefono.value === ""){
                                                            alert("El teléfono no puede estar vacío");
                                                            }else{
                                                                if(carrera.value === ""){
                                                                    alert("La carrera no puede estar vacía");
                                                                }else{
                                                                    //Validaciones correctas
                                                                    if(confirm("¿Estás seguro de continuar?")){
                                                                        document.forms[0].action = "srvInsAlumno";
                                                                        document.forms[0].submit();
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }   
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    </script>
</body>
</html>
