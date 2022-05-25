package com.shopeefood.services.impls;

import com.shopeefood.models.entities.Shop;
import com.shopeefood.repositories.IShopRepository;
import com.shopeefood.services.IShopService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class ShopService implements IShopService {

    private final IShopRepository shopRepository;

    @Override
    public Shop getShop(Long id) {
        return shopRepository.findById(id).orElse(null);
    }

    @Override
    public Shop save(Shop shop) {
        return shopRepository.save(shop);
    }
}
