package com.shopeefood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopController {

    @GetMapping(value = "/shop")
    public ModelAndView shopPage() {
        return new ModelAndView("client/shop");
    }
}
