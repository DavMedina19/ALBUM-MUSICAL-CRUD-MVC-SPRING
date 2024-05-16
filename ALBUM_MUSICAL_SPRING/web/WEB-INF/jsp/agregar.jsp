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
                background-color: #f8f8f8;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 50%;
                margin: 0 auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                margin-top: 50px;
            }

            h4 {
                color: #333;
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"], input[type="submit"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border-radius: 3px;
                border: 1px solid #ccc;
            }

            input[type="submit"] {
                background-color: #007bff;
                color: #fff;
                cursor: pointer;
                border: none;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }

            a {
                color: #007bff;
                text-decoration: none;
                margin-left: 10px;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <!-- Div contenedor para centrar el formulario en la página -->
            <h4>AGREGAR UNA NUEVA COLECCION</h4>
            <!-- Título del formulario -->
            <form method="POST">
                <!-- Formulario con método POST para enviar datos al servidor -->
                <label>ID</label>
                <!-- Etiqueta para el campo de ID -->
                <input type="text" name="ID">
                <!-- Campo de entrada para el ID -->

                <label>Titulo</label>
                <!-- Etiqueta para el campo de Título -->
                <input type="text" name="Titulo">
                <!-- Campo de entrada para el Título -->

                <label>Artistas</label>
                <!-- Etiqueta para el campo de Artistas -->
                <input type="text" name="Artistas">
                <!-- Campo de entrada para los Artistas -->

                <label>Genero</label>
                <!-- Etiqueta para el campo de Género -->
                <input type="text" name="Genero">
                <!-- Campo de entrada para el Género -->

                <label>PrecioTotal</label>
                <!-- Etiqueta para el campo de Precio Total -->
                <input type="text" name="PrecioTotal">
                <!-- Campo de entrada para el Precio Total -->

                <input type="submit" value="Agregar">
                <!-- Botón para enviar el formulario -->
                <a href="index.htm">Regresar</a>
                <!-- Enlace para regresar a la página principal -->
            </form>
        </div>
    </body>
</html>
