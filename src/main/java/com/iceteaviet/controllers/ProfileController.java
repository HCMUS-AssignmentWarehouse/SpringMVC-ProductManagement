package com.iceteaviet.controllers;

import com.iceteaviet.model.Profile;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Genius Doan on 05/06/2017.
 */

@Controller
public class ProfileController {

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public ModelAndView showProfile() {
        return new ModelAndView("profile", "profile", new Profile());
    }

    @RequestMapping(value = "/edit_profile", method = RequestMethod.GET)
    public ModelAndView showEditProfile() {
        return new ModelAndView("edit_profile", "profile", new Profile());
    }
}
