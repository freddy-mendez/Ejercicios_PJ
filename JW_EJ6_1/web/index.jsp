<%-- 
    Document   : index.jsp
    Created on : 16/04/2021, 06:56:26 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Personas</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                           user="pj_2021_1" password="pj_2021_1"
                           url="jdbc:mysql://localhost/pj_2021_1?serverTimezone=UTC" />
        <sql:query var="rs" dataSource="${db}">
            SELECT * FROM personas;
        </sql:query>
        
        <h1>Lista de Personas</h1>
        <br>
        <a href="agregar.jsp">Agregar Persona</a>
        <br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Documento</th>
                    <th>Nombre</th>
                    <th>Edad</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${rs.rows}" >
                    <tr>
                        <td><c:out value="${p.documento}" /></td>
                        <td><c:out value="${p.nombre}" /></td>
                        <td><c:out value="${p.edad}" /></td>
                        <td><a href="editar.jsp?id=<c:out value="${p.id}" />">Editar</a><br>
                            <a href="eliminar.jsp?id=<c:out value="${p.id}" />">Eliminar</a><br>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
