<div class="container mt-4">
    <h2>Заявки в Ожидании</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Дата</th>
            <th>Услуги</th>
            <th>Действия</th>
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
                <td>
                    <form action="/admin/bookings/${booking.id}/approve" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Одобрить" class="btn btn-success">
                    </form>
                    <form action="/admin/bookings/${booking.id}/reject" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Отклонить" class="btn btn-danger">
                    </form>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>