package com.shopeefood.repositories;

import com.shopeefood.entities.ShopFood;
import com.shopeefood.entities.composite.keys.ShopFoodPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IShopFoodRepository extends JpaRepository<ShopFood, ShopFoodPK> {
}
