package com.shopeefood.repositories;

import com.shopeefood.models.entities.District;
import com.shopeefood.repositories.customizations.IDistrictRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IDistrictRepository extends JpaRepository<District, Long>, IDistrictRepositoryCustom {
}
