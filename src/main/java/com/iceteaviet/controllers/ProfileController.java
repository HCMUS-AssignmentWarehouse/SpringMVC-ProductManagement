package com.iceteaviet.controllers;

import com.iceteaviet.service.login.MyUserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Genius Doan on 05/06/2017.
 */

@Controller
public class ProfileController {

    @RequestMapping(value = "/admin_profile")
    public String showProfile(Model model) {
        model.addAttribute("profile", MyUserDetailsService.currentUser);
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());

        return "admin_profile";
    }

    @RequestMapping(value = "/user_profile")
    public String show_Profile(Model model) {
        model.addAttribute("profile", MyUserDetailsService.currentUser);
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());

        return "user_profile";
    }

    @RequestMapping(value = "/admin_edit_profile", method = RequestMethod.GET)
    public String showEditProfile(Model model) {
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "admin_profile";
    }

    @RequestMapping(value = "/user_edit_profile", method = RequestMethod.GET)
    public String show_EditProfile(Model model) {
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "user_profile";
    }

}
