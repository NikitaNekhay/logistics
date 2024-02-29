<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>

<#include "../parts/navbar.ftlh">

<form action="/user/${user.id}/edit" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="name">Имя пользователя</label>
        <input type="text" class="form-control" id="name" name="name" value="${user.person.name}">
    </div>
    <div class="form-group">
        <label for="surname">Фамилия пользователя</label>
        <input type="text" class="form-control" id="surname" name="surname" value="${user.person.surname}">
    </div>
    <div class="form-group">
        <label for="email">Электронная почта</label>
        <input type="email" class="form-control" id="email" name="email" value="${user.email}">
    </div>
    <div class="form-group">
        <label for="phoneNumber">Номер телефона</label>
        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${user.person.phoneNumber}">
    </div>
    <div class="form-group">
        <label for="password">Пароль</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>


    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" style="width: 100%" class="btn btn-dark">Изменить</button>
</form>

<#include "../parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>