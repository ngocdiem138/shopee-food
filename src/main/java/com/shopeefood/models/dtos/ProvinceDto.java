package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Country;
import com.shopeefood.models.entities.District;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProvinceDto {

    @NotNull
    private Long id;

    private String name;

    private Country country;

    @ToString.Exclude
    private List<District> districts = new ArrayList<>();
}
