<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function volver() {
                //alert('Vuelve al listar');
                window.location.href="index.jsp";
            }
        </script>
    </head>
    <body>
        <sql:query dataSource="${db}" var="rs">
            select *, TIMESTAMPDIFF(MINUTE,fechaHoraIngreso, NOW()) AS tiempo, NOW() AS salida from vehiculos where id=?
            <sql:param value="${param.id}" />
        </sql:query>
        <c:forEach var="v" items="${rs.rows}">
        <h1>Vehiculo ${v.placa}</h1>
        <table>
            <tr>
                <td>Ingreso</td>
                <td>${v.fechaHoraIngreso}</td>
            </tr>
            <tr>
                <td>Salida</td>
                <td>${v.salida}</td>
            </tr>
            <tr>
                <td>Tiempo</td>
                <td>${Math.ceil(v.tiempo/60)}</td>
            </tr>
            
            <tr>
                <td>Valor a pagar</td>
                <td>${Math.ceil(v.tiempo/60)*4500}</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <form action="cobrar.jsp">
                        <input type="hidden" name="salida" value="${v.salida}" />
                        <input type="hidden" name="id" value="${param.id}" />
                        <input type="submit" value="Pagar" />
                        <input type="button" value="Volver" onclick="volver();" />
                    </form>                    
                </td>
            </tr>
        </table>
        
        </c:forEach>
    </body>
</html>
