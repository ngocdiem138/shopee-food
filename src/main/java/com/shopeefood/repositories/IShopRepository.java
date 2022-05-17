package com.shopeefood.repositories;

import com.shopeefood.models.entities.Shop;
import com.shopeefood.repositories.customizations.IShopRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IShopRepository extends JpaRepository<Shop, Long>, IShopRepositoryCustom {
}
