
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Estilos CSS internos para definir la apariencia de la página */
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

            h4 {
                background-color: #333;
                color: #fff;
                padding: 10px 0;
                margin-bottom: 20px;
            }

            form {
                margin-bottom: 20px;
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"] {
                width: 100%;
                padding: 5px;
                margin-bottom: 10px;
                box-sizing: border-box;
            }

            input[type="submit"],
            a {
                display: inline-block;
                padding: 5px 10px;
                margin-right: 10px;
                text-decoration: none;
                color: #fff;
                background-color: #333;
                border: none;
                border-radius: 5px;
            }

            input[type="submit"]:hover,
            a:hover {
                background-color: #555;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <!-- Div contenedor para centrar el formulario en la página -->
            <h4>ACTUALIZAR COLECCION</h4>
            <!-- Título del formulario -->
            <form method="POST">
                <!-- Formulario con método POST para enviar datos al servidor -->
                <label>ID</label>
                <!-- Etiqueta para el campo de ID -->
                <input type="text" name="ID" value="${lista[0].ID}">

                <label>Titulo</label>
                <!-- Etiqueta para el campo de Título -->
                <input type="text" name="Titulo" value="${lista[0].Titulo}">

                <label>Artistas</label>
                <!-- Etiqueta para el campo de Artistas -->
                <input type="text" name="Artistas" value="${lista[0].Artistas}">

                <label>Genero</label>
                <!-- Etiqueta para el campo de Género -->
                <input type="text" name="Genero" value="${lista[0].Genero}">

                <label>PrecioTotal</label>
                <!-- Etiqueta para el campo de Precio Total -->
                <input type="text" name="PrecioTotal" value="${lista[0].PrecioTotal}">

                <input type="submit" value="Actualizar">
                <!-- Botón para enviar el formulario con la acción de actualizar -->
                <a href="index.htm">Regresar</a>
                <!-- Enlace para regresar a la página principal -->
            </form>
        </div>
    </body>
</html>
