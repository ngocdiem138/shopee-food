package com.shopeefood.services;

import com.shopeefood.models.entities.TransportMoney;

public interface ITransportMoneyService {

    TransportMoney getTransportMoneyByDistance(Double distance);

}
