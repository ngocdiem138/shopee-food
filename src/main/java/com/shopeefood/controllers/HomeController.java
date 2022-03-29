package com.shopeefood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @GetMapping(value = "/home")
    public ModelAndView homePage() {
        return new ModelAndView("client/home");
    }
}
