package com.shopeefood.repositories;

import com.shopeefood.models.entities.Ward;
import com.shopeefood.repositories.customizations.IWardRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IWardRepository extends JpaRepository<Ward, Long>, IWardRepositoryCustom {
}
