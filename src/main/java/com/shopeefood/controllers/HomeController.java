package com.shopeefood.controllers;

import com.querydsl.core.Tuple;
import com.querydsl.core.types.dsl.Expressions;
import com.querydsl.core.types.dsl.NumberPath;
import com.shopeefood.models.entities.District;
import com.shopeefood.models.entities.Province;
import com.shopeefood.models.entities.Shop;
import com.shopeefood.services.IShopService;
import com.shopeefood.services.impls.ProvinceService;
import com.shopeefood.services.impls.ShopService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping(path = "home")
public class HomeController {

    ShopService shopService;

    ProvinceService provinceService;

    @GetMapping
    public ModelAndView homePage() {

        ModelAndView mav = new ModelAndView("client/home");

//        List<Shop> shops = shopService.getAllShop();
//        mav.addObject("shops",shops);

        List<Province> provinces =provinceService.getAllProvince();
        NumberPath<Long> count = Expressions.numberPath(Long.class, "count");
        NumberPath<Long> id = Expressions.numberPath(Long.class, "id");
        NumberPath<Long> name = Expressions.numberPath(Long.class, "name");
        mav.addObject("count",count);
        mav.addObject("name",name);
        mav.addObject("id",id);
        List<Tuple> counts =provinceService.countShopInProvince();
        mav.addObject("counts",counts);
        mav.addObject("provinces",provinces);
        return mav;
    }

    @GetMapping("/{name}")
    public ModelAndView homePageByProvince(@PathVariable String name) {
        String newName= URLDecoder.decode(name, StandardCharsets.UTF_8);
        ModelAndView mav = new ModelAndView("client/home");


//        List<Shop> shops = shopService.getAllShop();
//        mav.addObject("shops",shops);

        List<Province> provinces =provinceService.getAllProvince();
        NumberPath<Long> count = Expressions.numberPath(Long.class, "count");
        NumberPath<Long> id = Expressions.numberPath(Long.class, "id");
        NumberPath<Long> namep = Expressions.numberPath(Long.class, "name");
        mav.addObject("count",count);
        mav.addObject("name",namep);
        mav.addObject("id",id);
        List<Tuple> counts =provinceService.countShopInProvince();
        mav.addObject("counts",counts);

        mav.addObject("provinces",provinces);

//        List<Shop> shops = shopService.getAllShop();
//        mav.addObject("shops",shops);
        mav.addObject("nameProvince",newName);
        List<Shop> provinceSelected =provinceService.getListShopByProvince(newName);
        System.out.println(provinceSelected);

        List<District> districts = provinceService.getListDistrictByProvince(newName);
        mav.addObject("districts",districts);

//        NumberPath<Long> countShop = Expressions.numberPath(Long.class, "count");
//        NumberPath<Long> nameProvince = Expressions.numberPath(Long.class, "name");
//        NumberPath<Long> shops = Expressions.numberPath(Long.class, "shops");
//        NumberPath<Long> idShops = Expressions.numberPath(Long.class, "idShops");
//        System.out.println(provinceSelected.get(idShops));
//        mav.addObject("nameProvince",nameProvince);
//        mav.addObject("countShop",countShop);
        mav.addObject("provinceSelected",provinceSelected);

//        mav.addObject("provinces",provinces);
//
//        Province province =provinceService.getProvinceByName(name);
//        mav.addObject("province",province);
        return mav;
    }


}
