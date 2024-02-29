package by.chernyakovich.banquetproject.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "products_data")
public class ProductsData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Double height;
    private Double length;
    private Double width;
    private Double weight;
    private String typeGabarit;
    private String typeDanger;
    private String typeFragile;
    // Add other fields from the table as needed
}
