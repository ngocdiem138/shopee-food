package com.shopeefood.repositories;

import com.shopeefood.entities.Shop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IShopRepository extends JpaRepository<Shop, Long> {
}
