package com.iceteaviet.controllers;

import com.iceteaviet.model.User;
import com.iceteaviet.service.login.MyUserDetailsService;
import com.iceteaviet.service.product.ProductService;
import com.iceteaviet.service.product.ProductServiceImpl;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Genius Doan on 6/7/2017.
 */

@Controller
public class AuthenticationController {

    private ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
    private ProductService productService = (ProductServiceImpl) context.getBean("productService");


    @RequestMapping(value = "/login")
    public String login(@RequestParam(value = "error", required = false) String error,
                        @RequestParam(value = "logout", required = false) String logout, Model model) {
        if (error != null) {
            model.addAttribute("error", "Invalid username and password!");
        }
        if (logout != null) {
            model.addAttribute("msg", "You've been logged out successfully.");
        }
        return "login";

    }


    @RequestMapping(value = {"/welcome**"}, method = RequestMethod.GET)
    public String welcomePage(Model model) {

        User user = MyUserDetailsService.currentUser;
        if (user.getUserRole().iterator().next().getRole().equals("ROLE_ADMIN")) {
            model.addAttribute("productList", productService.findAll());
            model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
            model.addAttribute("profile", MyUserDetailsService.currentUser);

            return "admin_profile";
        } else if (user.getUserRole().iterator().next().getRole().equals("ROLE_USER")) {
            model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
            model.addAttribute("profile", MyUserDetailsService.currentUser);

            return "user_profile";

        }
        return "index";

    }
}
