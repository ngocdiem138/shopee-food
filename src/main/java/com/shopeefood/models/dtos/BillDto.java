package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.*;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BillDto {

    @NotNull
    private Long id;

    private Double totalMoney;

    private User user;

    private Shop shop;

    private Location location;

    private TransportMoney transportMoney;

    @ToString.Exclude
    private List<BillDetail> billDetails = new ArrayList<>();
}
