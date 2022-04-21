package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Cart;
import com.shopeefood.models.entities.Food;
import com.shopeefood.models.entities.composite.keys.CartDetailPK;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CartDetailDto {

    @NotNull
    private CartDetailPK id;

    private Integer quantity;

    private Cart cart;

    private Food food;
}
