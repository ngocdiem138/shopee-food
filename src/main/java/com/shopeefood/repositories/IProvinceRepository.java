package com.shopeefood.repositories;

import com.shopeefood.models.entities.Province;
import com.shopeefood.repositories.customizations.IProvinceRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IProvinceRepository extends JpaRepository<Province, Long>, IProvinceRepositoryCustom {
}
