package by.chernyakovich.banquetproject.service;


import by.chernyakovich.banquetproject.model.Review;
import by.chernyakovich.banquetproject.model.User;
import by.chernyakovich.banquetproject.repository.ReviewRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;
    public List<Review> findAll() {
        return reviewRepository.findAll();
    }

    @Transactional
    public void create(Review review, User user) {
        review.setUser(user);
        reviewRepository.save(review);
    }

    public void delete(Long reviewId) {
        reviewRepository.deleteById(reviewId);
    }
}
