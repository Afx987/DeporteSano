<%--
  Created by IntelliJ IDEA.
  User: Andres
  Date: 24/02/2022
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>ACTIVIDADES</title>
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
    <h2>Listado de Actividades</h2>

    <form action="<s:url value="busquedaNombre"/>">
        <input type="text" name="nombre" value="${fn:trim(param.nombre)}" placeholder="Buscar actividad" />

        <button class="btn btn-primary">Buscar</button>
    </form>
    <a href="${pageContext.request.contextPath}/crearActividad" class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i> Agregar actividad </a>
    <table id="tabla" class="table">
        <thead class="table-info">
        <tr>
            <th>ID Actividad</th>
            <th>Nombre Actividad</th>
            <th>Fecha</th>
            <th>Horario</th>
            <th>Profesor</th>
            <th>Ubicacion</th>
            <th>Categoria</th>
            <th>OPCIONES</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${actividades}">

            <c:url var="editarLink" value="/editar">
                <c:param name="idActividad" value="${c.getIdActividad()}" />
            </c:url>


            <c:url var="borrarLink" value="/borrar">
                <c:param name="idActividad" value="${c.getIdActividad()}" />
            </c:url>

            <tr>
                <td><c:out value="${c.getIdActividad()}"></c:out></td>
                <td><c:out value="${c.getNombre()}"></c:out></td>
                <td><c:out value="${c.getFecha()}"></c:out></td>
                <td><c:out value="${c.getHorario()}"></c:out></td>
                <td><c:out value="${c.getProfesor()}"></c:out></td>
                <td><c:out value="${c.getUbicacion()}"></c:out></td>
                <td><c:out value="${c.getCategoria()}"></c:out></td>
                <td>
                    <div class="row g-3">
                        <form class="col-md-4" action="editarActividad" method="post">
                            <a href="${editarLink}" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        </form>
                        <form class="col-md-4" action="borrarCapacitacion" method="delete">
                            <a href="${borrarLink}" class="delete" title="Delete" data-toggle="tooltip" onclick="if (!(confirm('¿Estás seguro con borrar esta actividad?'))) return false"><i class="material-icons">&#xE872;</i></a>
                        </form>
                    </div>
                </td>
            </tr>

        </c:forEach>
        </tbody>

    </table>

</section>

</body>

</html>
