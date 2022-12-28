package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class jHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("<html lang=\"es\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Home</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"estilos/styles.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <nav id=\"navbar\">\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("            <li class=\"pages\"><a href=\"jHome.jsp\">Home</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"srvRptAlumnos\">Reporte alumnos</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"srvRptItems\">Reporte items</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"jRegAlumno.jsp\">Registrar alumno</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"jRegItem.jsp\">Registrar item</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"jCompItem.jsp\">Compartir item</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"jDevolvItem.jsp\">Devolver item</a></li>\n");
      out.write("            <li class=\"pages\"><a href=\"jAcercaDe.jsp\">Acerca de</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("    <section id=\"body\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div>\n");
      out.write("                <ul id=\"logos\">\n");
      out.write("                    <li class=\"items-body\">\n");
      out.write("                        <img src=\"imagenes/logo-home.png\" alt=\"img\" id=\"logo-body\">\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <img src=\"imagenes/itp-logo.png\" alt=\"logo ITP\" id=\"logo-ITP\">\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("                <h1 class=\"title\">Share Items ITPachuca</h1>\n");
      out.write("                <p class=\"description\">Herramienta tecnológica que permite la comunicación entre estudiantes del Instituto Tecnológico de Pachuca para que puedan compartir recursos académicos (libros, programas, accesorios de cómputo, asesoría entre alumnos y más) dentro y fuera del Instituto Tecnológico de Pachuca.</p>\n");
      out.write("                <img src=\"imagenes/people-talk.jpg\" alt=\"gente hablando\" id=\"img-body\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <footer id=\"footer\">\n");
      out.write("        <div class=\"texto-footer\">\n");
      out.write("            Proyecto Integrador | Desarrollo Avanzado de Sistemas<br>\n");
      out.write("            Todos los derechos reservados&copy; 2022<br>\n");
      out.write("            ITPachuca | Ingeniería en Sistemas Computacionales\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"es\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Home</title>\n");
      out.write("    <link href=\"estilos/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("    <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"./CSS/design.css\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://getbootstrap.com/docs/5.2/assets/css/docs.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://getbootstrap.com/docs/5.2/assets/css/docs.css\" rel=\"stylesheet\">\n");
      out.write("    <title>Bootstrap Example</title>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"CCS/estilos.css\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write(" <link rel=\"stylesheet\" href=\"estilos/styles.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"estilos/estilos.css\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/vue@2.7.10\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js\"></script>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"./CSS/design.css\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://getbootstrap.com/docs/5.2/assets/css/docs.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css\">\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"CCS/estilos.css\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/vue@2.7.10\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.1.js\" integrity=\"sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js\"></script>\n");
      out.write("    \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/select/1.5.0/js/dataTables.select.min.js\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.1.js\" integrity=\"sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js\"></script>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://getbootstrap.com/docs/5.2/assets/css/docs.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/select/1.5.0/js/dataTables.select.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("  \n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-fixed-top\"  style=\"background-color: #2469A0;\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarTogglerDemo03\" aria-controls=\"navbarTogglerDemo03\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <a class=\"navbar-brand navletra\" href=\"jHome.jsp\">INICIO</a>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarTogglerDemo03\">\n");
      out.write("      <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" aria-current=\"page\" href=\"srvRptAlumnos\">REPORTE ALUMNOS</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" href=\"srvRptItems\">REPORTE ITEMS</a>\n");
      out.write("        </li> \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" href=\"jRegAlumno.jsp\">REGISTRAR ALUMNO</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" href=\"jRegItem.jsp\">REGISTRAR ITEM</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" href=\"jCompItem.jsp\">COMPARTIR ITEM</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" href=\"jDevolvItem.jsp\">DEVOLVER ITEM</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active navletra\" href=\"jAcercaDe.jsp\">ACERCA DE</a>\n");
      out.write("        </li>\n");
      out.write("        <form class=\"d-flex\" role=\"search\">\n");
      out.write("        <img src=\"imagenes/logo-instituto-tecnologico-de-pachuca.png\" width=\"35px\" height=\"35px\">\n");
      out.write("      </form>\n");
      out.write("        \n");
      out.write("      </ul>     \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("<!--\n");
      out.write("        <nav class=\"navbar fixed-top navbar-expand-md navbar-new-bottom\">\n");
      out.write("            <div class=\"navbar-collapse collapse pt-2 pt-md-0\" id=\"navbar2\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <ul class=\"navbar-nav w-100 justify-content-center px-3\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"jHome.jsp\">Inicio</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"srvRptAlumnos\">Reporte usuarios</a></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"srvRptItems\">Reporte items</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"jRegAlumno.jsp\">Registrar usuario</a></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"jRegItem.jsp\">Registrar item</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"jCompItem.jsp\">Compartir item</a></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"jDevolvItem.jsp\">Devolver item</a></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"jAcercaDe.jsp\">Acerca de</a></a>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-bs-ride=\"true\">\n");
      out.write("  <div class=\"carousel-inner\">\n");
      out.write("    <div class=\"carousel-item active\">\n");
      out.write("      <img src=\"imagenes/people-talk.jpg\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<h1 class=\"text-center\">Share Items ITPachuca</h1>\n");
      out.write("<h6 class=\"text-center\">Herramienta tecnológica que permite la comunicación entre estudiantes del Instituto Tecnológico de Pachuca para que puedan compartir recursos académicos (libros, programas, accesorios de cómputo, asesoría entre alumnos y más) dentro y fuera del Instituto Tecnológico de Pachuca.</h6>\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<div class=\"card text-center color1 letra1\">\n");
      out.write("        <div class=\"card-header\">\n");
      out.write("          Proyecto Integrador | Desarrollo Avanzado de Sistemas\n");
      out.write("        </div>\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("          <h4 class=\"card-title\">ITPachuca | Ingeniería en Sistemas Computacionales</h5>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"card-footer\">\n");
      out.write("         Todos los derechos reservados&copy; 2022\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}