<%-- 
    Document   : index
    Created on : 7/05/2021, 08:25:29 PM
    Author     : USUARIO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="co.edu.uts.sistema.modelo.Vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="vehiculoDAO" scope="session" class="co.edu.uts.sistema.db.VehiculoDAO" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Vehiculos</h1>
        <br>
        <a href="../index.jsp">Volver Menu</a>
        <br>
        <br>
        <%
        ArrayList<Vehiculo> datos = vehiculoDAO.getVehiculos();
        if (datos.size()>0) {
            %>
            <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Placa</th>
                        <th>Fecha-Hora Ingreso</th>
                        <th>Fecha-Hora Salida</th>
                        <th>Estado</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Vehiculo v: datos) {
                            out.print(v.getTrHtml());
                        }
                    %>
                </tbody>
            </table>
            <%
        } else {
            out.println("<h3>No existen Vehiculos almacenados</h3>");
        }
        %>
    </body>
</html>
