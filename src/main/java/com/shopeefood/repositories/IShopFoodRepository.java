package com.shopeefood.repositories;

import com.shopeefood.models.entities.ShopFood;
import com.shopeefood.models.entities.composite.keys.ShopFoodPK;
import com.shopeefood.repositories.customizations.IShopFoodRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IShopFoodRepository extends JpaRepository<ShopFood, ShopFoodPK>, IShopFoodRepositoryCustom {
}
