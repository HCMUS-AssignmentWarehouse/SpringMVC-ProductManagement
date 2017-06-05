package com.iceteaviet.controllers;


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
        return "redirect:profile";
    }

    @RequestMapping(value = "/redirect")
    public String redirect() {
        return "redirect:add_product";
    }
}
