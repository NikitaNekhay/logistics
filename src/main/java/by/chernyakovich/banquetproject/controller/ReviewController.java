package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.Review;
import by.chernyakovich.banquetproject.service.ReviewService;
import by.chernyakovich.banquetproject.service.UserService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ReviewController {

    private final UserService userService;

    private final ReviewService reviewService;



    @GetMapping("/reviews")
    public String getReviews(Model model, Principal principal){
        model.addAttribute("reviews", reviewService.findAll());
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "reviews";
    }

    @GetMapping("/create/review")
    public String getCreateReview(Model model, Principal principal){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "user/create-review";
    }

    @PostMapping("/create/review")
    public String createReview(@ModelAttribute Review review, Principal principal){
        reviewService.create(review, userService.getUserByPrincipal(principal));

        return "redirect:/main";
    }



}
