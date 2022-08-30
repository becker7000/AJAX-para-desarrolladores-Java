<%@ page contentType="text/html;charset=UTF-8" %>

<%-- Esto es una declaración --%>
<%! java.util.Calendar calendario = java.util.Calendar.getInstance();  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mi primer JSP</title>
</head>
<body>

    <pre>
    <h2>Hola a todos con Tomcat desde un JSP</h2>
    <%-- Esto es un scriptlet --%>
    <%
        out.println("Tu dirección es: "+request.getRemoteAddr());
    %>

    <% if( calendario.get(java.util.Calendar.AM_PM) == java.util.Calendar.AM ){ %>
        <h4> Buenos días </h4>
    <% }else{ %>
        <h4> Buenas tardes </h4>
    <% } %>

    <%-- Esto es una declaración --%>
    <h4>La fecha del día de hoy es: <%=calendario.getTime()%> </h4>

</body>
</html>