<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:query dataSource="${db}" var="rs">
    select count(*) as contador from vehiculos WHERE placa=? and estado=0
    <sql:param value="${param.placa}" />
</sql:query>
    <c:forEach var="v" items="${rs.rows}">
        <c:if test="${v.contador == 0}">
            
            <c:catch var="errorSql">
                <sql:update dataSource="${db}" var="rs">
                INSERT INTO vehiculos VALUES (NULL, ?, NOW(), NULL, 0)
                <sql:param value="${param.placa}" />
                </sql:update>
            </c:catch>
                <c:if test="${errorSql==null}">
                    <c:redirect url="index.jsp" />
                </c:if>
        </c:if>
    </c:forEach>
                <c:out value="${errorSql.getMessage()}" />
                <h1>El vehiculo ya esta registrado en el parqueadero</h1>
                <h3>o <a href="agregar.jsp">volver</a></h3>