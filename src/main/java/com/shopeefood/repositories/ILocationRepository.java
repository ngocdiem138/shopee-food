package com.shopeefood.repositories;

import com.shopeefood.models.entities.Location;
import com.shopeefood.repositories.customizations.ILocationRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ILocationRepository extends JpaRepository<Location, Long>, ILocationRepositoryCustom {
}
