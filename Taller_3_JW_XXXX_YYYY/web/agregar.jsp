<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Vehiculo</title>
        <script>
            function volver() {
                //alert('Vuelve al listar');
                window.location.href="index.jsp";
            }
        </script>
    </head>
    <body>
        <h1>Agregar Vehiculo</h1>
        <br>
        <form action="guardar.jsp">
        <table border="1">
            <tbody>
                <tr>
                    <td>Placa</td>
                    <td>
                        <input type="text" name="placa" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Guardar" />
                        <input type="button" value="Volver" onclick="volver();" />
                    </td>
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
