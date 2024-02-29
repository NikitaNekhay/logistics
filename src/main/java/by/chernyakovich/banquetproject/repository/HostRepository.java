package by.chernyakovich.banquetproject.repository;


import by.chernyakovich.banquetproject.model.Host;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HostRepository extends JpaRepository<Host, Long> {
}
