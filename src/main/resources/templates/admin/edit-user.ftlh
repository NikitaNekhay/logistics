<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Редактирование пользователя</title>
    <!-- Подключение Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            margin-top: 20px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        .checkbox-group {
            margin-bottom: 10px;
        }
        .footer {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<#include "../parts/navbar.ftlh">
<br><br><br><br>
<div class="container">
    <h1 class="text-center">Редактирование пользователя</h1>
    <hr>
    <div class="form-container">
        <form action="/admin/user/edit" method="post">
            <#list roles as role>
                <div class="checkbox-group">
                    <label>
                        <input type="checkbox" name="${role}" ${usr.roles?seq_contains(role)?string("checked", "")}> ${role}
                    </label>
                </div>
            </#list>
            <input type="hidden" value="${usr.id}" name="userId">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary">Сохранить</button>
        </form>
    </div>

</div>
<#include "../parts/footer.ftlh">

<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
