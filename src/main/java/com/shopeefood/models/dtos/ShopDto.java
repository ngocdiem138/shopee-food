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
public class ShopDto {

    @NotNull
    private Long id;

    private String name;

    private String phone;

    private String description;

    private String openTime;

    private Float evaluationLevel;

    private Byte[] image;

    private Double minMoney;

    private Double maxMoney;

    private User userBoss;

    private Location location;

    @ToString.Exclude
    private List<Bill> bills = new ArrayList<>();

    @ToString.Exclude
    private List<ShopFood> shopFoods = new ArrayList<>();

    @ToString.Exclude
    private List<Voucher> vouchers = new ArrayList<>();

    @ToString.Exclude
    private List<EvaluationShop> evaluationShops = new ArrayList<>();

    @ToString.Exclude
    private List<User> staffs = new ArrayList<>();
}
