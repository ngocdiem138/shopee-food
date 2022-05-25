package com.shopeefood.services.impls;

import com.shopeefood.models.entities.ShopFood;
import com.shopeefood.repositories.IShopFoodRepository;
import com.shopeefood.services.IShopFoodService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class ShopFoodService implements IShopFoodService {

    private final IShopFoodRepository shopFoodRepository;

    @Override
    public void save(ShopFood shopFood) {
        shopFoodRepository.save(shopFood);
    }
}
