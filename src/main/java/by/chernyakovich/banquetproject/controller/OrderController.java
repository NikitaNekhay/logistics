package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.ClientRequest;
import by.chernyakovich.banquetproject.service.OrderService;
import by.chernyakovich.banquetproject.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;

public class OrderController {
    private final UserService userService;
    private final OrderService orderService;

    public OrderController(UserService userService, OrderService orderService) {
        this.userService = userService;
        this.orderService = orderService;
    }


    @GetMapping("/order/create")
    public String getOrders(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "order/create";
    }


    @PostMapping("/order/create")
    public String createOrder(@ModelAttribute ClientRequest request, RedirectAttributes redirectAttributes){
        redirectAttributes.addAttribute("offers", orderService.calculateOffers(request)); // redirect на /order/offers
        return "redirect:/order/offers";
    }


    @GetMapping("/order/offers")
    public String getOffers(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));

        return "order/offers";
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
