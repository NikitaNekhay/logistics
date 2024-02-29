package by.chernyakovich.banquetproject.controller;


import by.chernyakovich.banquetproject.model.User;
import by.chernyakovich.banquetproject.service.UserService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Slf4j
@Controller
@AllArgsConstructor
public class UserController {



    private final UserService userService;



    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "user/registration";
    }

    @PostMapping("/registration")
    public String createUser(@ModelAttribute("user")  User user, @RequestParam String name, @RequestParam String surname, @RequestParam String phoneNumber, RedirectAttributes redirectAttributes) {
        if (!userService.createUser(user, name, surname, phoneNumber)) {
            redirectAttributes.addFlashAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "redirect:/registration";
        }
        redirectAttributes.addFlashAttribute("successMessage", "Вы успешно зарегистрировались, на вашу почту было отправлено сообщение о подтверждении регистрации");
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "user/login";
    }

    @GetMapping("/main")
    public String getMain(Model model, Principal principal){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "main";
    }

    @GetMapping("/order/create")
    public String getOrderCreate(Model model, Principal principal){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "order/create";
    }

    @GetMapping("/account/edit")
    public String editAccount(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "user/edit";
    }

    @PostMapping("/user/{userId}/edit")
    public String editAccount(@PathVariable Long userId, @ModelAttribute User updatedUser, @RequestParam String name, @RequestParam String surname, @RequestParam String phoneNumber) throws IOException {
        userService.updateUserProfile(userId, updatedUser, name, surname, phoneNumber);
        return "redirect:/main";

    }

//    @GetMapping("/user/bookings")
//    public String viewUserBookings(Principal principal, Model model) {
//        User user = userService.getUserByPrincipal(principal);
//        List<Booking> bookings = bookingService.getBookingsByUser(user);
//        model.addAttribute("bookings", bookings);
//        model.addAttribute("user", user);
//        return "user/bookings";
//    }



}
