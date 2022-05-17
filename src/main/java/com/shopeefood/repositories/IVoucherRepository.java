package com.shopeefood.repositories;

import com.shopeefood.models.entities.Voucher;
import com.shopeefood.repositories.customizations.IVoucherRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IVoucherRepository extends JpaRepository<Voucher, Long>, IVoucherRepositoryCustom {
}
