package com.shopeefood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(path = "history")
public class HistoryController {

    @GetMapping(path = "{id}")
    public ModelAndView historyPage(@PathVariable("id") Long id) {
        return new ModelAndView("client/history");
    }

}
