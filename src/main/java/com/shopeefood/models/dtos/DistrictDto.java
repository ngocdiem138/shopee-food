package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.Province;
import com.shopeefood.models.entities.Ward;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DistrictDto {

    @NotNull
    private Long id;

    private String name;

    private Province province;

    @ToString.Exclude
    private List<Ward> wards = new ArrayList<>();
}
