package com.shopeefood.services;

import com.shopeefood.models.entities.Shop;

import java.util.List;

public interface IShopService {


    List<Shop> getAllShop();

    Shop getShop(Long id);

    Shop save(Shop shop);
}
