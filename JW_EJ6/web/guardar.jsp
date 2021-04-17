<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                           user="pj_2021_1" password="pj_2021_1"
                           url="jdbc:mysql://localhost/pj_2021_1?serverTimezone=UTC" />

<c:set var="accion" value="${param.action}" />
<c:choose>
    <c:when test="${action==1}">
        <sql:update dataSource="${db}" var="rs" >
            insert into personas values (NULL, ?, ?, ?);
            <sql:param value="${param.doc}" />
            <sql:param value="${param.nom}" />
            <sql:param value="${param.edad}" />
        </sql:update>
    </c:when>
    <c:otherwise>
        <sql:update dataSource="${db}" var="rs" >
            update personas set documento=?, nombre=?, edad=? where id=?;
            <sql:param value="${param.doc}" />
            <sql:param value="${param.nom}" />
            <sql:param value="${param.edad}" />
            <sql:param value="${param.id}" />
        </sql:update>
    </c:otherwise>
</c:choose>

<c:redirect url="index.jsp" />
