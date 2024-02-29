<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ведущие компании</title>
    <!-- Подключаем стили Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<#include "../parts/navbar.ftlh">

<div class="container mt-5">
    <h1>Ведущие компании</h1>
    <div class="row">
<#--        <#list best_companies as company>-->
<#--        <!-- Карточка ведущего 1 &ndash;&gt;-->
<#--        <div class="col-md-4">-->
<#--            <div class="card mb-4">-->
<#--                <img src="/images/${host.image.id}" alt="${host.name}" class="card-img-top">-->
<#--                <div class="card-body">-->
<#--                    <h5 class="card-title">${host.name}</h5>-->
<#--                    <p class="card-text">${host.description}</p>-->
<#--                    <p class="card-text">${host.price}р.</p>-->
<#--                    <a href="/book/host/${host.id}" class="btn btn-primary">Заказать</a>-->
<#--                </div>-->
<#--            </div>-->
<#--            </div>-->
<#--        </#list>-->


    </div>
</div>

<#include "../parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
