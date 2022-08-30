<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<%
    List<String> errores = (List<String>)request.getAttribute("errores");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario intermedio</title>
</head>
<body>

    <h3>Formulario intermedio</h3>

    <% if( errores!=null && errores.size()>0 ){ %>
        <ul>
            <% for(String error : errores){ %>
                <li style='color:red;'><%=error%></li>
            <% } %>
        </ul>
    <% } %>

    <form action="./formulario-intermedio" method="post">
        <div>
            <label for="username">Nombre: </label>
            <input type="text" id="username" name="username" />
            <br/>
        </div>
        <div>
            <label for="password">Contraseña: </label>
            <input type="password" id="password" name="password" />
            <br/>
        </div>
        <div>
            <label for="email">Correo: </label>
            <input type="email" id="email" name="email" />
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
            <br/>
        </div>
        <div>
            <input type="submit" value="Enviar datos">
        </div>

    </form>

</body>
</html>