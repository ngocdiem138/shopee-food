package com.shopeefood.controllers;

import com.shopeefood.services.IShopService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@AllArgsConstructor
@RequestMapping(path = "shop")
public class ShopController {

    private final IShopService shopService;

    @GetMapping(path = "{shopId}")
    public ModelAndView shopPage(@PathVariable("shopId") Long shopId) {
        ModelAndView mav = new ModelAndView("client/shop");
        mav.addObject("shop", shopService.getShop(shopId));
        return mav;
    }
}
