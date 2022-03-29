package com.shopeefood.services;

import com.shopeefood.entities.TransportMoney;
import org.springframework.stereotype.Service;

@Service
public interface ITransportMoneyService {

    TransportMoney getTransportMoneyByDistance(Double distance);

}
