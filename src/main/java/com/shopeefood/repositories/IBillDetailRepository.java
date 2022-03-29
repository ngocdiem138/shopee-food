package com.shopeefood.repositories;

import com.shopeefood.entities.BillDetail;
import com.shopeefood.entities.composite.keys.BillDetailPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IBillDetailRepository extends JpaRepository<BillDetail, BillDetailPK> {
}
