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
ResultSet item;
if(request.getSession().getAttribute("insItem") != null){
    item = (ResultSet)request.getSession().getAttribute("insItem");
    if(item.getString(1).equals("1")){
        mensaje += "<script languague='javascript'>"
                + "alert('El propietario no existe, verificar.');"
                + "</script>";
    }
    if(item.getString(1).equals("-1")){
        mensaje += "<script languague='javascript'>"
                + "alert('El item ya existe, verificar.');"
                + "</script>";
    }
    if(item.getString(1).equals("0")){
        mensaje += "<script languague='javascript'>"
                + "alert('El item fue registrado éxitosamente');"
                + "</script>";
    }
    request.getSession().setAttribute("insItem",null);
}
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Item</title>
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
                <h1 class="title">Registrar item</h1>
            </div>
            <form action="" method="POST" class="formInput" id="formInput">
                <%=mensaje %>
                <label for="txtNombre">Nombre</label>
                <input type="text" name="txtNombre" id="txtNombre"><br>
                <label for="txtCategoria">Categoria</label><br>
                <label>(electrónicos, libros, asesoría, etc)</label>
                <input type="text" name="txtCategoria" id="txtCategoria"><br>
                <label for="txtDescripcion">Descripción</label><br>
                <input type="text" name="txtDescripcion" id="txtDescripcion"><br>
                <label for="txtRuta">Estado</label><br>
                <label>(Disponible/No Disponible)</label>
                <input type="text" name="txtEstado" id="txtEstado"><br>
                <label for="txtRuta">Ruta de la foto</label><br>
                <label>(imagenes/items/..)</label>
                <input type="text" name="txtRuta" id="txtRuta"><br>
                <label for="txtAlumno">Dueño</label><br>
                <label>(No. de control)</label>
                <input type="text" name="txtAlumno" id="txtAlumno"><br>
                <input type="submit" value="Registrar" onclick="validar()">
                <input type="button" value="Cancelar" onclick="limpiar()">
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
            var nombre = document.getElementById("txtNombre");
            var categoria = document.getElementById("txtCategoria");
            var descripcion = document.getElementById("txtDescripcion");
            var estado = document.getElementById("txtEstado");
            var ruta = document.getElementById("txtRuta");
            var alumno = document.getElementById("txtAlumno");
            
            if(nombre.value === ""){
                alert("El nombre no puede estar vacío");
            }else{
                if(categoria.value === ""){
                    alert("La categoria no puede estar vacía");
                }else{
                    if(descripcion.value === ""){
                        alert("La descripcion no puede estar vacía");
                    }else{
                        if(estado.value === ""){
                            alert("El estado puede estar vacío");
                        }else{
                            if(ruta.value === ""){
                                alert("La foto no puede estar vacía");
                            }else{
                                if(alumno.value === ""){
                                    alert("El dueño no puede estar vacío");
                                }else{
                                    //Validaciones correctas
                                    if(confirm("¿Estás seguro de continuar?")){
                                        document.forms[0].action = "srvInsItem";
                                        document.forms[0].submit();
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
