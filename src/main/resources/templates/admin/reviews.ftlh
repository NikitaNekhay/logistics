<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Управление отзывами</title>
</head>
<body>

<#include "../parts/navbar.ftlh">

<div class="container mt-4">
    <h2>Отзывы</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Автор</th>
            <th>Отзыв</th>
            <th>Оценка</th>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody>
        <#list reviews as review>
            <tr>
                <td>${review.user.email}</td>
                <td>${review.description}</td>
                <td>${review.mark}</td>
                <td>
                    <form action="/admin/review/${review.id}/delete" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="btn btn-danger">Удалить</button>
                    </form>
                </td>
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