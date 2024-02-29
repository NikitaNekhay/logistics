<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Оставить фидбек</title>
</head>
<body>
<#include "parts/navbar.ftlh">

<div class="container mt-5">
    <h2>Оставить фидбек</h2>
    <form action="/feedback/add" method="post" class="mt-3">
        <div class="form-group">
            <label for="title">Заголовок</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Введите заголовок">
        </div>
        <div class="form-group">
            <label for="description">Описание</label>
            <input type="text" class="form-control" id="description" name="description" placeholder="Опишите проблему">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Добавить</button>
    </form>
</div>

<#include "parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
