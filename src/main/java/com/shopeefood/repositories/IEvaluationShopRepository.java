package com.shopeefood.repositories;

import com.shopeefood.models.entities.EvaluationShop;
import com.shopeefood.repositories.customizations.IEvaluationShopRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IEvaluationShopRepository extends JpaRepository<EvaluationShop, Long>, IEvaluationShopRepositoryCustom {
}
