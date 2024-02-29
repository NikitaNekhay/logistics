package by.chernyakovich.banquetproject.repository;


import by.chernyakovich.banquetproject.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long> {

}
