<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Amigo,java.util.ArrayList"%>

<%
    boolean isError = false;
    String error = "";
    if (request.getSession().getAttribute("error")!=null) {
        isError = true;
        error = (String)request.getSession().getAttribute("error");
    }
    
    ArrayList amigos;
    if (request.getSession().getAttribute("amigos")!=null) {
        amigos=(ArrayList)request.getSession().getAttribute("amigos");
    } else {
        amigos=new ArrayList();
    }/**/
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Amigos</title>
    </head>
    <body>
        <%
           if (isError) {
            %>
       <h3><%=error%></h3>
        <%
            }
        %>
        <form action="AddAmigos" method="POST">
        <table border="0">
            <tbody>
                <tr>
                    <td>Nombre</td>
                    <td>
                        <input type="text" name="nombre" value="" />
                    </td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td>
                        <input type="text" name="apellido" value="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Agregar" />
                    </td>
                </tr>
            </tbody>
        </table>
        </form>
        
        <%
           if (amigos!=null && amigos.size()>0) { 
        %>
           <table>
               <thead>
                   <tr>
                       <th>Nombre</th>
                       <th>Apellido</th>
                       <th>Opciones</th>
                   </tr>
               </thead>
               <tbody>
                   <%
                for (int i=0; i<amigos.size(); i++) {
                    Amigo amigo = (Amigo)amigos.get(i);
                    out.println("<tr>");
                    out.println("<td>"+amigo.getNombre()+"</td>");
                    out.println("<td>"+amigo.getApellido()+"</td>");
                    out.println("<td><a href='DeleteAmigo?pos="+i+"'>Eliminar</a></td>");
                    out.println("</tr>");
                }
                %>
                </tbody>
           </table>
                <%
            } else {
                out.println("Sin Amigos");
}
            %>
    </body>
</html>
