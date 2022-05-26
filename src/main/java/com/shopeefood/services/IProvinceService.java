package com.shopeefood.services;

import com.querydsl.core.Tuple;
import com.shopeefood.models.entities.District;
import com.shopeefood.models.entities.Province;
import com.shopeefood.models.entities.Shop;

import java.util.List;

public interface IProvinceService {
    List<Province> getAllProvince();
    Long countProvince();
    List<Tuple> countShopInProvince();

    List<Shop> getListShopByProvince(String newName);
    public List<District> getListDistrictByProvince(String newName);
}
