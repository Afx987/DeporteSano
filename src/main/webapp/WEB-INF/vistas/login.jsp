<%--
  Created by IntelliJ IDEA.
  User: Andres
  Date: 29-01-22
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>LOGIN DEPORTE VIDA</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/res/css/estilo.css" />">
</head>
<body class="bg-teaser">
<div class="container">
    <%@include file="navbar.jsp" %>

    <%
        String error = (String) request.getAttribute("error");
        if (error != null && error.equals("true")) {
            out.println("<h3 class = 'alert alert-danger'> Error de Autenticacion </h3>");
        }
    %>

    <c:if test="${param.logSucc == true}">
        <div class="alert alert-success col-xs-offset-1 col-xs-10">
            Sesión cerrada con éxito
        </div>
    </c:if>


    <form action="${pageContext.request.contextPath}/login" method="POST">

        <div class="form-group">
            <label for="exampleInputEmail1">Nombre de Usuario</label>
            <input type="text" name="usuario" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">Ingrese su nombre de usuario</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Clave</label>
            <input type="password" name="clave" class="form-control" id="exampleInputPassword1">
        </div>
        <button type="submit" class="btn btn-primary">Ingresar</button>
    </form>

    <button id="myButton" class="btn btn-secondary">Refrescar</button>


</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
        integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        window.location.href = "http://localhost:8080/war_exploded/login";
    };
</script>

</body>

</html>
