package com.shopeefood.repositories;

import com.shopeefood.models.entities.Bill;
import com.shopeefood.repositories.customizations.IBillRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IBillRepository extends JpaRepository<Bill, Long>, IBillRepositoryCustom {
}
