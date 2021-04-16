
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="personas" scope="session" class="model.ListaPersonas" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Numero de personas: <c:out value="${personas.personas.size()}" /> </h1>
        <c:if test="${param.result!=null}">
            <h2><c:out value="${param.result}" /></h2>
        </c:if>
        <form action="addPersona.jsp">
                <table border="1">
                    <tbody>
                        <tr>
                            <td>Documento</td>
                            <td>
                                <input min="1" type="number" name="doc" 
                                       
                                       />
                            </td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <input type="text" name="nom" 
                                       
                                       /> 
                            </td>
                        </tr>
                        <tr>
                            <td>Edad</td>
                            <td>
                                <input min="1" type="number" name="edad" 
                                       
                                       />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Agregar Persona" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
            <table border="1">
                <thead>
                    <tr>
                        <th>Documento</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                    </tr>
                </thead>
            <c:forEach items="${personas.personas}" var="p" >
                <tr>
                    <td><c:out value="${p.doc}" /></td>
                    <td><c:out value="${p.nombre}" /></td>
                    <td><c:out value="${p.edad}" /></td>
                </tr>
            </c:forEach>
            </table>
            
            <table border="1">
                <thead>
                    <tr>
                        <th>Token</th>
                    </tr>
                </thead>
                <c:forTokens delims=";" items="Hola;Mundos;Feliz" var="p" >
                <tr>
                    <td><c:out value="${p}" /></td>
                </tr>
                </c:forTokens>
            </table>
    </body>
</html>
