package cst.javaweb.ajax.forms.control;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/formulario-intermedio")
public class ValidarFormularioIServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html; charset=UTF-8");

        // Obtenemos los valores de los campos del formulario:
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String email=req.getParameter("email");
        String country=req.getParameter("country");
        String[] languages = req.getParameterValues("languages");
        String[] idiomas = req.getParameterValues("idioma");

        // Errores:
        List<String> errores = new ArrayList<>();
        if( username==null || username.isBlank() ){
            errores.add("El nombre de usuario es requerido");
        }
        if( password==null || password.isBlank() ){
            errores.add("La contraseña de usuario es requerida");
        }
        if( email==null || !email.contains("@") ){
            errores.add("El correo no es valido o sin correo");
        }
        if(country==null || country.isBlank()){
            errores.add("El país del usuario es requerido");
        }
        if(languages==null || languages.length==0){
            errores.add("Selecciona al menos un lenguaje");
        }
        if(idiomas==null || idiomas.length==0){
            errores.add("Selecciona al menos un idioma");
        }

        try(PrintWriter salida = resp.getWriter()) {
            if(errores.isEmpty()){
                salida.println("<!DOCTYPE html>");
                salida.println("<html>");
                salida.println("    <head>");
                salida.println("        <meta charset=\"UTF-8\">");
                salida.println("        <title>Datos guardados</title>");
                salida.println("    </head>");
                salida.println("    <body>");
                salida.println("        <h1>Validando formulario intermedio</h1>");

                //Imprimiendo en el navegador los datos del formulario:
                salida.println("        <ul>");
                salida.println("            <li> Nombre: " + username + "</li>");
                salida.println("            <li> Contraseña: " + password + "</li>");
                salida.println("            <li> Correo: " + email + "</li>");
                salida.println("            <li> País: " + country + "</li>");

                //Imprimiendo una lista de valores:
                salida.println("<p>Lenguajes favoritos del usuario:</p>");
                for (int i = 0; i < languages.length; i++) {
                    salida.println("        <li>&nbsp;&nbsp; " + (i + 1) + ")&nbsp;" + languages[i] + "</li>");
                }

                salida.println("<p>Idiomas del usuario:</p>");
                for (int i = 0; i < idiomas.length; i++) {
                    salida.println("        <li>&nbsp;&nbsp; " + (i + 1) + ")&nbsp;" + idiomas[i] + "</li>");
                }

                salida.println("        </ul>");
                salida.println("    </body>");
                salida.println("</html>");
            }else{
                req.setAttribute("errores",errores);
                //Despachamos al archivo JSP para que valide:
                getServletContext()
                        .getRequestDispatcher("/formularioIntermedio.jsp")
                        .forward(req,resp);
            }
        }


    }
}
