<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Фидбек</title>
</head>
<body>

<#include "../parts/navbar.ftlh">

<div class="container mt-3">
    <h2>Feedback List</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Заголовок</th>
            <th>Описание</th>
            <th>Дата обращения</th>
            <th>Действие</th>
        </tr>
        </thead>
        <tbody>
        <#list feedbacks as feedback>
            <tr>
                <td>${feedback.id}</td>
                <td>${feedback.title}</td>
                <td>${feedback.description}</td>
                <td>${feedback.localDateTime}</td>
                <td>
                    <form action="/feedback/delete/${feedback.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" class="btn btn-danger" value="Удалить">
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
