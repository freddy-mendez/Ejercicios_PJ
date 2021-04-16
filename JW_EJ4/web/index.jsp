<%@page import="model.Amigo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Amigos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </head>
    
        <jsp:useBean id="lista" scope="session" class="model.ListaAmigos" />
        
        <jsp:useBean id="lista1" scope="application" class="model.ListaAmigos" />
        
        
        <jsp:setProperty name="lista" property="nombre" value="Mi Lista" />
        
        <%
        String result = request.getParameter("result");
        String action = request.getParameter("action");
        if (result!=null && result.equals("OK")) {
            String msg = "";
            if (action!=null && action.equals("add")) {
                msg = "Amigo agregado con exito!!!";
            } else if (action!=null && action.equals("delete")) {
                msg = "Amigo eliminado con exito!!!";
            }
            out.println("<h3 style='color:#00FF00;'>"+msg+"</h3>");
        } else if (result!=null && result.equals("ERROR")) {
            String msg = "";
            if (action!=null && action.equals("add")) {
                msg = "Amigo no se pudo agregar!!!";
            } else if (action!=null && action.equals("delete")) {
                msg = "Amigo no se pudo eliminar!!!";
            }
            out.println("<h3 style='color:#FF0000;'>"+msg+"</h3>");
        }
        Amigo a = new Amigo();
        a.setNombre("Freddy");
        a.setApellido("Mendez");
        a.setEdad(40);
        if (lista.getAmigos().size()==0) {
            lista.getAmigos().add(a);
            lista1.getAmigos().add(a);
        }
        %>
        
        
        <form action="Control?action=add" method="POST">
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
                    <td>Edad</td>
                    <td>
                        <input type="number" name="edad" value=""  step="1" />
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
        
        <h1><jsp:getProperty name="lista" property="nombre" /></h1>
        <br>
        
        
        <table class="table table-striped" border="1">
               <thead>
                   <tr>
                       <th>Nombre</th>
                       <th>Apellido</th>
                       <th>Edad</th>
                       <th>Opciones</th>
                   </tr>
               </thead>
               <tbody>
                   <%
                for (int i=0; i<lista.getAmigos().size(); i++) {
                    Amigo amigo = (Amigo)lista.getAmigo(i);
                    out.println("<tr>");
                    out.println("<td>"+amigo.getNombre()+"</td>");
                    out.println("<td>"+amigo.getApellido()+"</td>");
                    out.println("<td>"+amigo.getEdad()+"</td>");
                    out.println("<td><a href='Control?action=delete&pos="+i+"'>Eliminar</a></td>");
                    out.println("</tr>");
                }
                %>
                </tbody>
           </table>
                
           <jsp:getProperty name="lista1" property="amigos" />     
    
</html>
