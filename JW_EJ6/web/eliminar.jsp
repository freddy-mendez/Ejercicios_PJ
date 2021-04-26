<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="id" value="${param.id}" />

<%@include file="conexion.jsp" %>

<sql:update dataSource="${db}" var="rs" >
    delete from personas where id=?;
    <sql:param value="${id}" />
</sql:update>
<c:redirect url="index.jsp" />
