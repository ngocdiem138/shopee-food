package com.shopeefood.services.impls;

import com.shopeefood.entities.TransportMoney;
import com.shopeefood.repositories.ITransportMoneyRepository;
import com.shopeefood.services.ITransportMoneyService;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class TransportMoneyService implements ITransportMoneyService {

    private final ITransportMoneyRepository transactionMoneyRepository;

    @Override
    public TransportMoney getTransportMoneyByDistance(Double distance) {
        return transactionMoneyRepository.getTransportMoneyByDistance(distance);
    }
}
