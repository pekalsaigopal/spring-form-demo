package in.psg.springformdemo.controller;

import in.psg.springformdemo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RegistrationController {
    @GetMapping(value = "/registration")
    public String showRegistration(@ModelAttribute("user")User user){
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String doRegistration(@ModelAttribute("user")User user){
        System.out.println(user.getFirstName());
        System.out.println(user.getLastName());
        return "redirect:/registration";
    }
}
