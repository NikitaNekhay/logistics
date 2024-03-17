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
@Table(name = "client_request")
public class ClientRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "products_data_id")
    private ProductsData productsData;

    private String addressTo;
    private String addressFrom;

    private String typeTransport;
    private String type;
    private String typeInsurance;

//    private BigDecimal price;
//    private LocalDateTime deadline; это надо убрать
    // Include other attributes like idProductsData, typeTransport, etc.


    public BigDecimal calculate(double some_coef){ // в параметрах кэфы перевозчиков
        return BigDecimal.valueOf(some_coef * Math.random()); // здесь в зависимости от параметров груза считаем
    }
}
