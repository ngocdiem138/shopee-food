package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Bill;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TransportMoneyDto {

    @NotNull
    private Long id;

    private Double distance;

    private Double money;

    @ToString.Exclude
    private List<Bill> bills = new ArrayList<>();
}
