<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>

<%
    Map<String,String> errores = (Map<String,String>)request.getAttribute("errores");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario avanzado</title>
    <style>
        small{
            color: red;
        }
    </style>
</head>
<body>

    <h3>Formulario avanzado</h3>

    <form action="./formulario-avanzado" method="post">
        <div>
          <label for="username">Nombre: </label>
          <input type="text" id="username" name="username" />

          <%
            if(errores!=null && errores.containsKey("username")) {
                out.println("<br/><small>"+errores.get("username")+"</small>");
            }
          %>

          <br/>
        </div>
        <div>
          <label for="password">Contraseña: </label>
          <input type="password" id="password" name="password" />

          <%
              if(errores!=null && errores.containsKey("password")) {
                  out.println("<br/><small>"+errores.get("password")+"</small>");
              }
          %>

          <br/>
        </div>
        <div>
          <label for="email">Correo: </label>
          <input type="email" id="email" name="email" />

          <%
              if(errores!=null && errores.containsKey("email")) {
                  out.println("<br/><small>"+errores.get("email")+"</small>");
              }
          %>

          <br/>
        </div>
        <div>
          <label for="country">País: </label>
          <select id="country" name="country">
            <option value="mexico">México</option>
            <option value="colombia">Colombia</option>
            <option value="argentina">Argentina</option>
            <option value="brasil">Brasil</option>
          </select>

          <%
              if(errores!=null && errores.containsKey("country")) {
                  out.println("<br/><small>"+errores.get("country")+"</small>");
              }
          %>

          <br/>
        </div>
        <div>
          <label for="languages">Selecciona tus lenguajes: </label>
          <br/>
          <select id="languages" name="languages" multiple>
            <option value="java">Java</option>
            <option value="python">Python</option>
            <option value="c#">C#</option>
            <option value="php">PHP</option>
            <option value="ensamblador">Ensamblador</option>
          </select>

          <%
              if(errores!=null && errores.containsKey("languages")) {
                  out.println("<br/><small>"+errores.get("languages")+"</small>");
              }
          %>

          <br/>
        </div>
        <div>
            <div>
            <label>Idioma:</label>
            </div>
            <div>
            <input type="checkbox" name="idioma" value="en">
            <label>Inglés</label>
            </div>
            <div>
            <input type="checkbox" name="idioma" value="es">
            <label>Español</label>
            </div>

            <%
                if(errores!=null && errores.containsKey("idiomas")) {
                    out.println("<br/><small>"+errores.get("idiomas")+"</small>");
                }
            %>

            <br/>
        </div>
        <div>
          <input type="submit" value="Enviar datos">
        </div>

    </form>

</body>
</html>