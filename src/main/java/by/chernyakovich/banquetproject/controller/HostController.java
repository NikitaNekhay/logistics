package by.chernyakovich.banquetproject.controller;

import by.chernyakovich.banquetproject.model.Host;
import by.chernyakovich.banquetproject.service.HostService;
import by.chernyakovich.banquetproject.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class HostController {

    private final HostService hostService;
    private final UserService userService;


    @GetMapping("/hosts")
    public String listHosts(Model model, Principal principal) {
        List<Host> hosts = hostService.findAll();
        model.addAttribute("hosts", hosts);
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "hosts";
    }

}
