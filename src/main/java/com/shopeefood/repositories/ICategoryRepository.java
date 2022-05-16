package com.shopeefood.repositories;

import com.shopeefood.models.entities.Category;
import com.shopeefood.repositories.customizations.ICategoryRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICategoryRepository extends JpaRepository<Category, Long>, ICategoryRepositoryCustom {
}
