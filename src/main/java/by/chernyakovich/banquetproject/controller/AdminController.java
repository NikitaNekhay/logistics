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

    private final HostService hostService;
    
    private final ReviewService reviewService;




    // =================  host  ==========================

    @GetMapping("/host/list")
    public String listHosts(Model model, Principal principal){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("hosts", hostService.findAll());
        return "admin/host/list";
    }

    @GetMapping("/host/create")
    public String getCreateHost(Model model, Principal principal) {
        model.addAttribute("user",  userService.getUserByPrincipal(principal));
        return "admin/host/create";
    }

    @PostMapping("/host/create")
    public String createHost(@ModelAttribute Host host, @RequestParam MultipartFile file) throws IOException {
        hostService.create(host, file);
        return "redirect:/admin/service";
    }

    @GetMapping("/host/edit/{hostId}")
    public String getEditHost(@PathVariable Long hostId, Model model, Principal principal) {
        model.addAttribute("user",  userService.getUserByPrincipal(principal));
        model.addAttribute("host", hostService.findById(hostId));
        return "admin/host/edit";
    }

    @PostMapping("/host/edit/{hostId}")
    public String editHost(@PathVariable Long hostId, @ModelAttribute Host newHost, @RequestParam(required = false) MultipartFile file) throws IOException {
        hostService.edit(hostId, newHost, file);
        return "redirect:/admin/service";
    }

    @PostMapping("/host/delete/{hostId}")
    public String deleteHost(@PathVariable Long hostId) {
        hostService.deleteHostAndBookings(hostId);
        return "redirect:/admin/service";
    }




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
