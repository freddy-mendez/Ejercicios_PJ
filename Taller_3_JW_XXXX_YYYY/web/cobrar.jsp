<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:update dataSource="${db}" var="rs">
    update vehiculos set fechaHoraSalida=?, estado=1 where id=?
    <sql:param value="${param.salida}" />
    <sql:param value="${param.id}" />
</sql:update>
<c:redirect url="index.jsp" />
