package com.shopeefood.repositories;

import com.shopeefood.models.entities.Country;
import com.shopeefood.repositories.customizations.ICountryRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICountryRepository extends JpaRepository<Country, Long>, ICountryRepositoryCustom {
}
