package com.shopeefood.repositories;

import com.shopeefood.models.entities.Food;
import com.shopeefood.repositories.customizations.IFoodRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IFoodRepository extends JpaRepository<Food, Long>, IFoodRepositoryCustom {
}
