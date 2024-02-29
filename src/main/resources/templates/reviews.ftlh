<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>

<#include "parts/navbar.ftlh">

<div class="container mt-5">
    <!-- Блок с текстом и изображением -->
    <br><h2 align="center">Отзывы</h2><br><br>
    <div class="row">
        <div class="col-md-6">
            <!-- Картинка или изображение -->
            <img src="/static/img/reviews.jpg" alt="Ценим ваши отзывы" class="img-fluid">
        </div>
        <div class="col-md-6">
            <!-- Описание сервиса -->

            <p>
                Мы ценим каждого нашего клиента. Все, что мы делаем, основано на этом принципе. Наша команда работает на
                совесть,
                чтобы удовлетворить ваши потребности и превзойти ваши ожидания.
            </p>
            <p>
                Наш сервис предоставляет удобные возможности для организации вашего мероприятия. Мы поможем вам выбрать
                подходящее
                место, подготовить развлечения и обеспечить высококачественное обслуживание.
            </p>
            <p>
                Начните планирование вашего мероприятия прямо сейчас и доверьтесь нам для создания незабываемой
                атмосферы!
            </p>
        </div>
    </div>
</div>
<br><br><br>



<!-- Отзывы в виде красивых строчек -->
<div class="container mt-4">
    <h2 align="center" >Отзывы наших клиентов</h2><br><br>
    <div class="row">
        <#list reviews as review>
            <div class="col-md-6">
                <div class="card mb-3">
                    <div class="card-body">
                        <h5 class="card-title">${review.user.person.name}</h5>
                        <p class="card-text">Оценка: ${review.mark}</p>
                        <p class="card-text">${review.description}</p>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>

<#include "parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
