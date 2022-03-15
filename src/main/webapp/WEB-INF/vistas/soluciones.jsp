<%--
  Created by IntelliJ IDEA.
  User: Andres
  Date: 26/02/2022
  Time: 14:34
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
    <title>SOLUCIONES</title>

    <!-- Hoja de estilo -->
    <link rel="stylesheet" href="<core:url value="/res/css/estilo.css"/>">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body class="bg-teaser">
<section class="container">
    <%@include file="navbar.jsp"%>
    <nav class="nav">
        <ul class="nav-list">
            <li class="nav-item"><a href="${pageContext.request.contextPath}/">»PRINCIPAL«</a> </li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/Acerca">»ACERCA«</a> </li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/actividades">»ACTIVIDADES«</a> </li>
            <li class="nav-item nav-item-active"><a href="${pageContext.request.contextPath}/Soluciones">»SOLUCIONES PARA EL DEPORTE«</a></li>
        </ul>
        <a class="Logout" href="${pageContext.request.contextPath}/logout">Logout</a>
    </nav>
</section>

<main>
    <nav class="navbar">
        <section class="container">
            <img src="./res/img/Deporte.jpg" width="300" height="300" alt="ACTIVIDADES RUNNING">
            <p>
                La actividad física regular, como caminar, montar en bicicleta, pedalear, practicar deportes o participar en actividades recreativas, es muy beneficiosa para la salud. Es mejor realizar cualquier actividad física que no realizar ninguna. Al aumentar la
                actividad física de forma relativamente sencilla a lo largo del día, las personas pueden alcanzar fácilmente los niveles de actividad recomendados. La inactividad física es uno de los principales factores de riesgo de mortalidad por
                enfermedades no transmisibles. Las personas con un nivel insuficiente de actividad física tienen un riesgo de muerte entre un 20% y un 30% mayor en comparación con las personas que alcanzan un nivel suficiente de actividad física.
                La actividad física regular puede:</p>
            <ul>
                <li class="lista"> Mejorar el estado muscular y cardiorrespiratorio </li>
                <li class="lista"> Mejorar la salud ósea y funcional </li>
                <li class="lista"> Reducir el riesgo de hipertensión, cardiopatías coronarias, accidentes cerebrovasculares, diabetes, varios tipos de cáncer (entre ellos el cáncer de mama y el de colon) y depresión </li>
                <li class="lista"> Reducir el riesgo de caídas, así como de fracturas de cadera o vertebrales </li>
                <li class="lista"> Ayudar a mantener un peso corporal saludable</li>
            </ul>
            <p> En los niños y adolescentes, la actividad física mejora: </p>
            <ul>
                <li class="lista"> El estado físico (cardiorrespiratorio y muscular) </li>
                <li class="lista"> La salud cardiometabólica (tensión arterial, dislipidemia, hiperglucemia y resistencia a la insulina) </li>
                <li class="lista"> La salud ósea </li>
                <li class="lista"> Los resultados cognitivos (desempeño académico y función ejecutiva)</li>
                <li class="lista"> La salud mental (reducción de los síntomas de depresión)</li>
                <li class="lista"> La reducción de la adiposidad</li>
            </ul>
            <p> En los adultos y los adultos mayores, los niveles más altos de actividad física mejoran:</p>
            <ul>
                <li class="lista"> La mortalidad por cualquier causa</li>
                <li class="lista"> La mortalidad por enfermedades cardiovasculares</li>
                <li class="lista"> Los incidentes de hipertensión</li>
                <li class="lista"> Los cánceres específicos del órgano en que se produce el incidente (vejiga, mama, colon, endometrio, adenocarcinoma esofágico y cánceres gástricos y renales)</li>
                <li class="lista"> Los incidentes de diabetes de tipo 2</li>
                <li class="lista"> La prevención de las caídas</li>
                <li class="lista"> La salud mental (reducción de los síntomas de ansiedad y depresión)</li>
                <li class="lista"> La salud cognitiva</li>
                <li class="lista"> El sueño</li>
                <li class="lista"> También pueden mejorar la medición de la adiposidad</li>
            </ul>
        </section>
    </nav>
</main>
<footer class="footer">
    <p>Author: Andres Pizarro</p>
    <p>--2022 TODOS LOS DERECHOS RESERVADOS®--</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</body>
</html>
