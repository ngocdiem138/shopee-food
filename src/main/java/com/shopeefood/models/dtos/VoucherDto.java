package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.BillDetail;
import com.shopeefood.models.entities.Food;
import com.shopeefood.models.entities.Shop;
import com.shopeefood.models.entities.User;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class VoucherDto {

    @NotNull
    private Long id;

    private String name;

    private String description;

    private Integer quantityCurrent;

    private Double money;

    private Timestamp startDate;

    private Timestamp endDate;

    private Shop shop;

    private Food food;

    @ToString.Exclude
    private List<BillDetail> billDetails = new ArrayList<>();

    @ToString.Exclude
    private List<User> users = new ArrayList<>();
}
