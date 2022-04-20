package com.shopeefood.repositories;

import com.shopeefood.models.entities.EvaluationFood;
import com.shopeefood.repositories.customizations.IEvaluationFoodRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IEvaluationFoodRepository extends JpaRepository<EvaluationFood, Long>, IEvaluationFoodRepositoryCustom {
}
