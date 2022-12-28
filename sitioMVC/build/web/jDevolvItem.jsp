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
ResultSet devItem;
if(request.getSession().getAttribute("devItem") != null){
    devItem = (ResultSet)request.getSession().getAttribute("devItem");
    if(devItem.getString(1).equals("-1")){
        mensaje += "<script languague='javascript'>"
                + "alert('El ID del item no existe, verificar.');"
                + "</script>";
    }
    if(devItem.getString(1).equals("2")){
        mensaje += "<script languague='javascript'>"
                + "alert('El número de control del alumno del prestamo no existe, verificar.');"
                + "</script>";
    }
    if(devItem.getString(1).equals("1")){
        mensaje += "<script languague='javascript'>"
                + "alert('El item ya fue devuelto, verificar.');"
                + "</script>";
    }
    if(devItem.getString(1).equals("0")){
        mensaje += "<script languague='javascript'>"
                + "alert('La devolución del item fue realizado éxitosamente.');"
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
    <title>Compartir item</title>
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
                <h1 class="title">Devolver item</h1>
            </div>
            <form action="" method="POST" class="formInput" id="formInput">
                <%=mensaje %>
                <label for="txtLugar">Lugar de entrega</label><br>
                <label>(puede ser dentro o fuera del Tec)</label>
                <input type="text" id="txtLugar" name="txtLugar"><br>
                <label for="txtFecha">Fecha y hora</label>
                <input type="datetime-local" id="txtFecha" name="txtFecha"><br>
                <label for="txtAluReceptor">Alumno receptor</label><br>
                <label>(número de control)</label>
                <input type="text" id="txtReceptor" name="txtReceptor"><br>
                <label for="txtEstatus">ID del item</label><br>
                <input type="text" id="txtItem" name="txtItem"><br>
                <input type="submit" value="Devolver" onclick="verificar()">
                <input type="button" value="Cancelar" onclick="limpiar()"><br>
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
        function verificar(){
            var lugar = document.getElementById("txtLugar");
            var fecha = document.getElementById("txtFecha");
            var receptor = document.getElementById("txtReceptor");
            var item = document.getElementById("txtItem");
            
            if(lugar.value === ""){
                alert("El lugar no puede estar vacío");
            }else{
                if(fecha.value === ""){
                    alert("La fecha no puede estar vacíá");
                }else{
                    if(receptor.value === ""){
                        alert("El número de control del alumno receptor no puede estar vacío");
                    }else{
                        if(item.value === ""){
                            alert("El ID del item no puede estar vacío");
                        }else{
                            //Validaciones correctas
                            if(confirm("¿Estás seguro de continuar?")){
                                document.forms[0].action = "srvDevItems";
                                document.forms[0].submit();
                            }
                        }
                    }
                }
            }
        }
    </script>
    
    
</body>
</html>
