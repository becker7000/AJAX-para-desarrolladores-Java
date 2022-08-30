<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Usando AJAX simple con JSP</title>
</head>
<body>

    <h3>Probando AJAX</h3>
    <button onclick="mostrar();">Mostrar</button>

    <div id="mostrar">
        Mensaje oculto
    </div>

    <script>
        function mostrar(){
            var solicitud = new XMLHttpRequest();
            solicitud.onreadystatechange = function(){
                if(this.readyState==4 && this.status==200){
                    document.getElementById("mostrar").innerHTML=this.responseText;
                }
            }
            solicitud.open("get","for.jsp",true);
            solicitud.send();
        }
    </script>


</body>
</html>