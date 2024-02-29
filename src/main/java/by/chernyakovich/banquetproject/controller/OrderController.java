package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

public class OrderController {
    private final UserService userService;

    public OrderController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/order/create")
    public String getOrders(Model model, Principal principal){
//        model.addAttribute("reviews", reviewService.findAll());
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "order/create";
    }
//
//    @GetMapping("/create/review")
//    public String getCreateReview(Model model, Principal principal){
//        model.addAttribute("user", userService.getUserByPrincipal(principal));
//        return "user/create-review";
//    }
//
//    @PostMapping("/create/review")
//    public String createReview(@ModelAttribute Review review, Principal principal){
//        reviewService.create(review, userService.getUserByPrincipal(principal));
//        return "redirect:/main";
//    }


}
