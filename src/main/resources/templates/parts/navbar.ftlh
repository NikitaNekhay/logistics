<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <!-- Логотип или иконка слева -->
        <a class="navbar-brand" href="/main">ЛОГИСИМУС</a>

        <!-- Кнопка "бургер" для мобильных устройств -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Ссылки в центре -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">

                <li class="nav-item">
                    <a class="nav-link" href="/news">Новости</a>
                </li>
                <!-- Общие ссылки -->
                <li class="nav-item">
                    <a class="nav-link" href="/order/create">Заказать доставку</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/companies/best">Ведущие компании</a>
                </li>
<#--                <li class="nav-item">-->
<#--                    <a class="nav-link" href="/music-bands">Музыкальные группы</a>-->
<#--                </li>-->
                <li class="nav-item">
                    <a class="nav-link" href="/companies/possibilities">Возможности доставки</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/reviews">Отзывы</a>
                </li>
            </ul>
        </div>

        <#if user.email??>
            <!-- Выпадающее меню для авторизованного пользователя -->
            <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Аккаунт
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <!-- Пункты меню для обычного пользователя -->
                    <#if user.roles?seq_contains("ROLE_USER")>
                        <a class="dropdown-item" href="/account/edit">Редактирование аккаунта</a>
                        <a class="dropdown-item" href="/create/review">Оставить отзыв</a>
                        <a class="dropdown-item" href="/user/bookings">Мои заказы</a>
                    </#if>

                    <!-- Пункты меню для администратора -->
                    <#if user.roles?seq_contains("ROLE_ADMIN")>
                        <a class="dropdown-item" href="/admin/users">Управление пользователями</a>
                        <a class="dropdown-item" href="/admin/reviews">Управление отзывами</a>
                        <a class="dropdown-item" href="/admin/service">Управление сервисом</a>
                        <a class="dropdown-item" href="/admin/news">Управление новостями</a>
                        <a class="dropdown-item" href="/admin/bookings/pending">Заявки</a>
                        <!-- другие пункты административного меню -->
                    </#if>
                </div>
            </div>
        <#else>
            <!-- Кнопка "Войти" для неавторизованных пользователей -->
            <div class="navbar-text">
                <a class="btn btn-primary" href="/login">Войти</a>
            </div>
        </#if>
    </div>
</nav>
