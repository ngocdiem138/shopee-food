package com.shopeefood.repositories;

import com.shopeefood.entities.Food;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IFoodRepository extends JpaRepository<Food, Long> {
}
