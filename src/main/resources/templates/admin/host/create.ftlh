<!DOCTYPE html>
<html>
<head>
    <title>Создание ведущего</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<#include "../../parts/navbar.ftlh">
<div class="container mt-5">
    <h1 class="text-center">Создание ведущего</h1>
    <form action="/admin/host/create" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Имя:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="description">Описание:</label>
            <textarea class="form-control" id="description" name="description" required></textarea>
        </div>
        <div class="form-group">
            <label for="price">Цена:</label>
            <input type="number" class="form-control" id="price" name="price" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="image">Фотография:</label>
            <input type="file" class="form-control-file" id="file" name="file">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Создать</button>
    </form>
</div>

<#include "../../parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
