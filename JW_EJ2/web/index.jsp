<%-- 
    Document   : index
    Created on : 26-feb-2021, 19:05:54
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

String error = (String) request.getSession().getAttribute("error");

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <%
            if (error!=null) {
                out.println("<h1>"+error+"</h1>");
            }
            %>
        <form action="Control" method="POST">
        <table border="0" align="center" >
            <tbody>
                <tr>
                    <td>Usuario</td>
                    <td>
                        <input class="form-control" type="text" name="user" value="" />
                    </td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td>
                        <input class="form-control" type="password" name="passwd" value="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"  align="center">
                        <input class="btn btn-success" type="submit" value="Ingresar" />
                    </td>
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
