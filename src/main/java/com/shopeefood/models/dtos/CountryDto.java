package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Province;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CountryDto {

    @NotNull
    private Long id;

    private String name;

    @ToString.Exclude
    private List<Province> provinces = new ArrayList<>();
}
