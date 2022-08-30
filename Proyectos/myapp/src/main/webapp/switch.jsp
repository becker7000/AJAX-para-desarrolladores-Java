<%! int dia = 2; %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Usando switch con JSP</title>
</head>
<body>

    <h2>Usando switch</h2>
    <%
        switch(dia){
            case 0:
                out.println("<em>Hoy es domingo</em>");
                break;
            case 1:
                out.println("<em>Hoy es lunes</em>");
                break;
            case 2:
                out.println("<em>Hoy es martes</em>");
                break;
            case 3:
                out.println("<em>Hoy es miércoles</em>");
                break;
            case 4:
                out.println("<em>Hoy es jueves</em>");
                break;
            case 5:
                out.println("<em>Hoy es viernes</em>");
                break;
            case 6:
                out.println("<em>Hoy es sábado</em>");
                break;
        }
    %>

</body>
</html>