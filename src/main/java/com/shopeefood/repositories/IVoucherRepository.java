package com.shopeefood.repositories;

import com.shopeefood.entities.Voucher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IVoucherRepository extends JpaRepository<Voucher, Long> {
}
