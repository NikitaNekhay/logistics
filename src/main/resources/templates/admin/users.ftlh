<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Управление пользователями</title>
</head>
<body>

<#include "../parts/navbar.ftlh">

<div class="container mt-4">
    <h2>Управление пользователями</h2>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Имя пользователя</th>
            <th>Email</th>
            <th>Роль</th>
            <th>Статус</th>
            <th>Действия</th>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody>
        <#list users as usr>
            <tr>
                <td>${usr.id}</td>
                <td>${usr.person.name}</td>
                <td>${usr.email}</td>
                <td><#list usr.roles as role>${role}<br></#list></td>
                <td>${usr.active?string("Активен", "Забанен")}</td>
                <td>
                    <#if usr.active>
                        <form action="/admin/user/ban/${usr.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button type="submit" class="btn btn-warning">Забанить</button>
                        </form>
                        <#else>
                            <form action="/admin/user/unban/${usr.id}" method="post">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <button type="submit" class="btn btn-warning">Разбанить</button>
                            </form>
                    </#if>
                </td>
                <td><a class="btn btn-warning" href="/admin/user/edit/${usr.id?c}">Редактирование</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>

<#include "../parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
