
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%!
    private int numero = 7;
    
    int suma(int n1, int n2) {
        return n1+n2;
    }

    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </head>
    <body>
        <img src="img/logo_uts.png" width="200" height="100" />
        <form method="get" action="paginaDos.jsp">
            <input type="text" name="nombre" placeholder="Escriba su Nombre" /><br>
            <input type="submit" value="Enviar" />
        </form>
        <br><br>
        La Fecha de hoy es <%=new java.util.Date() %><br>
        La raiz cuadrada de 25 es <%=Math.sqrt(25)%><br>
        El cuadrado del numero 9 es <%=Math.pow(9, 2)%><br> 
        
        <div class="container">
        <table class="table table-striped" border="1">
            <thead>
                <tr>
                    <th colspan="4">Tabla del <%=numero%></th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i=1; i<=10; i++) {
                %>
                
                <tr>
                    <td><%=numero%></td>
                    <td>*</td>
                    <td><%=i%></td>
                    <td>=<%=(i*numero)%></td>
                </tr> 
                <%
                    }
                %>
                <tr>
                    <td colspan="4"> <%=suma(numero, numero)%> </td>
                </tr>
                <%
                   /* for (int i=1; i<=10; i++) {
                        out.println("<tr>");
                        out.println("<td style='color:#00FF00'>5</td>");
                        out.println("<td>*</td>");
                        out.println("<td>"+i+"</td>");
                        out.println("<td>"+(i*5)+"</td>");
                    }*/
                    %>
            </tbody>
        </table>
            </div>
                
                
    </body>
</html>
