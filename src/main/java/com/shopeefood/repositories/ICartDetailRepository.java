package com.shopeefood.repositories;

import com.shopeefood.models.entities.CartDetail;
import com.shopeefood.models.entities.composite.keys.CartDetailPK;
import com.shopeefood.repositories.customizations.ICartDetailRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICartDetailRepository extends JpaRepository<CartDetail, CartDetailPK>, ICartDetailRepositoryCustom {
}
