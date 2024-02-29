<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<#include "../parts/navbar.ftlh">
<div class="container mt-4">
    <h2>Мои Заявки</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Дата</th>
            <th>Услуги</th>
            <th>Статус</th>
        </tr>
        </thead>
        <tbody>
        <#list bookings as booking>
            <tr>
                <td>${booking.bookingDate}</td>
                <td>
                    <#if booking.venue??>Место: ${booking.venue.name}</#if>
                    <#if booking.host??>Ведущий: ${booking.host.name}</#if>
                    <#if booking.musicBand??>Музыкальная группа: ${booking.musicBand.name}</#if>
                    <#if booking.catering??>Кейтеринг: ${booking.catering.description}</#if>
                    <#if booking.decoration??>Оформление: ${booking.decoration.description}</#if>
                </td>
                <td>${booking.status}</td>
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
