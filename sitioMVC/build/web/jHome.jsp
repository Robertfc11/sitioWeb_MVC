<%-- 
 Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="estilos/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <nav id="navbar">
        <ul id="menu">
            <li class="pages"><a href="jHome.jsp">Home</a></li>
            <li class="pages"><a href="srvRptAlumnos">Reporte alumnos</a></li>
            <li class="pages"><a href="srvRptItems">Reporte items</a></li>
            <li class="pages"><a href="jRegAlumno.jsp">Registrar alumno</a></li>
            <li class="pages"><a href="jRegItem.jsp">Registrar item</a></li>
            <li class="pages"><a href="jCompItem.jsp">Compartir item</a></li>
            <li class="pages"><a href="jDevolvItem.jsp">Devolver item</a></li>
            <li class="pages"><a href="jAcercaDe.jsp">Acerca de</a></li>
        </ul>
    </nav>
    <section id="body">
        <div class="container">
            <div>
                <ul id="logos">
                    <li class="items-body">
                        <img src="imagenes/logo-home.png" alt="img" id="logo-body">
                    </li>
                    <li>
                        <img src="imagenes/itp-logo.png" alt="logo ITP" id="logo-ITP">
                    </li>
                </ul>
                <div class="clearfix"></div>
                <h1 class="title">Share Items ITPachuca</h1>
                <p class="description">Herramienta tecnológica que permite la comunicación entre estudiantes del Instituto Tecnológico de Pachuca para que puedan compartir recursos académicos (libros, programas, accesorios de cómputo, asesoría entre alumnos y más) dentro y fuera del Instituto Tecnológico de Pachuca.</p>
                <img src="imagenes/people-talk.jpg" alt="gente hablando" id="img-body">
            </div>
        </div>
    </section>
    <footer id="footer">
        <div class="texto-footer">
            Proyecto Integrador | Desarrollo Avanzado de Sistemas<br>
            Todos los derechos reservados&copy; 2022<br>
            ITPachuca | Ingeniería en Sistemas Computacionales
        </div>
    </footer>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>



-->






<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="estilos/estilos.css" rel="stylesheet" type="text/css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <link rel="stylesheet" href="./CSS/design.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="CCS/estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="estilos/styles.css">
    <link rel="stylesheet" href="estilos/estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.10"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

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
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/select/1.5.0/js/dataTables.select.min.js"></script>
</head>
<body>
    
<!------ Include the above in your HEAD tag ---------->
  
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
        <form class="d-flex" role="search">
        <img src="imagenes/logo-instituto-tecnologico-de-pachuca.png" width="35px" height="35px">
      </form>
        
      </ul>     
    </div>
  </div>
</nav>
<!--
        <nav class="navbar fixed-top navbar-expand-md navbar-new-bottom">
            <div class="navbar-collapse collapse pt-2 pt-md-0" id="navbar2">
                
                
                <ul class="navbar-nav w-100 justify-content-center px-3">
                    <li class="nav-item active">
                        <a class="nav-link" href="jHome.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="srvRptAlumnos">Reporte usuarios</a></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="srvRptItems">Reporte items</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jRegAlumno.jsp">Registrar usuario</a></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="jRegItem.jsp">Registrar item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jCompItem.jsp">Compartir item</a></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jDevolvItem.jsp">Devolver item</a></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jAcercaDe.jsp">Acerca de</a></a>
                    </li>
                    
                </ul>
            </div>
        </nav>
-->



 <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="imagenes/people-talk.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  
</div>



<br>

<h1 class="text-center">Share Items ITPachuca</h1>
<h6 class="text-center">Herramienta tecnológica que permite la comunicación entre estudiantes del Instituto Tecnológico de Pachuca para que puedan compartir recursos académicos (libros, programas, accesorios de cómputo, asesoría entre alumnos y más) dentro y fuera del Instituto Tecnológico de Pachuca.</h6>

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




   
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>
