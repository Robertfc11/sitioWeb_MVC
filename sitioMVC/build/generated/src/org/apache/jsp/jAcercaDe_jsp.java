package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class jAcercaDe_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"es\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Acerca de</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"estilos/styles.css\">\n");
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
      out.write("                <h1 class=\"title\">Acerca de</h1>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"about\">\n");
      out.write("                <h2>Integrantes del equipo</h2>\n");
      out.write("                <div class=\"ab\">\n");
      out.write("                <div class=\"about-student\">\n");
      out.write("                    <h3>Nancy Hernández Sánchez</h3>\n");
      out.write("                    <h4>Ingeniería en Sistemas Computacionales</h4>\n");
      out.write("                    <h4>Número de control: 18200765</h4>\n");
      out.write("                    <img src=\"imagenes/nancy.jpg\" alt=\"Nancy Hernández Sánchez\" class=\"img-about\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"about-student\">\n");
      out.write("                    <h3>Jesús Eduardo Rodarte Escamilla</h3>\n");
      out.write("                    <h4>Ingeniería en Sistemas Computacionales</h4>\n");
      out.write("                    <h4>Número de control: 18200202</h4>\n");
      out.write("                    <img src=\"imagenes/agaves.jpeg\" alt=\"Jesús Eduardo Rodarte Escamilla\" class=\"img-about\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"about-student\">\n");
      out.write("                    <h3>Frida Sarahi Meneses Rivera</h3>\n");
      out.write("                    <h4>Ingeniería en Sistemas Computacionales</h4>\n");
      out.write("                    <h4>Número de control: 18200772</h4>\n");
      out.write("                    <img src=\"imagenes/Fridaaa.jpg\" alt=\"Frida Sarahi Meneses Rivera\" class=\"img-about\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
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
