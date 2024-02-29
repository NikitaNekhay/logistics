package by.chernyakovich.banquetproject;

import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.service.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class BookingServiceIntegrationTest {

    @Autowired
    private BookingService bookingService;

    @Autowired
    private UserService userService;

    @Autowired
    private VenueService venueService;
    // Подключите остальные необходимые сервисы

    @Test
    public void testBookingProcess() throws IOException {
        // Создание и сохранение пользователя
        User user = new User();
        user.setEmail("test@mail.ru");
        user.setPassword("safafs");
        userService.createUser(user, "name", "surname", "+43785253");

        // Создание услуги (например, место проведения)
        Venue venue = new Venue();
        // Заполнение данных о месте проведения
        venue.setName("Test Venue");
        venue.setAddress("Test Address");
        venue.setPrice(100.00);
        venueService.create(venue, null);

        // Создание запроса на бронирование вечеринки
        PartyBookingRequest request = new PartyBookingRequest();
        request.setVenueId(venue.getId());
        request.setDate(LocalDate.now());
        request.setAddress("Party Address");

        // Бронирование вечеринки
        bookingService.bookParty(request, user);
        Booking booking = bookingService.getBookingsByUser(user).get(0);

        // Проверка, что бронирование создано и находится в ожидании
        assertEquals(BookingStatus.PENDING, booking.getStatus());
        assertNotNull(booking.getVenue());
        assertEquals("Test Venue", booking.getVenue().getName());

        // Одобрение бронирования
        bookingService.approveBooking(booking.getId());
        Booking updatedBooking = bookingService.getBookingsByUser(user).get(0);
        assertEquals(BookingStatus.APPROVED, updatedBooking.getStatus());
    }
}
