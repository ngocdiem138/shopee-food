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
public class FoodDto {

    @NotNull
    private Long id;

    private String name;

    private String description;

    private Double price;

    private Byte[] image;

    private Category category;

    private Menu menu;

    @ToString.Exclude
    private List<BillDetail> billDetails = new ArrayList<>();

    @ToString.Exclude
    private List<Voucher> vouchers = new ArrayList<>();

    @ToString.Exclude
    private List<CartDetail> cartDetails = new ArrayList<>();

    @ToString.Exclude
    private List<ShopFood> shopFoods = new ArrayList<>();

    @ToString.Exclude
    private List<EvaluationFood> evaluationFoods = new ArrayList<>();
}
