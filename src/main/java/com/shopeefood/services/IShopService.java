package com.shopeefood.services;

import com.shopeefood.models.entities.Shop;

public interface IShopService {

    Shop getShop(Long id);

    Shop save(Shop shop);
}
