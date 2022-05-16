package com.shopeefood.repositories;

import com.shopeefood.models.entities.Cart;
import com.shopeefood.repositories.customizations.ICartRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICartRepository extends JpaRepository<Cart, Long>, ICartRepositoryCustom {
}
