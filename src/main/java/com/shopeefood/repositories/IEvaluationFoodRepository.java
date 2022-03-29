package com.shopeefood.repositories;

import com.shopeefood.entities.EvaluationFood;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IEvaluationFoodRepository extends JpaRepository<EvaluationFood, Long> {
}
