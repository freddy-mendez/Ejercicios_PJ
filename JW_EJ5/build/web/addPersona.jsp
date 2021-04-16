<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="p" scope="request" class="model.Persona" />
<jsp:useBean id="personas" scope="session" class="model.ListaPersonas" />
<c:if test="${param.doc!=null and param.nom!=null and param.edad!=null and 
                  not empty param.doc and not empty param.nom and not empty param.edad}">
    <c:set target="${p}" property="doc" value="${param.doc}" />
    <c:set target="${p}" property="nombre" value="${param.nom}" />
    <c:set target="${p}" property="edad" value="${param.edad}" />
    <c:set target="${personas}" property="persona" value="${p}" />
    <c:redirect url="verListaObjetos.jsp">
        <c:param name="result" value="Persona creada con exito!!" />
    </c:redirect>
</c:if>
<c:redirect url="verListaObjetos.jsp" >
    <c:param name="result" value="Todos los datos son Obligatorios" />
</c:redirect>

