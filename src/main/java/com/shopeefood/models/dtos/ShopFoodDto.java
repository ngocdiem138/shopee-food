package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Food;
import com.shopeefood.models.entities.Shop;
import com.shopeefood.models.entities.composite.keys.ShopFoodPK;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ShopFoodDto {

    @NotNull
    private ShopFoodPK id;

    private Integer quantity;

    private Shop shop;

    private Food food;
}
