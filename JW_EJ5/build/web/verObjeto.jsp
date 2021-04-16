<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="p" scope="session" class="model.Persona" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:if test="${nombre != null}" var="flag">
        <h1><c:out value="${nombre}" /></h1>
    </c:if>
    <c:out value="${flag}" />
    <c:choose>
        <c:when test="${nombre != null}">
            <h1><c:out value="${nombre}" /></h1>
        </c:when>
        <c:otherwise>
            <h1><c:out value="Variable nombre es nula" /></h1>
        </c:otherwise>
    </c:choose>
    <c:out value="Documento:${param.doc}" />
    <c:out value="Nombre:${param.nom}" />
    <c:out value="Edad:${param.edad}" />
    <c:if test="${param.doc!=null and param.nom!=null and param.edad!=null and 
                  not empty param.doc and not empty param.nom and not empty param.edad}">
        <c:set target="${p}" property="doc" value="${param.doc}" />
        <c:set target="${p}" property="nombre" value="${param.nom}" />
        <c:set target="${p}" property="edad" value="${param.edad}" />
    </c:if>
    <c:if test="${p.doc != 0}" >
        <br>
        <c:out value="${p}" />
    </c:if>
            <form>
                <table border="1">
                    <tbody>
                        <tr>
                            <td>Documento</td>
                            <td>
                                <input min="1" type="number" name="doc" 
                                       <c:if test="${p.doc != 0}" >
                                           value="${p.doc}"
                                       </c:if>
                                       />
                            </td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <input type="text" name="nom" 
                                       <c:if test="${p.nombre!=null and not empty p.nombre}" >
                                           value="${p.nombre}"
                                       </c:if>
                                       /> 
                            </td>
                        </tr>
                        <tr>
                            <td>Edad</td>
                            <td>
                                <input min="1" type="number" name="edad" 
                                       <c:if test="${p.edad != 0}" >
                                           value="${p.edad}"
                                       </c:if>
                                       />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Fijar Informacion" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
            
    </body>
</html>
