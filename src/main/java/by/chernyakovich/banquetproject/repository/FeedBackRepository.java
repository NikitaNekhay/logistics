package by.chernyakovich.banquetproject.repository;

import by.chernyakovich.banquetproject.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedBackRepository extends JpaRepository<Feedback, Long> {
}
