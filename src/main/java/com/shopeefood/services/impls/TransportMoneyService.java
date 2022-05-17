package com.shopeefood.services.impls;

import com.shopeefood.models.entities.TransportMoney;
import com.shopeefood.repositories.ITransportMoneyRepository;
import com.shopeefood.services.ITransportMoneyService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service

@AllArgsConstructor
public class TransportMoneyService implements ITransportMoneyService {

    private final ITransportMoneyRepository transactionMoneyRepository;

    @Override
    public TransportMoney getTransportMoneyByDistance(Double distance) {
        return transactionMoneyRepository.getTransportMoneyByDistance(distance);
    }
}
