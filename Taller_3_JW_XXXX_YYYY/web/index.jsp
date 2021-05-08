<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="db" 
                   driver="com.mysql.jdbc.Driver" 
                   user="root" 
                   password="" scope="session"
                   url="jdbc:mysql://localhost:3306/parqueadero_2021_1?serverTimezone=America/Bogota" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <br>
        <a href="agregar.jsp">Ingresar Vehiculo</a>
        <br>
        <h1>Lista de Vehiculos</h1>
        <sql:query dataSource="${db}" var="rs">
            select * from vehiculos
        </sql:query>
        <table border="1">
            <thead>
                <tr>
                    <th>Placa</th>
                    <th>Ingreso</th>
                    <th>Salida</th>
                    <th>Estado</th>
                    <th>Accion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="v" items="${rs.rows}">
                <tr>
                    <td> <c:out value="${v.placa}" /> </td>
                    <td><c:out value="${v.fechaHoraIngreso}" /></td>
                    <td>${v.fechaHoraSalida}</td>
                    <td>
                        <c:choose>
                            <c:when test="${v.estado==0}" >
                                <c:out value="Activo" />
                            </c:when>
                            <c:when test="${v.estado==1}" >
                                <c:out value="Pago" />
                            </c:when>
                            <c:otherwise>
                                <c:out value="Estado No Valido" />
                            </c:otherwise>
                        </c:choose>
                         </td>
                    <td>
                        <c:if test="${v.estado==0}">
                            <a href="pagar.jsp?id=${v.id}">Pagar</a>
                        </c:if>
                        </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
