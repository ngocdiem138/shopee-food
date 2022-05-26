package com.shopeefood.controllers;

import com.shopeefood.models.entities.Food;
import com.shopeefood.models.entities.Menu;
import com.shopeefood.models.entities.Shop;
import com.shopeefood.services.IShopService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping(path = "shop")
public class ShopController {

    private final IShopService shopService;

    @GetMapping(path = "{shopId}")
    public ModelAndView shopPage(@PathVariable("shopId") Long shopId) {
        ModelAndView mav = new ModelAndView("client/shop");
        Shop shop = shopService.getShop(shopId);
        mav.addObject("shop", shop);
        List<Menu> menus = new ArrayList<>();
        shop.getShopFoods().forEach(shopFood -> {
            Menu menu = shopFood.getFood().getMenu();
            if (menus.contains(menu)) {
                menu = menus.get(menus.indexOf(menu));
                List<Food> foods = menu.getFoods();
                foods.add(shopFood.getFood());
                menu.setFoods(foods);
            } else {
                List<Food> foods = menu.getFoods();
                foods.add(shopFood.getFood());
                menu.setFoods(foods);
                menus.add(menu);
            }
        });
        mav.addObject("menus", menus);
        return mav;
    }
}
