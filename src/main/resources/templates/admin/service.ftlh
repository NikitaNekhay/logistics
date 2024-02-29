<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Page</title>

    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<#include "../parts/navbar.ftlh">


<!-- Add Bootstrap container for content -->
<div class="container mt-4">
    <h2 class="text-center">Панель администратора</h2><br><br><br><br><br>


    <div class="row">
        <div class="col-md-6">
            <a href="/admin/venue/create" class="btn btn-primary btn-block">Добавить банкетный зал</a>
            <br>
        </div>
        <br>
        <div class="col-md-6">
            <a href="/admin/venue/list" class="btn btn-primary btn-block">Управление банкетными залами</a>
            <br>
        </div>
        <br>
    </div>

    <!-- Use Bootstrap buttons and grid system -->
    <div class="row">
        <div class="col-md-6">
            <a href="/admin/host/create" class="btn btn-primary btn-block">Добавить ведущего</a>
            <br>
        </div>
        <br>
        <div class="col-md-6">
            <a href="/admin/host/list" class="btn btn-primary btn-block">Управление ведущими</a>
            <br>
        </div>
        <br>
    </div>

    <div class="row">
        <div class="col-md-6">
            <a href="/admin/music-band/create" class="btn btn-primary btn-block">Добавить музыкальную группу</a>
            <br>
        </div>
        <br>
        <div class="col-md-6">
            <a href="/admin/music-band/list" class="btn btn-primary btn-block">Управление музыкальными группами</a>
            <br>
        </div>
        <br>
    </div>

    <div class="row">
        <div class="col-md-6">
            <a href="/admin/catering/create" class="btn btn-primary btn-block">Добавить наборы еды</a>
            <br>
        </div>
        <br>
        <div class="col-md-6">
            <a href="/admin/catering/list" class="btn btn-primary btn-block">Управление наборами еды</a>
            <br>
        </div>
        <br>
    </div>

    <div class="row">
        <div class="col-md-6">
            <a href="/admin/decoration/create" class="btn btn-primary btn-block">Добавить декарацию</a>
            <br>
        </div>
        <br>
        <div class="col-md-6">
            <a href="/admin/decoration/list" class="btn btn-primary btn-block">Управление декорациями</a>
            <br>
        </div>
        <br>
    </div>


</div>

<#include "../parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
