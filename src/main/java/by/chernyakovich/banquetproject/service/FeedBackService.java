package by.chernyakovich.banquetproject.service;

import by.chernyakovich.banquetproject.model.Feedback;
import by.chernyakovich.banquetproject.repository.FeedBackRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class FeedBackService {

    private final FeedBackRepository feedBackRepository;

    public void add(Feedback feedback) {
        feedback.setLocalDateTime(LocalDateTime.now());
        feedBackRepository.save(feedback);
    }

    public List<Feedback> findAll() {
        return feedBackRepository.findAll();
    }

    public void delete(Long feedbackId) {
        feedBackRepository.deleteById(feedbackId);
    }
}
