package com.shopeefood.models.dtos;

import com.shopeefood.models.entities.District;
import com.shopeefood.models.entities.Location;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WardDto {

    @NotNull
    private Long id;

    private String name;

    private District district;

    @ToString.Exclude
    private List<Location> locations = new ArrayList<>();
}
