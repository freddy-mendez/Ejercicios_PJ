<%-- 
    Document   : home
    Created on : 26-feb-2021, 21:05:24
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    boolean isLogin = false;
    if (request.getSession().getAttribute("isLogin")!=null) {
        isLogin = (Boolean) request.getSession().getAttribute("isLogin");
    }
    if (!isLogin) {
        response.sendRedirect("index.jsp");
        return;
    }
    String saludo = (String) request.getSession().getAttribute("saludo");
    request.getSession().removeAttribute("saludo");
    String [] amigos = (String []) request.getSession().getAttribute("amigos");
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (saludo!=null && saludo.length()>0) {
            %>
        <h1><%=saludo%></h1>
        <%
            }
        %>
        <form action="AddAmigos" method="POST">
        <table border="0">
            <tbody>
                <tr>
                    <td>Nombre</td>
                    <td>
                        <input type="text" name="nombre" value="" />
                    </td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td>
                        <input type="text" name="apellido" value="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Agregar" />
                    </td>
                </tr>
            </tbody>
        </table>
        </form>
        
        <%
            if (amigos!=null && amigos.length>0) {
                for (String amigo : amigos) {
                    out.println(amigo+"<br>");
                }
            }
            %>
    </body>
</html>
