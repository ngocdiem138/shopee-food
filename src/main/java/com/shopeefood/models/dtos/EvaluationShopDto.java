package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Shop;
import com.shopeefood.models.entities.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EvaluationShopDto {

    @NotNull
    private Long id;

    private Integer levelStar;

    private String comment;

    private User user;

    private Shop shop;
}
