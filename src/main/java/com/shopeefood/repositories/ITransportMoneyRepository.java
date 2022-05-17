package com.shopeefood.repositories;

import com.shopeefood.models.entities.TransportMoney;
import com.shopeefood.repositories.customizations.ITransportMoneyRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ITransportMoneyRepository extends JpaRepository<TransportMoney, Long>, ITransportMoneyRepositoryCustom {

    @Query(value = "" +
            "SELECT * " +
            "FROM (" +
            "       SELECT * " +
            "       FROM TRANSPORTMONEY " +
            "       ORDER BY distance DESC) AS tm " +
            "WHERE tm.distance <= :distance",
            nativeQuery = true)
    TransportMoney getTransportMoneyByDistance(@Param("distance") Double distance);
}
