<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALBUM MUSICAL (SPRING)</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }

            .container {
                width: 80%;
                margin: 20px auto;
                text-align: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
                background-color: #fff;
                box-shadow: 0 1px 3px rgba(0,0,0,0.2);
            }

            th, td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #f4f4f4;
            }

            a {
                text-decoration: none;
                color: #333;
                margin-right: 10px;
                padding: 5px 10px;
                background-color: #f4f4f4;
                border: 1px solid #ccc;
                border-radius: 5px;
                display: inline-block;
            }

            a:hover {
                background-color: #ddd;
            }


            @media (max-width: 768px) {
                .container {
                    width: 100%;
                    padding: 0 10px;
                }

                table {
                    box-shadow: none;
                    border: 1px solid #ddd;
                }

                th, td {
                    padding: 8px;
                }
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>REGISTRO DE COLECCIONES</h1>
            <a href="agregar.htm">NUEVA COLECCION</a>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Titulo</th>
                        <th>Artistas</th>
                        <th>Genero</th>
                        <th>PrecioTotal</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${lista}">
                        <tr>
                            <td>${dato.ID}</td>
                            <td>${dato.Titulo}</td>
                            <td>${dato.Artistas}</td>
                            <td>${dato.Genero}</td>
                            <td>${dato.PrecioTotal}</td>
                            <td>
                                <a href="editar.htm?id=${dato.ID}" class="editar">EDITAR</a>
                                <a href="delete.htm?id=${dato.ID}" class="eliminar">ELIMINAR</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
