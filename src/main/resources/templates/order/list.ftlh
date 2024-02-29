<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список Компаний</title>
    <style>
        body, html {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 1px solid #eaeaea;
        }

        .btn-calculate, .btn-excel, .btn-print {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-transform: uppercase;
            cursor: pointer;
            margin-left: 10px;
        }

        .btn-calculate {
            background-color: #2196F3;
        }

        .service-list h3 {
            margin-top: 20px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table th, table td {
            text-align: left;
            padding: 10px;
            border-bottom: 1px solid #eaeaea;
        }

        th {
            color: #757575;
        }

        .btn-book {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .header, .service-list {
                flex-direction: column;
            }

            .btn-excel, .btn-print {
                margin-top: 10px;
            }
        }

    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <div class="header">
        <button class="btn-calculate">РАССЧИТАТЬ</button>
        <div class="current-rate">
            <h2>Текущая Рыночная Ставка:</h2>
            <button class="btn-excel">Excel</button>
            <button class="btn-print">Печать</button>
        </div>
    </div>
    <div class="service-list">
        <h3>Строительные сервисы</h3>
        <table>
            <thead>
            <tr>
                <th>Сервис</th>
                <th>Цена</th>
                <th>Сроки доставки</th>
                <th>Бронь</th>
            </tr>
            </thead>
            <tbody>
            <!-- Dynamically generated rows will go here -->
            <tr>
                <td>Flip Post</td>
                <td>353,00 руб.</td>
                <td>1 - 2 дн.</td>
                <td><button class="btn-book">ЗАБРОНИРОВАТЬ СЕРВИС</button></td>
            </tr>
            <!-- Repeat for other services -->
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
