package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Food;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CategoryDto {

    @NotNull
    private Long id;

    private String name;

    @ToString.Exclude
    private List<Food> foods = new ArrayList<>();
}
