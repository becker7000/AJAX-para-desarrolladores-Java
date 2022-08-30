<%! int tam; %>
<%! String[] colores = {"darkblue","darkred","darkgreen","darkgray"}; %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Usando for</title>
</head>
<body>

    <h3>For en un JSP</h3>
    <% for(tam=0; tam<4; tam++){ %>
        <font color="<%=colores[tam]%>" size="<%=(tam+1)%>" >
            Java Server Pages
        </font><br/>
    <% } %>

</body>
</html>