package com.shopeefood.repositories;

import com.shopeefood.models.entities.User;
import com.shopeefood.repositories.customizations.IUserRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IUserRepository extends JpaRepository<User, Long>, IUserRepositoryCustom {
}
