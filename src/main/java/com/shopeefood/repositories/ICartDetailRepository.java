package com.shopeefood.repositories;

import com.shopeefood.entities.CartDetail;
import com.shopeefood.entities.composite.keys.CartDetailPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICartDetailRepository extends JpaRepository<CartDetail, CartDetailPK> {
}
