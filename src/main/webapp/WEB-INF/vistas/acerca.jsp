<%--
  Created by IntelliJ IDEA.
  User: Andres
  Date: 27/02/2022
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Codificación de Caracteres -->
    <meta charset="UTF-8">

    <!-- Configuración inicial de ancho y escala -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X UA-COMPATIBLE" content="IE=edge">
    <!-- Título de la página -->
    <title>ACERCA</title>

    <!-- Hoja de estilo -->
    <link rel="stylesheet" href="<core:url value="/res/css/estilo.css"/>">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body class="bg-teaser">
<section class="container">
    <%@include file="navbar.jsp"%>
    <header>
        <nav class="nav">
            <ul class="nav-list">
                <li class="nav-item"><a href="${pageContext.request.contextPath}/">»PRINCIPAL«</a> </li>
                <li class="nav-item nav-item-active"><a href="${pageContext.request.contextPath}/Acerca">»ACERCA«</a> </li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/actividades">»ACTIVIDADES«</a> </li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/Soluciones">»SOLUCIONES PARA EL DEPORTE«</a> </li>
            </ul>
            <a class="Logout" href="${pageContext.request.contextPath}/logout">Logout</a>
        </nav>
    </header>
</section>
<main>
    <section class="container">
        <p class="parrafo"> En esta seccion lo que me motiva levantarme todas las mañanas es principalmente hacer una dieta saludable debido a que me gusta estar en constante actividad para poder realizar las labores diarias como hoy día por ejemplo , realicé una rutina
            de deporte dentro del cual puedo mencionar las siguientes actividades: </p>
        <ul>
            <li class="lista"> Saltar la soga</li>
            <li class="lista"> Hacer flexiones</li>
            <li class="lista"> ¡Escuchar música no hace nada de mal! , sobre todo para esos momentos que ayudan a conectar la mente con la naturaleza </li>
        </ul>
        <h2> ¿Sabías qué?: </h2>

        <div id="tabs">
            <img src="./res/img/Deporte Sano.jpg" width="300px" height="300px" alt="INTENTA HACER DEPORTE HACE BIEN!" />
            <p class="texto">INTENTA HACER DEPORTE HACE BIEN!</p>
        </div>
        <ul>
            <li class="lista">
                <h3> La actividad física tiene importantes beneficios para la salud del corazón, el cuerpo y la mente. </h3>
            </li>
            <li class="lista">
                <h3>La actividad física contribuye a la prevención y gestión de enfermedades no transmisibles, como las enfermedades cardiovasculares, el cáncer y la diabetes. </h3>
            </li>
            <li class="lista">
                <h3>La actividad física reduce los síntomas de la depresión y la ansiedad. </h3>
            </li>
            <li class="lista">
                <h3>La actividad física mejora las habilidades de razonamiento, aprendizaje y juicio. </h3>
            </li>
            <li class="lista">
                <h3>La actividad física asegura el crecimiento y el desarrollo saludable de los jóvenes. </h3>
            </li>
            <li class="lista">
                <h3> La actividad física mejora el bienestar general. </h3>
            </li>
            <li class="lista">
                <h3> A nivel mundial, 1 de cada 4 adultos no alcanza los niveles de actividad física recomendados. </h3>
            </li>
            <li class="lista">
                <h3>Se podrían evitar hasta 5 millones de fallecimientos al año con un mayor nivel de actividad física de la población mundial. </h3>
            </li>
            <li class="lista">
                <h3>Las personas con un nivel insuficiente de actividad física tienen un riesgo de muerte entre un 20% y un 30% mayor en comparación con las personas que alcanzan un nivel suficiente de actividad física. </h3>
            </li>
            <li class="lista">
                <h3>Más del 80% de los adolescentes del mundo tienen un nivel insuficiente de actividad física. </h3>
            </li>
        </ul>
    </section>

</main>
<footer class="footer">
    <p>Author: Andres Pizarro</p>
    <p>--2022 TODOS LOS DERECHOS RESERVADOS®--</p>
</footer>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script src="./jquery.js"></script>
</body>


</body>
</html>
