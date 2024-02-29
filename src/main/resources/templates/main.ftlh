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

<#include "parts/navbar.ftlh">

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <!-- Картинка или изображение -->
            <img src="/static/img/caption.jpg" alt="О нашем сервисе" class="img-fluid">
        </div>
        <div class="col-md-6">
            <!-- Описание сервиса -->
            <h2>Добро пожаловать на наш сайт</h2>
            <p>
                Здесь вы можете заказать банкеты, ведущих, музыкальные группы и многое другое для вашего мероприятия.
            </p>
            <p>
                Наш сервис предоставляет удобные возможности для организации вашей вечеринки или праздника. Мы поможем вам выбрать
                подходящее место, подготовить развлечения и обеспечить высококачественное обслуживание.
            </p>
            <p>
                Начните планирование вашего мероприятия прямо сейчас и доверьтесь нам для создания незабываемой атмосферы!
            </p>
        </div>
    </div>
    <br><br><br>
<#--    <div class="row">-->

<#--        <div class="col-md-6">-->
<#--            <!-- Описание ведущих &ndash;&gt;-->
<#--            <h2>Наши ведущие</h2>-->
<#--            <p>-->
<#--                Наши ведущие - профессионалы в организации и проведении мероприятий. Они создадут незабываемую атмосферу-->
<#--                на вашей вечеринке и подарят яркие впечатления гостям.-->
<#--            </p>-->
<#--            <p>-->
<#--                Независимо от того, какой формат вашего мероприятия - свадьба, корпоратив, детский праздник или другое,-->
<#--                наши ведущие подстроятся под ваши пожелания и сделают вашу вечеринку особенной.-->
<#--            </p>-->
<#--        </div>-->
<#--        <div class="col-md-6">-->
<#--            <!-- Картинка 1 &ndash;&gt;-->
<#--            <img src="/static/img/host.jpg" alt="Ведущие" class="img-fluid">-->
<#--        </div>-->
<#--    </div>-->
<#--    <br><br><br>-->
<#--    <div class="row mt-5">-->
<#--        <div class="col-md-6">-->
<#--            <!-- Картинка 2 &ndash;&gt;-->
<#--            <img src="/static/img/music-group.jpg" alt="Музыкальные группы" class="img-fluid">-->
<#--        </div>-->
<#--        <div class="col-md-6">-->
<#--            <!-- Описание музыкальных групп &ndash;&gt;-->
<#--            <h2>Наши музыкальные группы</h2>-->
<#--            <p>-->
<#--                Музыкальные группы, сотрудничающие с нами, способны создать потрясающую атмосферу на вашем мероприятии.-->
<#--                От живых выступлений в стиле рока и попа до джазовых ансамблей - у нас есть музыкальные коллективы-->
<#--                на любой вкус.-->
<#--            </p>-->
<#--            <p>-->
<#--                Вы можете выбрать живую музыку для вашей вечеринки и наслаждаться выступлениями профессиональных музыкантов.-->
<#--            </p>-->
<#--        </div>-->
<#--    </div>-->
</div>

<#include "parts/footer.ftlh">
<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>