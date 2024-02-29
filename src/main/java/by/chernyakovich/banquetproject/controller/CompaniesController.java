package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;
import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class CompaniesController {



    private final UserService userService;


    private final HostService hostService;



        @GetMapping("/companies/best")
    public String getCompaniesBest(Model model, Principal principal) {

        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "companies/best";
    }

    @GetMapping("/companies/possibilities")
    public String getCompaniesPossibilities(Model model, Principal principal) {

        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "companies/best";
    }






}
