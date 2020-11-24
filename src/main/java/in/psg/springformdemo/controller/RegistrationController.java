package in.psg.springformdemo.controller;

import in.psg.springformdemo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Arrays;
import java.util.List;

@Controller
public class RegistrationController {
    @GetMapping(value = "/registration")
    public String showRegistration(@ModelAttribute("user")User user, Model model){
        List<String> interestList = List.of("Reading","Writing","Swimming","Drawing");
        model.addAttribute("interestList",interestList);
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String doRegistration(@ModelAttribute("user")User user){
        System.out.println(user.getFirstName());
        System.out.println(user.getLastName());
        System.out.println(user.getPreferences().isReceiveNewsletter());
        System.out.println(Arrays.toString(user.getPreferences().getInterests()));
        System.out.println(Arrays.toString(user.getPreferences().getActivities()));
        System.out.println(user.getPreferences().getFavouriteWord());
        System.out.println(user.getSex());
        return "redirect:/registration";
    }
}
