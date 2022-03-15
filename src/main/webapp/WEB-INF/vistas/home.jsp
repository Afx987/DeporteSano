<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <!-- Codificación de Caracteres -->
    <meta charset="UTF-8">

    <!-- Configuración inicial de ancho y escala -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X UA-COMPATIBLE" content="IE=edge">
    <!-- Título de la página -->
    <title>MI SITIO: DEPORTE VIDA</title>

    <!-- Hoja de estilo -->
    <link rel="stylesheet" href="<core:url value="/res/css/estilo.css" />">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>


    <body class="bg-teaser">
    <section class="container">
        <%@include file="navbar.jsp"%>
        <header>
            <nav class="nav">
                <ul class="nav-list">
                    <li class="nav-item nav-item-active"><a href="${pageContext.request.contextPath}/">»PRINCIPAL«</a> </li>
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/Acerca">»ACERCA«</a> </li>
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/actividades">»ACTIVIDADES«</a> </li>
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/Soluciones">»SOLUCIONES PARA EL DEPORTE«</a></li>
                </ul>
                <a class="Logout" href="${pageContext.request.contextPath}/logout">Logout</a>

            </nav>

        </header>
    </section>
    <div class="divbar">
        <main>
            <ul>
                <h3 class="nombre"> ANDRES PIZARRO BARI </h3>
                <h3> Profesión : Ingeniero en Computacion e Informatica </h3>
                <h3> Correo Electronico : andres.pb.16@gmail.com </h3>
                <p> Me declaro una persona tranquila con ganas de seguir aprendiendo y seguir este curso de Awakelab ya que me gusta la informática además de hacer deporte como trotar sanamente.</p>
            </ul>
        </main>
    </div>

    <footer class="footer">
        <p>Author: Andres Pizarro</p>
        <p>--2022 TODOS LOS DERECHOS RESERVADOS®--</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript" src="./res/js/main.js"></script>
    </body>

</html>
</html>
