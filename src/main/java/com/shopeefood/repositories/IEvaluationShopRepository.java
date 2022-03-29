package com.shopeefood.repositories;

import com.shopeefood.entities.EvaluationShop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IEvaluationShopRepository extends JpaRepository<EvaluationShop, Long> {
}
