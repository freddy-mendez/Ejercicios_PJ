<%@page import="com.google.gson.Gson"%>
<%@page import="org.json.simple.JSONValue"%>
<%@page contentType="application/json"%>
<%@page import="java.util.ArrayList"%>
<%@page import="co.edu.uts.sistema.modelo.Vehiculo"%>
<jsp:useBean id="vehiculoDAO" scope="session" class="co.edu.uts.sistema.db.VehiculoDAO" />
<%
    ArrayList<Vehiculo> datos = vehiculoDAO.getVehiculos();
    /*out.print("{\"vehiculos\":[");  
    boolean primero=true;
    for (Vehiculo v: datos) {
        if (!primero) {
            out.print(","+v.getJson());
        } else {
            out.print(v.getJson());
            primero=false;
        }
    }
    out.print("]}");*/
    //out.print(JSONValue.toJSONString(datos));
    Gson gson = new Gson();
    out.print(gson.toJson(datos));
%>

