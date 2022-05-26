package com.shopeefood.repositories;

import com.querydsl.core.Tuple;
import com.querydsl.jpa.impl.JPAQuery;
import com.shopeefood.models.entities.*;
import com.shopeefood.repositories.customizations.IProvinceRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public interface IProvinceRepository extends JpaRepository<Province, Long>, IProvinceRepositoryCustom {

}
