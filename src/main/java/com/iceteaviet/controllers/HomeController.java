package com.iceteaviet.controllers;


import com.iceteaviet.model.UserRole;
import com.iceteaviet.service.login.MyUserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by GeniusDoan on 03/06/2017.
 */

@Controller
public class HomeController {
    @RequestMapping(value = {"/index", "/"}, method = RequestMethod.GET)
    public String index() {
        try {
            if (MyUserDetailsService.currentUser != null) {
                for (UserRole userRole : MyUserDetailsService.currentUser.getUserRole()) {
                    if (userRole.getRole().equals("ROLE_ADMIN")) {
                        return "redirect:admin_profile";
                    }
                }
                return "redirect:user_profile";
            }
            return "/login";
        } catch (Exception ex) {
            ex.printStackTrace();
            return "/login";
        }
    }

    @RequestMapping(value = "/redirect")
    public String redirect() {
        return "redirect:admin_add_product";
    }
}
