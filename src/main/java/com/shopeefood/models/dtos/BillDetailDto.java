package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Bill;
import com.shopeefood.models.entities.Food;
import com.shopeefood.models.entities.Voucher;
import com.shopeefood.models.entities.composite.keys.BillDetailPK;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BillDetailDto {

    @NotNull
    private BillDetailPK id;

    private Integer quantity;

    private Double money;

    private Voucher voucher;

    private Food food;

    private Bill bill;
}
