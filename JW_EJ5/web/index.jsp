<%-- 
    Document   : index.jsp
    Created on : 9/04/2021, 06:52:51 PM
    Author     : USUARIO
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="nombre" value="Freddy" scope="session" />
        <h1><c:out value="Hola ${nombre}, sea usted Bienvenido!!"/></h1>
        <a href="verNombre.jsp">Ver Nombre</a>
        <a href="verObjeto.jsp">Ver Objeto</a>
        <a href="verListaObjetos.jsp">Ver Lista de Objetos</a>
        
    </body>
</html>
