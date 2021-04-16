<%-- 
    Document   : login
    Created on : 19-feb-2021, 21:19:57
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css" />
    </head>
    <body>
        <%
            String error = request.getParameter("error");
            if (error!=null && error.equals("1")) {
                out.println("<h3>USER/CLAVE INCORRECTOR</h3>");
            }
        %>
        
        <form action="validar.jsp" method="POST">
            <input type="text" name="user" value="" /><br>
            <input type="password" name="clave" value="" /><br>
            <input type="submit" value="Ingresar" />
        </form>
    </body>
</html>
