<!DOCTYPE html>
<html lang="en">
<head>
    <title>Воззможности доставки</title>
</head>
<body>
<h1>Воззможности доставки</h1>
<div>
    <#list best_companies as company>
        <div class="catering">
            <img width="300px" src="/images/${catering.image.id}" alt="Изображение">
            <p>${catering.description}</p>
            <p> Рассчитан на ${catering.capacity} чел.</p>
            <p>Цена: ${catering.price} руб.</p>
        </div>
    </#list>
</div>
</body>
</html>
