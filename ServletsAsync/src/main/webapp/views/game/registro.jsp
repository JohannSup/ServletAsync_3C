


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Registro de Juego(Game)</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<h1>Registrar Juego</h1>
<form action="${context}/sp_create" method="POST">
    <input type="hidden" value="create" name="action">
    <label>Nombre(s):</label>
    <input class="form-control" type="text" name="name" />
    <br>
    <label>Imagen(es):</label>
    <input class="form-control" type="file" name="imgGame" />
    <br>
    <label>Fecha de estreno:</label>
    <input class="form-control" type="number" name="datePremiere" />
    <br>
    <label>Categoria:</label>
    <select class="form-select" name="Category_idCategory">
        <option value="Acción">Acción</option>
        <option value="Arcade">Arcade</option>
        <option value="Deportivo">Deportivo</option>
        <option value="Estrategia">Estrategia</option>
        <option value="Simulación">Simulación</option>
        <option value="Juegos de mesa">Juegos de mesa</option>
        <option value="Juegos musicales">Juegos musicales</option>
    </select>
    <label>Status:</label>
    <select class="form-select" name="status">
        <option value="0">Inactivo</option>
        <option value="1">Activo</option>
    </select>

    <button type="button" class="btn btn-secondary"><i class="fas fa-times"></i> Cancelar</button>
    <button type="submit" class="btn btn-success"><i class="fas fa-plus"></i> Agregar</button>
</form>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>
