package com.shopeefood.repositories;

import com.shopeefood.models.entities.Role;
import com.shopeefood.repositories.customizations.IRoleRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IRoleRepository extends JpaRepository<Role, Long>, IRoleRepositoryCustom {
}
