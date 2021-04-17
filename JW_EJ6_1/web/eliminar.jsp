<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="id" value="${param.id}" />
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                           user="pj_2021_1" password="pj_2021_1"
                           url="jdbc:mysql://localhost/pj_2021_1?serverTimezone=UTC" />
<sql:update dataSource="${db}" var="rs" >
    delete from personas where id=?;
    <sql:param value="${id}" />
</sql:update>
<c:redirect url="index.jsp" />
