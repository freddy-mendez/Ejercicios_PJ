<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="conexion.jsp" %>

<c:set var="action" value="${param.action}" />

<c:choose>
    <c:when test="${action==1}">
        <sql:update dataSource="${db}" var="rs" >
            insert into personas values (NULL, ?, ?, ?);
            <sql:param value="${param.doc}" />
            <sql:param value="${param.nom}" />
            <sql:param value="${param.edad}" />
        </sql:update>
    </c:when>
    <c:when test="${action==2}">
        <sql:update dataSource="${db}" var="rs" >
            update personas set documento=?, nombre=?, edad=? where id=?;
            <sql:param value="${param.doc}" />
            <sql:param value="${param.nom}" />
            <sql:param value="${param.edad}" />
            <sql:param value="${param.id}" />
        </sql:update>
    </c:when>
</c:choose>

<c:redirect url="index.jsp" />
