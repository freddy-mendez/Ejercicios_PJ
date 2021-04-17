
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Persona</title>
    </head>
    <body>
        <h1>Agregar Persona</h1>
        <br><br>
        <form action="guardar.jsp?action=1" method="post">
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
    </body>
</html>
