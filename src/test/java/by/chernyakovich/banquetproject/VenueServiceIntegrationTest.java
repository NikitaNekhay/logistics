package by.chernyakovich.banquetproject;

import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@SpringBootTest
public class VenueServiceIntegrationTest {

    @Autowired
    private VenueService venueService;

    @Test
    public void testCreateEditDeleteVenue() throws IOException {
        // Создание нового места проведения
        Venue venue = new Venue();
        venue.setName("Тестовый зал");
        venue.setAddress("Адрес");
        venue.setPrice(400);
        venue.setCapacity(10);
        venue.setDescription("Маленькое описание");
        // Добавьте другие необходимые поля
        venueService.create(venue, null);

        // Проверка наличия созданного места проведения
        Venue createdVenue = venueService.findById(venue.getId());
        assertNotNull(createdVenue);

        // Редактирование места проведения
        createdVenue.setName("Обновленный тестовый зал");
        venueService.edit(createdVenue.getId(), createdVenue, null);

        // Проверка обновленного места проведения
        Venue updatedVenue = venueService.findById(createdVenue.getId());
        assertEquals("Обновленный тестовый зал", updatedVenue.getName());

        // Удаление места проведения
        venueService.delete(updatedVenue.getId());

        // Проверка удаления места проведения
        assertThrows(EntityNotFoundException.class, () -> venueService.findById(updatedVenue.getId()));
    }
}
