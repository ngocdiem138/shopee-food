package com.shopeefood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(path = "profile")
public class ProfileController {

    @GetMapping
    public ModelAndView homePage() {
        return new ModelAndView("client/profile");
    }

}
