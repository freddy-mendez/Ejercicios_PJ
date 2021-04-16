<%@page pageEncoding="UTF-8"%>
<%
    
if (request.getParameter("user").equals("123") &&
        request.getParameter("clave").equals("321")) {
    response.sendRedirect("home.jsp");
} else {
    response.sendRedirect("login.jsp?error=1");
}
    

%>
