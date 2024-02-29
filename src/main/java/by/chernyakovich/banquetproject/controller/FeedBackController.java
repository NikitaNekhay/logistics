package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.Feedback;
import by.chernyakovich.banquetproject.model.User;
import by.chernyakovich.banquetproject.service.FeedBackService;
import by.chernyakovich.banquetproject.service.UserService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class FeedBackController {

    private final FeedBackService feedBackService;
    private final UserService userService;

    @GetMapping("/feedback")
    public String getFeedBack(Model model, Principal principal){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "feedback";
    }

    @GetMapping("/feedback/list")
    public String listFeedBack(Model model, Principal principal){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("feedbacks", feedBackService.findAll());
        return "admin/feedback";
    }

    @PostMapping("/feedback/add")
    public String addFeedBack(@ModelAttribute Feedback feedback){
        feedBackService.add(feedback);
        return "redirect:/main";
    }

    @PostMapping("/feedback/delete/{feedbackId}")
    public String deleteFeedBack(@PathVariable Long feedbackId){
        feedBackService.delete(feedbackId);
        return "redirect:/main";
    }
}
