package by.chernyakovich.banquetproject.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "company")
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    private BigDecimal currency_train;
    private BigDecimal currency_auto;
    private BigDecimal currency_air;
    private BigDecimal currency_ship;
    private BigDecimal currency_fragile;
    // Add other fields from the table as needed
}
