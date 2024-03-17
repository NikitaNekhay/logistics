package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.parameters.P;
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

    private final CompanyService companyService;


    @GetMapping("/create/company")
    public String getCreateCompany(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "company/create";
    }

    @PostMapping("/create/company")
    public String createCompany(@ModelAttribute Company company, Principal principal){
        companyService.createCompany(company, userService.getUserByPrincipal(principal));
        return "redirect:/main";
    }

    @GetMapping("/edit/company/{companyId}")
    public String getEditCompany(Model model, Principal principal, @PathVariable Long companyId){
        // в идеале сделать проверку на owner, но мы не будем
        model.addAttribute("company", companyService.getById(companyId));
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "companies/edit";
    }

    @PostMapping("/edit/company/{companyId}")
    public String editCompany(@ModelAttribute Company company, @PathVariable Long companyId, Principal principal){
        companyService.editCompany(company, companyId, userService.getUserByPrincipal(principal));
        return "redirect:/main";
    }

    @PostMapping("/delete/company/{companyId}")
    public String deleteCompany(@PathVariable Long companyId, Principal principal) {
        companyService.deleteCompany(companyId, userService.getUserByPrincipal(principal));
        return "redirect:/main";
    }

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
