package by.chernyakovich.banquetproject.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Host { // ведущий
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String description;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Image image;
    private double price; // стоимость
//    @OneToMany(mappedBy = "host", cascade = CascadeType.ALL, orphanRemoval = true)
//    private List<Booking> bookings = new ArrayList<>();


}
