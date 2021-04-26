<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="conexion.jsp" %>

<sql:query var="rs" dataSource="${db}">
    SELECT * FROM personas where id=?;
    <sql:param value="${param.id}" />
</sql:query>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Persona</title>
    </head>
    <body>
        <h1>Editar Persona</h1>
        <br><br>
        <form action="guardar.jsp?action=2" method="post">
            <input type="hidden" name="id" value="${param.id}" />
            <table border="1">
                <c:forEach var="p" items="${rs.rows}" >
                <tbody>
                    <tr>
                        <td>Documento</td>
                        <td>
                            <input min="1" type="number" name="doc" value="${p.documento}" />
                        </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td>
                            <input type="text" name="nom"  value="${p.nombre}" />
                        </td>
                    </tr>
                    <tr>
                        <td>Edad</td>
                        <td>
                            <input min="1" type="number" name="edad"  value="${p.edad}" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Modificar Persona" />
                        </td>
                    </tr>
                </tbody>
                </c:forEach>
            </table>
        </form>
    </body>
</html>
