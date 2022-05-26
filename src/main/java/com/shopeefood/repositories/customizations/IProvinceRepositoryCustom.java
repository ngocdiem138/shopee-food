package com.shopeefood.repositories.customizations;


import com.querydsl.core.Tuple;
import com.shopeefood.models.entities.District;
import com.shopeefood.models.entities.Province;
import com.shopeefood.models.entities.Shop;

import java.util.List;

public interface IProvinceRepositoryCustom {
    List<Tuple> countShopInProvince();

    Province findByName(String name);

    Tuple getShopByProvince(String name);

    List<Shop> getListShopByProvince(String nameProvince);

    List<District> getListDistrictByProvince(String newName);
}
