package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Food;
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
public class EvaluationFoodDto {

    @NotNull
    private Long id;

    private Integer levelStar;

    private String comment;

    private User user;

    private Food food;
}
