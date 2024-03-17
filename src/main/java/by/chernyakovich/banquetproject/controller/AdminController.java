package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.management.loading.PrivateClassLoader;
import java.io.IOException;
import java.security.Principal;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminController {

    private final UserService userService;
    private final ReviewService reviewService;

    @PostMapping("/review/{reviewId}/delete")
    public String deleteReview(@PathVariable Long reviewId){
        reviewService.delete(reviewId);
        return "redirect:/admin/reviews";
    }
    @GetMapping("/users")
    public String manageUsers(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("users", userService.getUsers());
        return "admin/users";
    }

    @GetMapping("/reviews")
    public String manageReviews(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("reviews", reviewService.findAll());
        return "admin/reviews";
    }

    @GetMapping("/service")
    public String manageService(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "admin/service";
    }

    @PostMapping("/user/ban/{userId}")
    public String banUser(@PathVariable Long userId, Principal principal) {
        User admin = userService.getUserByPrincipal(principal);
        if (admin.getId().equals(userId)){
            return "redirect:/admin/users";
        } else {
            userService.banUser(userId);
            return "redirect:/admin/users";
        }
    }

    @PostMapping("/user/unban/{userId}")
    public String unBanUser(@PathVariable Long userId) {
        userService.unBanUser(userId);
        return "redirect:/admin/users";
    }

    @GetMapping("/user/edit/{userId}")
    public String editUser(@PathVariable Long userId, Model model, Principal principal) {
        User user = userService.getUserById(userId);
        User admin = userService.getUserByPrincipal(principal);
        model.addAttribute("user", admin);
        model.addAttribute("usr", user);
        model.addAttribute("roles", Role.values());
        return "admin/edit-user";
    }

    @PostMapping("/user/edit")
    public String editUser(@RequestParam("userId") User user, @RequestParam Map<String, String> form){
        userService.changeUserRoles(user, form);
        return "redirect:/admin/users";
    }


}
