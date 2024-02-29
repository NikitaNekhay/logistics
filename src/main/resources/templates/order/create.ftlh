<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание нового места проведения</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../static/sheet.css">
</head>
<body>
<#include "../parts/navbar.ftlh">

<div class="container mt-5">
    <h1 class="text-center">Создание места проведения</h1>
    <form action="/order/create" method="post">
        <!-- 1. Select delivery method -->
        <div class="delivery-method">
            <h2>1. Выберите способ доставки</h2>
            <!-- Replace with dynamic content as necessary -->
            <label><input type="radio" name="deliveryMethod" value="all" checked> Все</label>
            <label><input type="radio" name="deliveryMethod" value="sea"> Море</label>
            <label><input type="radio" name="deliveryMethod" value="railway"> Железная дорога</label>
            <label><input type="radio" name="deliveryMethod" value="auto"> Авто</label>
            <label><input type="radio" name="deliveryMethod" value="air"> Воздух</label>
            <label><input type="radio" name="deliveryMethod" value="break_bulk"> Навалочная груз (Break Bulk)</label>
        </div>

        <!-- 2. Choose route -->
        <div class="route">
            <h2>2. Выберите маршрут</h2>
            <select name="routeFrom">
                <!-- Replace with dynamic content as necessary -->
                <option value="moscow">Москва - Домодедово, Россия (DME)</option>
                <!-- Other options -->
            </select>
            <select name="routeTo">
                <!-- Replace with dynamic content as necessary -->
                <option value="saint_petersburg">Санкт-Петербург - Пулково, Россия (LED)</option>
                <!-- Other options -->
            </select>

            <select name="type">
                <!-- Replace with dynamic content as necessary -->
                <option value="mix">Товары смешанные</option>
                <option value="medicine">Медицинское оборудование</option>
                <option value="perishable">Скоропортящиеся товары</option>
                <!-- Other options -->
            </select>

            <label>Точки особенного внимания
                <input type="number" name="specialAttentionPoints" min="0" value="10000">
            </label>
        </div>

        <!-- 3. Specify the cargo type -->
        <div class="cargo-type">
            <h2>3. Выберите тип и впишите размеры груза</h2>
            <label><input type="checkbox" name="typeFragile" value="specific"> Особенный груз</label>
            <label><input type="checkbox" name="typeDanger" value="dangerous"> Опасный груз</label>
            <!-- Add other cargo types as necessary -->
            <div class="cargo-quantity">
                <label>Вес [Кг] <input type="number" name="weight" min="1" value="10"></label>
                <label>Размеры
                    <input type="number" name="height" min="1" value="10"> x
                    <input type="number" name="length" min="1" value="10"> x
                    <input type="number" name="width" min="1" value="10">
                </label>
                <button type="button" onclick="addCargoPlace()">Добавить</button>
            </div>
        </div>

        <!-- 4. Add additional info -->
        <div class="additional-info">
            <h2>4. Дополнительно</h2>
            <label>Адрес забора груза<input type="text" name="deliveryAddress" value=""> </label>
            <label>Адрес доставки груза<input type="text" name="deliveryAddress" value=""> </label>
            <label><input type="checkbox" name="additionalInfo" value="typeInsurance"> Застраховать</label>
            <!-- Add other additional info as necessary -->
        </div>

        <!-- Submit button -->
        <div class="submit">
            <button type="submit">Рассчитать</button>
        </div>
    </form>


</div>

<#include "../parts/footer.ftlh">

<script>
    function addCargoPlace() {
        // Implement the functionality to add additional cargo places
    }
</script>

<!-- Подключаем скрипты Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
