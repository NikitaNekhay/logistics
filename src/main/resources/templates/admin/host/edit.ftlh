<!DOCTYPE html>
<html>
<head>
    <title>Редактирование ведущего</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<#include "../../parts/navbar.ftlh">
<div class="container mt-5">
    <h1 class="text-center">Редактирование ведущего</h1>
    <form action="/admin/host/edit/${host.id}" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Имя:</label>
            <input type="text" class="form-control" id="name" name="name" value="${host.name}" >
        </div>
        <div class="form-group">
            <label for="description">Описание:</label>
            <textarea class="form-control" id="description" name="description" >${host.description}</textarea>
        </div>
        <div class="form-group">
            <label for="price">Цена:</label>
            <input type="number" class="form-control" id="price" name="price" value="${host.price?c}" step="0.01" >
        </div>
        <div class="form-group">
            <label for="currentImage">Текущее фото:</label>
            <img class="img-fluid" src="/images/${host.image.id}" alt="Текущее фото">
        </div>
        <div class="form-group">
            <label for="image">Фотография:</label>
            <input type="file" class="form-control-file" id="file" name="file">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Обновить</button>
    </form>
</div>

<#include "../../parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
