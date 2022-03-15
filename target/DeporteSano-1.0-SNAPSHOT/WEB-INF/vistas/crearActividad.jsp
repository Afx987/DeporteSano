<%--
  Created by IntelliJ IDEA.
  User: Andres
  Date: 24/02/2022
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>CREAR ACTIVIDAD</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/res/css/estilo.css" />">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body class="bg-teaser">
<div class="container">
    <%@include file="navbar.jsp" %>
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
</div>


<section>
    <h2>Crear Actividad</h2>
    <a href="${pageContext.request.contextPath}/crearActividad" class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i> Agregar actividad </a>
    <table class="table">
        <thead class="table-info">
        <tr>
            <th>Nombre Actividad</th>
            <th>Fecha</th>
            <th>Horario</th>
            <th>Profesor</th>
            <th>Ubicacion</th>
            <th>Categoria</th>
            <th>OPCIONES</th>
        </tr>
        </thead>

        <form action="crearActividad"  method="POST">
            <div class="col-md-4 mb-3">



    <%-- <td><form:input type="text" class="form-control" path="nombre"/> </td>--%>
    <td><input type="text" class="form-control" name="nombre"/> </td>
            </div>
            <div class="col-md-4 mb-3">

                <td><input type="date" class="form-control" name="fecha" required/> </td>
<%--                <td><form:input type="date" class="form-control" path="fecha"/> </td>--%>

            </div>
            </div>
            <div class="col-md-4 mb-3">

                <td><input type="text" class="form-control" name="horario" required/> </td>
       <%--         <td><form:input type="text" class="form-control" path="horario"/> </td>--%>

            </div>
            <div class="col-md-4 mb-3">

                <td><input type="text" class="form-control" name="profesor" required/> </td>
               <%-- <td><form:input type="text" class="form-control" path="profesor"/> </td>--%>

            </div>

            <div class="col-md-4 mb-3">

                <td><input type="text" class="form-control" name="ubicacion" required/> </td>
<%--                <td><form:input type="text" class="form-control" path="ubicacion"/> </td>--%>

            </div>

            <div class="col-md-4 mb-3">

                <td><input type="text" class="form-control" name="categoria" required/> </td>
               <%-- <td><form:input type="text" class="form-control" path="categoria"/> </td>--%>

            </div>
            <div class="form-row justify-content-center mt-5">

                <td><button class="btn btn-primary" type="submit" onclick="if (!(confirm('¡Actividad creada con exito!'))) return false">Crear</button></td>

            </div>
        </form>
    </table>
</section>

</body>
<p>
    <a href="${pageContext.request.contextPath}/actividades">Retroceder</a>
</p>
</html>
