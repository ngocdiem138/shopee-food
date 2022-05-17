package com.shopeefood.repositories;

import com.shopeefood.models.entities.BillDetail;
import com.shopeefood.models.entities.composite.keys.BillDetailPK;
import com.shopeefood.repositories.customizations.IBillDetailRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IBillDetailRepository extends JpaRepository<BillDetail, BillDetailPK>, IBillDetailRepositoryCustom {

}
